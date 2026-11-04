# monero

Monero dal terminale: verificare quello che si scarica, il portafoglio su stagenet e,
sulla rete vera, il portafoglio che passa da Tor.

## esempio #1 — verificare il download

```
gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 81AC591FE9C4B65C5806AFC3F0AF4D462A0BDF92
gpg --verify hashes.txt
sha256sum monero-linux-x64-*.tar.bz2
```
l'impronta del file deve comparire in `hashes.txt`, firmato da binaryFate.

## esempio #2 — portafoglio su stagenet

```
./monerod --stagenet --prune-blockchain --detach
./monero-wallet-cli --stagenet --generate-new-wallet prova
./monero-wallet-cli --stagenet --wallet-file prova balance
```
dentro il portafoglio: `address`, `refresh`, `balance`, `start_mining 2`, `stop_mining`
e sempre `exit` per uscire, mai Control C.

## esempio #3 — il portafoglio via Tor, su un nodo .onion

```
./monero-wallet-cli --wallet-file portafoglio --proxy 127.0.0.1:9050 --daemon-address <nodo>.onion:18089
```

[monero-tor.sh](monero-tor.sh) fa tutto da solo: scarica via Tor l'elenco dei nodi .onion
da monero.fail, li prova con `get_info` e apre il portafoglio sul primo vivo e sincronizzato.

```
sudo apt install tor
./monero-tor.sh portafoglio          # apre ./portafoglio
./monero-tor.sh --nodo               # stampa soltanto il nodo trovato
MONERO_CLI=~/monero/monero-wallet-cli ./monero-tor.sh ~/monero/portafoglio
```
