# patch

📺 [il video su YouTube](https://www.youtube.com/watch?v=oVXJZcYMe9c) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-applicare-le-modifiche-con-patch/)

Applica a un file le modifiche descritte da un file di patch, che si ottiene con diff.
Si usa per aggiornare sorgenti, ma va bene per qualsiasi file di testo.

Gli esempi usano `file1.txt` e `file2.txt` di questa cartella: il primo ha una riga in più (pere).

## esempio #1
Creiamo il file di patch con diff in formato unificato (-u):

```
diff -u file1.txt file2.txt > patch.txt
```

## esempio #2
Con --dry-run si prova la patch senza modificare nulla:

```
patch --dry-run < patch.txt
```

## esempio #3
Applichiamo la patch. Il file da modificare (file1.txt) è scritto nel file di patch:

```
patch < patch.txt
```

## esempio #4
Ora file1.txt non ha più la riga pere. file2.txt non è cambiato:

```
cat file1.txt
```

## esempio #5
Con -R (reverse) la patch si annulla e il file torna com'era:

```
patch -R < patch.txt
```

## esempio #6
La riga pere è ricomparsa:

```
cat file1.txt
```

## esempio #7
Con -b si crea un backup prima di modificare. Compare il file `file1.txt.orig` con il contenuto originale (poi annulliamo con -R per ripartire dal file originale):

```
patch -b < patch.txt
ls
patch -R < patch.txt
```

## esempio #8
patch può anche usare uno script per l'editor ed. Con -e diff produce lo script (cancella e cambia righe, il punto chiude l'input):

```
diff -e file1.txt file2.txt > ed.txt
cat ed.txt
```

## esempio #9
Lo script non salva da solo: va aggiunto il comando w. Lo si scrive in fondo al file e si dà il file a ed (in alternativa all'esempio #10):

```
echo w >> ed.txt
ed - file1.txt < ed.txt
```

## esempio #10
In alternativa, si aggiunge w al volo passando lo script in pipe a ed (partendo da file1.txt originale):

```
(cat ed.txt && echo w) | ed - file1.txt
```
