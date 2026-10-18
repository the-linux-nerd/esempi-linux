# chattare su IRC da linea di comando
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

## esempio #5
Cercare i canali. Con gli asterischi si ottengono quelli che contengono una parola, per esempio debian:

```
/list *debian*
```

## esempio #6
Entrare in un canale:

```
/join #debian-it
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
