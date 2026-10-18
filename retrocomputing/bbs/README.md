# navigare sulle BBS con telnet

📺 [il video su YouTube](https://www.youtube.com/watch?v=t8htaoaOfm4) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-navigare-sulle-bbs-con-telnet/)

Prima del web esistevano le BBS: software a riga di comando a cui ci si collega con telnet.
Si indica la macchina e, se serve, la porta. Ogni BBS ha menu e comandi tutti suoi.
Elenco di BBS: https://www.telnetbbsguide.com/bbs/list/detail/

## esempio #1
Collegarsi alla BBS di Retrocampus (porta telnet standard, non serve indicarla).
Quando chiede il tipo di terminale si sceglie l'opzione 8, telnet su Linux:

```
telnet bbs.retrocampus.com
```

## esempio #2
Collegarsi alla BBS Hovalis, che usa una porta diversa e chiede un login (si crea un account con nome utente, password e mail):

```
telnet hovalbbs.com 2333
```

## esempio #3
Telehack, una BBS a elenco di comandi: con `?` si ottiene la lista dei comandi, con `quit` si esce:

```
telnet telehack.com
```
