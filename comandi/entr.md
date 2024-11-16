entr
====
Questo comando monitora un file o una cartella e lancia un comando quando il file o la cartella
che sta monitorando vengono modificati.

esempio #1
----------
Supponiamo di voler lanciare lo script changing-script.sh quando viene modificato il file file-changing.txt,
sarà sufficiente lanciare il comando:

```
echo file-changing.txt | entr -p ./changing-script.sh &
```

Dopodiché se modificheremo il file vedremo che lo script viene eseguito:

```
echo "prova 3" > file-changing.txt
```

Per vedere i processi di entr attivi è sufficiente monitorare i processi di entr attivi:

```
ps aux | grep entr
```

esempio #2
----------
Supponiamo di voler passare allo script che viene eseguito al cambiamento del file file-changing.txt il
nome del file come argomento:

```
echo file-changing.txt | entr -p bash ./changing-script.sh /_ &
```

In questo modo il nome del file verrà passato come argomento allo script; potremo quindi scrivere qualcosa
di simile:

```
#!/bin/bash

clear

/usr/games/cowsay "ciao! hai modificato $( basename $1)"

exit 0
```
