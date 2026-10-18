# tar

📺 [il video su YouTube](https://www.youtube.com/watch?v=Wo7zJa4M3E4) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-creare-e-gestire-file-compressi/)

Il comando tar crea un unico file (archivio) che contiene file e cartelle. Il nome viene da "tape archive".
Da solo non comprime: per comprimere si aggiunge un'opzione.

## esempio #1
Creiamo un archivio della cartella dir1 (-c crea, -f dà il nome al file):

```
tar -cf dir1.tar dir1
```

## esempio #2
Con -t vediamo il contenuto dell'archivio:

```
tar -tf dir1.tar
```

## esempio #3
Con -u aggiungiamo (aggiorniamo) l'archivio con un'altra cartella:

```
tar -uf dir1.tar dir3
tar -tf dir1.tar
```

## esempio #4
Per estrarre si usa -x. Con -C scegliamo la cartella di destinazione, che deve già esistere:

```
mkdir dir2
tar -xf dir1.tar -C dir2
ls dir2
```

## esempio #5
Con -z l'archivio viene compresso con gzip:

```
tar -czf dir2.tar.gz dir2
```

## esempio #6
Con -j la compressione è bzip2:

```
tar -cjf dir2.tar.bz2 dir2
```

## esempio #7
Per confrontare le dimensioni creiamo anche un archivio non compresso, poi guardiamo con ls:

```
tar -cf dir2.tar dir2
ls -l
```
