# gestire file e cartelle

📺 [il video su YouTube](https://www.youtube.com/watch?v=rUQ4PM5bFII) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-creare-spostare-e-cancellare-file/)

I comandi di base per creare, copiare, spostare, rinominare e cancellare file e cartelle.
Un percorso assoluto inizia con /, uno relativo parte dalla cartella corrente.

## esempio #1
Creare una cartella con mkdir (make directory):

```
mkdir dir7
```

## esempio #2
ls mostra il contenuto di una cartella, anche indicandola con un percorso relativo:

```
ls dir2
```

## esempio #3
Copiare un file dentro una cartella con cp:

```
cp file1.txt dir7
ls dir7
```

## esempio #4
Spostare un file con mv. Dopo lo spostamento il file non c'è più nella cartella di partenza:

```
mv test.txt dir7
ls dir7
```

## esempio #5
rmdir non cancella una cartella che non è vuota e dà errore:

```
rmdir dir7
```

## esempio #6
Bisogna prima cancellare i file con rm, poi la cartella:

```
rm dir7/test.txt
rm dir7/file1.txt
rmdir dir7
```

## esempio #7
Con rm -r (ricorsivo) si cancella la cartella con tutto il suo contenuto:

```
rm -r dir7
```

## esempio #8
mv serve anche a rinominare, che è come uno spostamento sul posto:

```
mv dir4/file1.txt dir4/file2.txt
```

## esempio #9
Per copiare una cartella serve cp -r, altrimenti Linux si ferma:

```
cp -r dir3 dir4
cp -r dir5 dir4
```

## esempio #10
Rinominare una cartella con mv:

```
mv dir7 dir8
```

## esempio #11
Spostare una cartella dentro un'altra:

```
mv dir5 dir6
```

## esempio #12
Per vedere l'albero delle cartelle si può usare tree:

```
tree
```

## esempio #13
Anche un albero complesso si cancella con rm -r:

```
rm -r dir6
```

## esempio #14
Il carattere jolly * sostituisce una parte del nome. Qui spostiamo i file .tar nella cartella dir5:

```
mkdir dir5
mv *.tar dir5
```

## esempio #15
Con *.tar.* si prendono i file che hanno un'altra estensione dopo .tar (per esempio .tar.gz):

```
mv *.tar.* dir5
```
