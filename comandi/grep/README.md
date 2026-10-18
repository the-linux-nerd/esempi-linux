# grep
Il comando grep filtra il testo: mostra solo le righe che contengono la sequenza di caratteri cercata.
Gli esempi usano il file password.txt creato nel video sulla redirezione.

## esempio #1
Cerchiamo le righe che contengono la sequenza "at". Il file viene dato in input a grep con il simbolo < (redirezione dell'input):

```
grep at < password.txt
```

## esempio #2
Cerchiamo le righe che contengono il carattere 6:

```
grep 6 < password.txt
```
