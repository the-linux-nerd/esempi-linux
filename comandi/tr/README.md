# tr
Il comando tr traduce (sostituisce) i caratteri di un testo in altri caratteri.
Sintassi: tr [opzioni] SET1 [SET2]. Ogni carattere di SET1 diventa il corrispondente di SET2.
Legge dallo standard input, quindi di solito si usa con una pipe.

## esempio #1
Trasformare le lettere minuscole in maiuscole:

```
echo "ciao mondo" | tr a-z A-Z
```

## esempio #2
Con -d si cancellano i caratteri del set. Qui togliamo tutte le cifre da 0 a 9:

```
echo "il mio PIN non e' 12345" | tr -d 0-9
```

## esempio #3
Senza -d, ogni cifra viene sostituita da un asterisco:

```
echo "il mio PIN non e' 12345" | tr 0-9 '*'
```

## esempio #4
Con -s (squeeze) una sequenza di spazi uguali viene ridotta a uno solo:

```
echo "troppi    spazi    di fila" | tr -s ' '
```

## esempio #5
Con -c si prende il complemento del set, cioè tutti i caratteri che non ne fanno parte. Così teniamo solo i numeri (anche l'a capo viene cancellato):

```
echo "il mio PIN non e' 12345" | tr -d -c 0-9
```

## esempio #6
Aggiungendo \n al set l'a capo si salva:

```
echo "il mio PIN non e' 12345" | tr -d -c '0-9\n'
```

## esempio #7
Trasformare gli spazi in tabulazioni:

```
echo "una frase di prova" | tr ' ' '\t'
```

## esempio #8
Senza pipe tr legge dalla tastiera. Scriviamo il testo e vediamo la traduzione; si esce con Ctrl+C. Qui a, b e c diventano un asterisco:

```
tr abc '*'
```

## esempio #9
Ogni carattere di SET1 diventa il corrispondente di SET2: a diventa x, b diventa y, c diventa z:

```
tr abc xyz
```

## esempio #10
Se SET2 è più corto, il suo ultimo carattere viene ripetuto. Qui a diventa x e b, c, d diventano y:

```
tr abcd xy
```
