# navigare nel file system
Per spostarsi fra le cartelle bastano pochi comandi: pwd, cd e ls.
Il file system parte dalla radice /, che contiene tutte le altre cartelle.

## esempio #1
Per sapere in che cartella ci troviamo si usa pwd (print working directory). Nel prompt la home è indicata dalla tilde (~):

```
pwd
```

## esempio #2
Con cd (change directory) ci si sposta. Qui andiamo nella cartella radice:

```
cd /
pwd
```

## esempio #3
ls elenca il contenuto della cartella. Con -l l'elenco è dettagliato, con -a si vedono anche le cartelle nascoste, compresi . e ..:

```
ls
ls -l
ls -la
```

## esempio #4
Il punto . è la cartella corrente, il doppio punto .. è la cartella superiore. Dalla radice, .. resta nella radice:

```
cd ..
```

## esempio #5
Un percorso assoluto inizia con / e funziona da qualsiasi posizione:

```
cd /usr
pwd
cd /var/log
pwd
```

## esempio #6
Un percorso relativo parte invece dalla cartella corrente. Per arrivare in /var/log da /usr passando per la radice:

```
cd /usr
cd ..
cd var
cd log
```

## esempio #7
La tilde riporta rapidamente nella propria home:

```
cd ~
```
