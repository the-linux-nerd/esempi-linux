# rsync

opzione    | significato
-----------|-----------------------
-a         | archivia (mantiene tutte le proprietà dei file sorgenti) equivale a -rlptgoD
-v         | verboso
-r         | ricorsivo
-h         | dimensioni in formato human readable
-z         | comprime i dati trasmessi
--delete   | elimina i file nella destinazione che non sono presenti nella sorgente
--exclude  | esclude la cartella o il file indicato (può essere specificata più volte)
--progress | mostra una barra di avanzamento
--dry-run  | esegue una simulazione

## esempio 1

```
rsync -avh ./sorgente/ ./destinazione/
```

## esempio 2

```
rsync -avh --delete ./sorgente/ ./destinazione/
```

## esempio 3

```
rsync -avh --exclude exclude1/ --exclude exclude2/ --exclude exclude3/ --delete ./sorgente/ ./destinazione/
```

## esempio 4

```
rsync -avh --delete ./sorgente/ <user>@<host>:/var/esempio/dir4/
```
