# diff

📺 [il video su YouTube](https://www.youtube.com/watch?v=8fplTcKkKr0) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-trovare-le-differenze-con-diff/)

Calcola le differenze tra due file di testo e dice cosa cambiare per renderli uguali.
Funziona con qualsiasi file di testo: codice, documentazione, configurazioni.

Gli esempi usano due piccoli file d'esempio in questa cartella: `file1.txt` e `file2.txt`. Le ultime due righe sono diverse.

## esempio #1
Nella forma base si danno i due file. L'output `4,5c4,5` dice: le righe 4-5 del primo file vanno cambiate (c) con le righe 4-5 del secondo. Le altre lettere sono a (add) e d (delete). Il prefisso `<` è il primo file, `>` il secondo, `---` il separatore:

```
diff file1.txt file2.txt
```

## esempio #2
Con -c si ottiene la differenza con contesto: oltre alle righe diverse mostra quelle intorno e le date di modifica. Gli asterischi sono il primo file, i trattini il secondo. Prefissi: `!` cambiata, `+` aggiunta, `-` eliminata:

```
diff -c file1.txt file2.txt
```

## esempio #3
Con -u si ottiene il formato unificato, più sintetico. Il meno è il primo file, il più il secondo. Le righe tra doppie chiocciole indicano gli intervalli:

```
diff -u file1.txt file2.txt
```

## esempio #4
Con -y i due file vengono messi a confronto su due colonne. Le righe diverse sono segnate da una barra verticale:

```
diff -y file1.txt file2.txt
```

## esempio #5
Aggiungiamo una riga in fondo al secondo file e confrontiamo di nuovo (l'output diventa `4,5c4,6`):

```
echo fragole >> file2.txt
diff file1.txt file2.txt
```

## esempio #6
Rendiamo i file uguali e togliamo una riga dal secondo (la seconda). L'output base dice che la riga 2 va eliminata (`2d1`):

```
cp file1.txt file2.txt
sed -i '2d' file2.txt
diff file1.txt file2.txt
```

## esempio #7
Con -u e con -c la riga mancante è indicata dal segno meno (o dal meno nel formato con contesto):

```
diff -u file1.txt file2.txt
diff -c file1.txt file2.txt
```

## esempio #8
Altre opzioni utili: -q dice solo se i file sono diversi, -i ignora maiuscole e minuscole, -b ignora spazi e tab multipli, -w ignora del tutto spazi e tab, -B ignora le righe vuote:

```
diff -q file1.txt file2.txt
diff -i file1.txt file2.txt
diff -b file1.txt file2.txt
diff -w file1.txt file2.txt
diff -B file1.txt file2.txt
```

## esempio #9
diff può anche produrre uno script per l'editor ed (opzione -e) e un file da dare al comando patch (vedi la cartella patch):

```
diff -e file1.txt file2.txt
diff -u file1.txt file2.txt > script.txt
```
