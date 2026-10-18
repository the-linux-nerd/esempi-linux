# awk

📺 [il video su YouTube](https://www.youtube.com/watch?v=6tr2bF7I8Q8) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-introduzione-al-comando-awk/)

awk è un processore di testo: legge l'input riga per riga e ci fa sopra delle operazioni.
Il flusso di lavoro è: blocco BEGIN (una volta all'inizio), blocco principale (per ogni riga), blocco END (una volta alla fine).
Solo il blocco principale è obbligatorio. I blocchi si scrivono fra parentesi graffe.

Negli esempi si usa lista.txt, con tre righe e tre colonne separate da tabulazione.

## esempio #1
Un blocco BEGIN che stampa l'intestazione e un blocco principale che stampa ogni riga:

```
awk 'BEGIN { printf "nome\tcognome\tinterno\n" } { print }' lista.txt
```

## esempio #2
Aggiungiamo un blocco END che stampa dei trattini:

```
awk 'BEGIN { printf "nome\tcognome\tinterno\n" } { print } END { printf "-----\n" }' lista.txt
```

## esempio #3
Il programma si può salvare in un file (esempio.awk) e passare con -f:

```
awk -f esempio.awk lista.txt
```

## esempio #4
Con -v si passano variabili nella forma chiave=valore. %s è il segnaposto della stringa:

```
awk -v a="bla bla bla" 'BEGIN { printf "variabile = %s\n", a }'
```

## esempio #5
Lo stesso con un programma riutilizzabile (variabili.awk) e variabili diverse:

```
awk -v nome=Mario -f variabili.awk
awk -v nome=Luisa -f variabili.awk
```

## esempio #6
$1, $2, $3 sono le colonne, $0 è l'intera riga. Stampiamo solo nome e cognome:

```
awk '{ printf "%s\t%s\n", $1, $2 }' lista.txt
```

## esempio #7
Un pattern (espressione regolare) prima del blocco filtra le righe. Qui solo quelle che contengono la lettera n:

```
awk '/n/ { print $0 }' lista.txt
```

## esempio #8
Poiché print è l'azione predefinita, si può scrivere in forma più breve:

```
awk '/n/' lista.txt
```

## esempio #9
Contiamo le righe che corrispondono al pattern: tot++ incrementa il contatore, END lo stampa:

```
awk '/n/ { tot++ } END { print tot }' lista.txt
```

## esempio #10
Con la funzione length stampiamo solo le righe in cui il cognome è più lungo di 5 caratteri:

```
awk 'length($2) > 5' lista.txt
```
