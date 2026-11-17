# dig e nslookup

📺 [il video su YouTube](https://www.youtube.com/watch?v=y4gnJ2fDN-4)

Il DNS trasforma i nomi in indirizzi IP: si interroga con `dig` e con `nslookup`.
Su Debian e Ubuntu stanno nel pacchetto `bind9-dnsutils`, su Fedora in `bind-utils`.

## esempio #1
Installare dig e fare la prima domanda ( QUESTION, ANSWER e SERVER sono le sezioni da guardare ):

```
sudo apt install bind9-dnsutils
dig thelinuxnerd.it
```

## esempio #2
A quale DNS chiede il sistema, e a chi gira le domande il resolver locale ( 127.0.0.53 ):

```
cat /etc/resolv.conf
resolvectl status
```

## esempio #3
Fare la domanda a un DNS preciso, qui quello di Google:

```
dig @8.8.8.8 thelinuxnerd.it
```

## esempio #4
Solo l'indirizzo, comodo negli script:

```
dig +short thelinuxnerd.it
```

## esempio #5
Il giro completo, dalla radice al DNS autoritativo:

```
dig +trace thelinuxnerd.it
```

## esempio #6
La cache in azione: la seconda volta il `Query time` scende quasi a zero:

```
dig gnu.org | grep -E "IN\s+A|Query time"
dig gnu.org | grep -E "IN\s+A|Query time"
```

## esempio #7
La risoluzione inversa, dall'indirizzo al nome:

```
dig -x 209.51.188.116
```

## esempio #8
La stessa domanda con nslookup, con l'output più leggibile:

```
nslookup thelinuxnerd.it
```
