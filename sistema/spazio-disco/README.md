# ncdu

📺 [il video su YouTube](https://www.youtube.com/watch?v=N837DRXSPkw) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-come-liberare-spazio-su-disco/)

Strumento semplice e veloce per capire cosa occupa spazio sul disco.
Analizza una cartella e mostra cartelle e file ordinati per dimensione, dal più grande. Permette anche di cancellarli.

## esempio #1
Si lancia indicando la cartella da esaminare. Può essere la radice del file system oppure una cartella specifica (qui /var/esempio):

```
ncdu /var/esempio
```

## esempio #2
Dentro ncdu ci si muove con le frecce e con invio. Il tasto `d` cancella il file o la cartella selezionati, dopo una conferma.
Lo spazio si aggiorna subito. Attenzione: si può disattivare la conferma, ma solo con estrema cautela. Il tasto `q` esce e riporta alla riga di comando.

## esempio #3
Per installarlo su Debian:

```
apt-get install ncdu
```
