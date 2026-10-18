# cercare testo nei file binari (PDF e docx)

📺 [il video su YouTube](https://www.youtube.com/watch?v=JQW8DHo4rFQ) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-trovare-il-testo-nei-file-binari/)

grep non trova il testo dentro file binari come PDF o docx. La soluzione è un one-liner: per ogni file lo si converte in testo, si fa il grep sui file di testo e poi si cancellano.

Servono `pdftotext` (`sudo apt install poppler-utils`) e `docx2txt`.

## esempio #1
Un ciclo for che elenca i PDF della cartella, uno per riga:

```
for i in $(ls *.pdf); do echo $i; done
```

## esempio #2
Si converte ogni PDF in un file di testo. pdftotext vuole prima il PDF e poi il txt:

```
for i in $(ls *.pdf); do pdftotext $i $i.txt; done
```

## esempio #3
Il grep sui file di testo trova la parola cercata:

```
grep -rl mondo --include='*.txt' .
```

## esempio #4
Tutto in una riga: converti, cerca e ripulisci i file txt creati:

```
for i in $(ls *.pdf); do pdftotext $i $i.txt; done; grep -rl mondo --include='*.txt' .; rm -f *.txt
```

## esempio #5
Lo stesso per i docx. docx2txt vuole il file in ingresso (`<`) e quello in uscita (`>`):

```
for i in $(ls *.docx); do docx2txt < $i > $i.txt; done; grep -rl mondo --include='*.txt' .; rm -f *.txt
```

## esempio #6
Per cercare anche nelle sottocartelle si può sostituire `ls` con find:

```
for i in $(find . -name '*.pdf'); do pdftotext $i $i.txt; done; grep -rl mondo --include='*.txt' .; find . -name '*.pdf.txt' -delete
```
