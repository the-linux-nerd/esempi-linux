#!/bin/bash
# monero-tor.sh — apre un portafoglio Monero passando da Tor, su un nodo .onion
# scelto al momento fra quelli elencati da monero.fail.
#
#   ./monero-tor.sh [file-del-portafoglio]   cerca un nodo .onion vivo e apre il portafoglio
#   ./monero-tor.sh --nodo                   cerca e stampa soltanto il nodo
#
# Serve Tor in ascolto come proxy SOCKS ( Debian/Ubuntu: sudo apt install tor ).
# Il programma monero-wallet-cli si cerca, in ordine: variabile MONERO_CLI,
# cartella corrente, PATH. Il portafoglio di default e' ./portafoglio.
#
# Tutto passa da Tor, anche lo scaricamento dell'elenco: il nodo non vede il
# vostro IP. Ogni nodo si prova con get_info e con una misura di velocita', e si
# tiene il primo sincronizzato che scarica almeno a VELOCITA KB/s ( default 60:
# sotto, il refresh di un portafoglio indietro di settimane si pianta ). Se
# monero.fail non risponde si usa l'ultimo elenco salvato.

set -u
TOR=${TOR_PROXY:-127.0.0.1:9050}
CACHE=${XDG_CACHE_HOME:-$HOME/.cache}/monero-nodi-onion.txt
PROVE=15

solo_nodo=0
PORTAFOGLIO=./portafoglio
case "${1:-}" in
  --nodo) solo_nodo=1 ;;
  -h|--help) sed -n '2,16p' "$0"; exit 0 ;;
  "") ;;
  *) PORTAFOGLIO=$1 ;;
esac

if [ -n "${MONERO_CLI:-}" ]; then CLI=$MONERO_CLI
elif [ -x ./monero-wallet-cli ]; then CLI=./monero-wallet-cli
else CLI=$(command -v monero-wallet-cli || true)
fi
if [ "$solo_nodo" = 0 ] && [ -z "$CLI" ]; then
  echo "monero-wallet-cli non trovato: lanciate lo script dalla cartella di Monero o impostate MONERO_CLI."
  exit 1
fi

tor_curl() { curl -s --socks5-hostname "$TOR" "$@"; }

# 1. Tor deve rispondere
if ! tor_curl -m 30 -o /dev/null https://check.torproject.org/api/ip; then
  echo "Tor non risponde su $TOR: e' installato e avviato? ( sudo systemctl enable --now tor )"
  exit 1
fi

# 2. Elenco dei nodi .onion, via Tor
mkdir -p "$(dirname "$CACHE")"
nuovo=$(tor_curl -m 60 https://monero.fail/nodes.json | python3 -c '
import json, sys
try:
    for u in json.load(sys.stdin)["monero"]["onion"]:
        print(u.split("://")[-1].rstrip("/"))
except Exception:
    pass')
if [ -n "$nuovo" ]; then
  echo "$nuovo" > "$CACHE"
  echo "Elenco aggiornato da monero.fail: $(wc -l < "$CACHE") nodi .onion."
elif [ -s "$CACHE" ]; then
  echo "monero.fail non risponde: uso l'elenco del $(date -r "$CACHE" '+%d/%m %H:%M')."
else
  echo "monero.fail non risponde e non c'e' un elenco salvato. Riprovate fra poco."
  exit 1
fi

# 3. Il primo nodo vivo, sincronizzato e abbastanza veloce, in ordine casuale.
#    get_info dice solo che il nodo risponde, ma il refresh scarica blocchi interi
#    ( centinaia di MB se il portafoglio e' indietro ) e su un nodo lento si pianta:
#    quindi si misura anche un trasferimento vero, gli ultimi 300 header di blocco
#    ( circa 260 KB ), e si scartano i nodi sotto VELOCITA KB/s. Se nessuno arriva
#    alla soglia si usa il piu' veloce fra quelli vivi.
VELOCITA=${VELOCITA:-60}
nodo=""; meglio=""; meglio_kb=0
for n in $(shuf "$CACHE" | head -n "$PROVE"); do
  printf '  provo %s ... ' "${n:0:24}"
  altezza=$(tor_curl -m 25 "http://$n/get_info" | python3 -c '
import json, sys
d = json.load(sys.stdin)
print(d["height"] if d.get("status") == "OK" and d.get("synchronized") and not d.get("offline") else "")' 2>/dev/null)
  if [ -z "$altezza" ]; then echo "no"; continue; fi
  misura=$(tor_curl -m 40 -o /dev/null -w '%{size_download} %{speed_download}' \
    -H 'Content-Type: application/json' "http://$n/json_rpc" \
    -d "{\"jsonrpc\":\"2.0\",\"id\":0,\"method\":\"get_block_headers_range\",\"params\":{\"start_height\":$(( altezza - 301 )),\"end_height\":$(( altezza - 2 ))}}")
  esito=$?
  read -r byte vel <<< "${misura:-0 0}"
  kb=$(( ${vel%.*} / 1024 ))
  if [ "$esito" -ne 0 ] && [ "$esito" -ne 28 ]; then echo "vivo, ma la misura fallisce"; continue; fi
  # risposta completa ma piccola: un errore del nodo, non un trasferimento
  if [ "$esito" -eq 0 ] && [ "${byte%.*}" -lt 100000 ]; then echo "vivo, ma non fa scaricare"; continue; fi
  if [ "$esito" -eq 0 ] && [ "$kb" -ge "$VELOCITA" ]; then echo "ok, $kb KB/s"; nodo=$n; break; fi
  echo "lento, $kb KB/s"
  if [ "$kb" -gt "$meglio_kb" ]; then meglio=$n; meglio_kb=$kb; fi
done
if [ -z "$nodo" ] && [ -n "$meglio" ]; then
  echo "Nessuno arriva a $VELOCITA KB/s: uso il piu' veloce, $meglio_kb KB/s."
  nodo=$meglio
fi
if [ -z "$nodo" ]; then
  echo "Nessuno dei $PROVE nodi provati risponde. Rilanciate: ne pesca altri a caso."
  exit 1
fi
echo "Nodo: $nodo"
[ "$solo_nodo" = 1 ] && exit 0

# 4. Il portafoglio, con tutto il traffico via Tor
exec "$CLI" --wallet-file "$PORTAFOGLIO" --proxy "$TOR" --daemon-address "$nodo"
