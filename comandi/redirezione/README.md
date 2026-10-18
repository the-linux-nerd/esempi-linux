# redirezione dell'output
Ogni comando produce un output che di solito vediamo sul terminale.
Con la redirezione possiamo mandarlo invece dentro un file.

## esempio #1
Generiamo 12 password sicure da 16 caratteri, in una sola colonna, con pwgen:

```
pwgen -ync 16 12 -1
```

## esempio #2
Con il simbolo > l'output viene scritto nel file. Se il file esiste, viene sovrascritto:

```
pwgen -ync 16 12 -1 > password.txt
```

## esempio #3
Controlliamo che il file sia stato creato e leggiamone il contenuto con cat:

```
ls
cat password.txt
```

## esempio #4
Con il doppio simbolo >> l'output viene aggiunto in coda al file, senza sovrascriverlo:

```
pwgen -ync 16 12 -1 >> password.txt
cat password.txt
```
