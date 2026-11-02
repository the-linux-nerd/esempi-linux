# chattare su IRC da linea di comando

📺 [il video su YouTube](https://www.youtube.com/watch?v=jG4ZIkSInNQ) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-chattare-su-irc-da-linea-di-comando/)

IRC è una rete di server per chattare in canali di gruppo o in privato. Esiste ancora ed è molto frequentata.
Il client da terminale è WeeChat. I comandi IRC iniziano con la barra `/`, il resto è testo da mandare in chat.

## esempio #1
Installare WeeChat e avviarlo:

```
sudo apt install weechat
weechat
```

La finestra ha a sinistra la lista dei buffer (server, canali, utenti), al centro la chat, in basso il prompt dei comandi.

## esempio #2
Aggiungere un server con un'etichetta a piacere, indirizzo, porta 6697 e TLS per la connessione sicura (qui Libera.Chat):

```
/server add liberachat irc.libera.chat/6697 -tls
```

## esempio #3
Connettersi usando l'etichetta scelta:

```
/connect liberachat
```

## esempio #4
Darsi un nickname personalizzato:

```
/nick <nick>
```

Registrare il nick presso NickServ con password e email, poi confermarlo col codice arrivato per mail:

```
/msg NickServ REGISTER <password> <email>
/msg NickServ VERIFY REGISTER <nick> <codice>
```

Alle connessioni successive identificarsi, oppure far mandare la password a WeeChat con SASL:

```
/msg NickServ IDENTIFY <password>
/set irc.server.liberachat.sasl_username <nick>
/set irc.server.liberachat.sasl_password <password>
```

## esempio #5
Cercare i canali. Con gli asterischi si ottengono quelli che contengono una parola, per esempio debian:

```
/list *debian*
```

Ricerche più mirate: canali con più di 100 utenti (filtro del server), oppure con un'espressione regolare:

```
/list >100
/list -re ^#linux
```

Nel buffer di `/list` si filtra scrivendo al prompt: `n:` nel nome, `t:` nel topic, `u:` per numero di utenti, `s:` per ordinare; `*` mostra tutto, `j` entra nel canale selezionato.

```
t:italia
u:>50
s:-users
```

## esempio #6
Entrare in un canale:

```
/join #debian-it
```

E il canale di The Linux Nerd:

```
/join #the-linux-nerd
```

## esempio #7
Scrivere un messaggio: basta digitarlo al prompt e premere invio.

```
Ciao a tutti
```

## esempio #8
Uscire dal canale e tornare alla lista:

```
/close
```
