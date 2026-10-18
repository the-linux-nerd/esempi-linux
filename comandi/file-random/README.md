# file con dati casuali
Il file speciale /dev/random produce dati casuali.
Combinato con head e con la redirezione, permette di creare un file di prova di una dimensione precisa.

## esempio #1
Creiamo un file test.txt di 5 MB. head -c preleva il numero di byte indicato:

```
head -c 5M /dev/random > test.txt
```

## esempio #2
Guardiamo il contenuto: è tutta roba casuale:

```
cat test.txt
```
