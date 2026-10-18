# pipe
La pipe (il simbolo |) collega l'output di un comando all'input del comando successivo.
Si possono concatenare anche più comandi.

Gli esempi usano il file password.txt creato nel video sulla redirezione.

## esempio #1
Mostriamo il contenuto del file con cat:

```
cat password.txt
```

## esempio #2
Passiamo l'output di cat a sort, che ordina le righe in ordine alfabetico:

```
cat password.txt | sort
```

## esempio #3
Concateniamo tre comandi: ordiniamo e teniamo solo le prime cinque righe con head -n:

```
cat password.txt | sort | head -n 5
```
