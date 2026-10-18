# cut
Taglia e preleva porzioni dalle righe di un file, ragionando riga per riga.
Si può lavorare per byte, per caratteri o per campi separati da un delimitatore (di default la tabulazione).

Gli esempi usano `lista.txt` (nome, cognome, numero interno, separati da tabulazione).

## esempio #1
Con -b prendiamo i primi tre byte di ogni riga:

```
cut -b1-3 lista.txt
```

## esempio #2
L'opzione -n evita di spezzare i caratteri multibyte:

```
cut -n -b1-3 lista.txt
```

## esempio #3
Con -c si lavora sui caratteri. Qui il risultato è lo stesso:

```
cut -c1-3 lista.txt
```

## esempio #4
Si possono indicare più selezioni separate da virgola: il primo carattere e poi dal terzo al quinto:

```
cut -c1,3-5 lista.txt
```

## esempio #5
Con -f si scelgono i campi. Qui il secondo e il terzo:

```
cut -f2,3 lista.txt
```

## esempio #6
Creiamo un file CSV sostituendo le tabulazioni con virgole:

```
cat lista.txt | tr '\t' ',' > lista.csv
```

## esempio #7
Con il CSV serve dire il delimitatore con -d, altrimenti cut non capisce i campi:

```
cut -d, -f2,3 lista.csv
```

## esempio #8
L'opzione --complement inverte la selezione: otteniamo solo il primo campo:

```
cut -d, --complement -f2,3 lista.csv
```

## esempio #9
I range possono essere aperti. Dal secondo campo fino alla fine:

```
cut -d, -f2- lista.csv
```

## esempio #10
Dall'inizio fino al secondo campo:

```
cut -d, -f-2 lista.csv
```

## esempio #11
Con --output-delimiter cambiamo il delimitatore in uscita, per esempio per passare a un CSV con il punto e virgola:

```
cut -d, --output-delimiter=';' -f1- lista.csv
```

## esempio #12
Lo stesso trucco sostituisce le tabulazioni con le virgole, come abbiamo fatto con tr:

```
cut --output-delimiter=, -f1- lista.txt
```
