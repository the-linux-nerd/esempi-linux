# dig

📺 [il video su YouTube](https://www.youtube.com/watch?v=PWw00aRlhmw) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-trovare-lindirizzo-ip-di-un-sito-web/)

Il comando dig interroga il sistema DNS, quello che traduce i nomi dei siti in indirizzi IP numerici.
Serve per scoprire a quale indirizzo corrisponde un sito, e viceversa.

## esempio #1
Per conoscere l'indirizzo IP di un sito si dà a dig il suo nome. Nella risposta si vede un CNAME (alias) che punta a ildf.it e il record A con l'indirizzo IP:

```
dig www.ildf.it
```

## esempio #2
Con l'opzione -x si fa l'interrogazione inversa: si dà l'indirizzo IP e si ottiene il record PTR, cioè il nome associato (qui si scopre che il sito è nel cloud di Google):

```
dig -x <indirizzo-ip>
```
