# ln, collegamenti fisici e simbolici

📺 [il video su YouTube](https://www.youtube.com/watch?v=Sy-UpVt4yfM) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-collegamenti-fisici-e-simbolici/)

In Linux ci sono due tipi di collegamento: gli hard link (fisici) e i soft link (simbolici).
Un hard link è un altro nome per gli stessi dati. Un link simbolico è un file speciale che contiene un percorso.

## esempio #1
Creiamo un file. Con `ls -la` la seconda colonna è il numero di collegamenti: vale 1.

```
echo "Ciao mondo" > file.txt
ls -la
```

## esempio #2
Un hard link con `ln`. Ora i collegamenti sono due:

```
ln file.txt hard.txt
ls -la
```

## esempio #3
Con `-i` si vede l'inode, cioè l'indirizzo dei dati. I due nomi hanno lo stesso inode:

```
ls -li
```

## esempio #4
Cancellando un nome, l'altro resta e i dati sono intatti:

```
rm file.txt
cat hard.txt
```

## esempio #5
Si possono creare altri nomi, partendo da qualunque di quelli esistenti. Nessuno è l'originale:

```
ln hard.txt file.txt
ln file.txt hard2.txt
ls -li
```

## esempio #6
Modificando i dati da un nome, la modifica si vede da tutti gli altri:

```
echo "Testo modificato" > hard.txt
cat hard2.txt
```

## esempio #7
I nomi si possono spostare: i dati restano gli stessi.

```
mkdir dir
mv file.txt dir/
mv hard2.txt dir/
cat dir/hard2.txt
```

## esempio #8
Limiti degli hard link: non funzionano tra file system diversi e non si possono fare su una cartella.

## esempio #9
Link simbolico con `ln -s`. Ha tutti i permessi e mostra il file puntato:

```
ln -s dir/file.txt soft.txt
ls -l soft.txt
```

## esempio #10
Se il file puntato viene spostato, rinominato o cancellato, il link si rompe (broken link):

```
mv dir/file.txt dir/altro.txt
cat soft.txt
```

## esempio #11
Il link simbolico contiene solo un percorso, relativo a dove si trova il link. Se si sposta il link, il percorso può puntare a un altro file o a niente:

```
mv soft.txt ..
```

## esempio #12
Un link simbolico a una cartella funziona come una cartella. Qui, da `dir2/dir3`, un link che sale di due livelli e va in `dir`:

```
mkdir -p dir2/dir3
cd dir2/dir3
ln -s ../../dir soft
cd soft
touch ciao.txt
ls ../../../dir
```

## esempio #13
I link si cancellano come file normali. Un file è davvero cancellato quando viene rimosso l'ultimo dei suoi nomi:

```
rm soft hard.txt
```
