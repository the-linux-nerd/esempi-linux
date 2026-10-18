# sort
Ordina le righe di un file o di un output, in ordine alfabetico o numerico.
Non modifica il file: ordina solo quello che esce a schermo.

Gli esempi usano un file `lista.txt` con tre colonne separate da tabulazione (nome, cognome, numero interno).

## esempio #1
Ordiniamo alfabeticamente il contenuto del file passandolo in pipe a sort:

```
cat lista.txt | sort
```

## esempio #2
Per ordinare per cognome riordiniamo prima le colonne con awk (cognome, nome, numero) e poi passiamo a sort:

```
cat lista.txt | awk '{print $2"\t"$1"\t"$3}' | sort
```

## esempio #3
L'opzione -r fa l'ordinamento inverso:

```
cat lista.txt | sort -r
```

## esempio #4
L'opzione -R (maiuscola) ordina in modo casuale. Ogni volta il risultato cambia:

```
cat lista.txt | sort -R
```

## esempio #5
Usiamo du per vedere quanto spazio occupano le cartelle: -s somma il contenuto, -h rende le dimensioni leggibili:

```
du -sh *
```

## esempio #6
Se passiamo l'output di du a sort senza opzioni, l'ordine è solo alfabetico e i valori (4K, 251M, 3G) finiscono nel posto sbagliato:

```
du -sh * | sort
```

## esempio #7
L'opzione -h fa l'ordinamento "umano", che capisce K, M e G:

```
du -sh * | sort -h
```

## esempio #8
Con -rh si parte dalla cartella più grande:

```
du -sh * | sort -rh
```
