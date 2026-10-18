# man
Il comando man mostra il manuale di un comando. Il manuale è diviso in sezioni (volumi):
la 1 contiene i comandi, la 3 le chiamate di libreria per i programmatori.
Si scorre con le frecce o PagUp/PagDown e si esce con q.

## esempio #1
Leggere il manuale di ls (nome, sinossi, descrizione, opzioni):

```
man ls
```

## esempio #2
Con -k si cerca una parola chiave fra tutte le pagine di manuale. Accanto a ogni risultato c'è il numero della sezione:

```
man -k printf
```

## esempio #3
Si può scegliere la sezione. Qui il comando printf (sezione 1):

```
man 1 printf
```

## esempio #4
Qui invece la funzione printf del linguaggio C (sezione 3):

```
man 3 printf
```

## esempio #5
Senza indicare la sezione, man mostra quella più pertinente (di solito i comandi):

```
man printf
```

## esempio #6
Con -a man mostra una dopo l'altra tutte le sezioni disponibili. Si passa alla successiva con Invio:

```
man -a printf
```

## esempio #7
Con -w si vede dove si trova sul file system il file della pagina di manuale:

```
man -w ls
```

## esempio #8
Ogni sezione ha una pagina introduttiva. Qui quella della sezione 1:

```
man 1 intro
```
