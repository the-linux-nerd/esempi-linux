= xargs
Questo comando consente di eseguirne un altro passandogli come parametri i dati letti dallo standard input. È particolarmente utile per i comandi che accettano un numero variabile di parametri, ma
può essere utilizzato in un grande numero di casi.

== esempio #1
Supponiamo di voler leggere il contenuto di tutti i file trovati da ls:

```
ls *.txt | xargs cat
```

Se vogliamo sapere cosa sta facendo esattamente xargs possiamo utilizzare l'opzione -t

```
ls *.txt | xargs -t cat
```

Se invece vogliamo che xargs ci chieda conferma prima di eseguire un comando, possiamo utilizzare l'opzione -p

```
ls *.txt | xargs -p cat
```

== esempio #2
Normalmente xargs concatena tutti i parametri a una sola esecuzione di comando; se vogliamo che il comando venga eseguito più volte con un numero limitato di argomenti dobbiamo utilizzare
l'opzione -n numero

```
ls *.txt | xargs -n 1 -t cat
```

== esempio #3
Supponiamo di voler creare una copia di tutti i file txt presenti in una cartella, possiamo utilizzare l'opzione -I per indicare a xargs un placeholder da sostituire con l'argomento ricevuto
dallo standard input:

```
ls *.txt | xargs -n 1 -I % cp % %.bak
```
