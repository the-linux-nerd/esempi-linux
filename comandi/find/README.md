# find
Il comando find cerca file e cartelle secondo molti criteri: nome, tipo, permessi, data.
Sintassi: find <cartella da cui cercare> <criteri>. Il punto . indica la cartella corrente e tutte le sottocartelle.
Per tutte le opzioni: man find.

## esempio #1
Cercare un file per nome:

```
find . -name dir3.txt
```

## esempio #2
Limitare la ricerca a una cartella e alle sue sottocartelle:

```
find dir4 -name dir3.txt
```

## esempio #3
Nel nome si possono usare i caratteri jolly. Gli apici evitano che li espanda la shell:

```
find . -name 'file*'
```

## esempio #4
Con -type d si trovano solo le cartelle, con -type f solo i file:

```
find . -type d -name dir3
find . -type f -name dir3
```

## esempio #5
Con -perm si cercano i file con certi permessi (qui 775):

```
find . -perm 775
```

## esempio #6
Con -exec si esegue un comando su ogni file trovato: {} è il nome del file e \; chiude il comando. Qui cambiamo i permessi da 775 a 665:

```
find . -perm 775 -exec chmod 665 {} \;
find . -perm 665
```

## esempio #7
Con -exec si può anche cancellare quello che si trova:

```
find . -name dir3.txt -exec rm {} \;
```

## esempio #8
Funziona anche con un pattern e con più file insieme:

```
find . -name 'dir*.txt' -exec rm {} \;
```

## esempio #9
Con -maxdepth 1 la ricerca resta nella cartella corrente, senza scendere nelle sottocartelle:

```
find . -maxdepth 1 -type f
```

## esempio #10
Spostiamo in una sottocartella i soli file della cartella corrente:

```
mkdir sotto
find . -maxdepth 1 -type f -exec mv {} sotto \;
```

## esempio #11
Con -mtime -1 si trovano i file modificati meno di un giorno fa, cioè oggi:

```
find . -mtime -1
```

## esempio #12
Combinato con -type: solo i file, oppure solo le cartelle modificate di recente:

```
find . -mtime -1 -type f
find . -mtime -1 -type d
```
