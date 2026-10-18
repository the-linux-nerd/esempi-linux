# fdupes

📺 [il video su YouTube](https://www.youtube.com/watch?v=vOCFO1yv-Qo) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-trovare-i-file-doppi-con-fdupes/)

Cerca i file duplicati nel file system, confrontando md5 e contenuto byte per byte. Utile per liberare spazio sul disco.

Si installa con `sudo apt install fdupes`.

## esempio #1
Con -r si cerca anche nelle sottocartelle. Elenca i gruppi di file identici, separati da una riga vuota:

```
fdupes -r cartella
```

## esempio #2
Con -S si vede anche la dimensione di ogni gruppo di duplicati:

```
fdupes -rS cartella
```

## esempio #3
Con -A si escludono i file nascosti (come la cartella `.git`, piena di falsi duplicati):

```
fdupes -rSA cartella
```

## esempio #4
L'output non è ordinato. Con awk si mette ogni gruppo su una riga e con sort -h si ordina per dimensione. I più grandi finiscono in fondo:

```
fdupes -rSA cartella | awk 'NF{printf "%s ", $0; next} {print ""}' | sort -h > lista.txt
```

## esempio #5
fdupes può anche cancellare i duplicati con -d, chiedendo conferma per ogni gruppo. Con -N (no prompt) tiene il primo file di ogni gruppo e cancella gli altri senza chiedere. Attenzione: non si torna indietro:

```
fdupes -rd cartella
fdupes -rdN cartella
```
