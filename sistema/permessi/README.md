# permessi dei file

📺 [il video su YouTube](https://www.youtube.com/watch?v=AcE96fPkFtU) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-capire-proprietari-e-permessi-dei-file/)

In Linux gli utenti, rispetto a ogni file, sono divisi in tre categorie (sigla UGO):
`u` user (proprietario), `g` group (gruppo proprietario), `o` others (tutti gli altri).
A ciascuna si assegnano tre permessi (sigla RWX): `r` lettura, `w` scrittura, `x` esecuzione.

## esempio #1
Creiamo un file di prova:

```
echo "ciao" > permessi.txt
```

## esempio #2
Con `ls -l` vediamo permessi, proprietario e gruppo del file:

```
ls -l permessi.txt
```

L'output è del tipo:

```
-rw-r--r-- 1 mario mario 5 ott 18 20:18 permessi.txt
```

## esempio #3
Come si legge la stringa `-rw-r--r--`:
il primo carattere è il tipo (`-` file, `d` cartella). Poi tre triplette rwx: user, group, others.
Un trattino al posto della lettera significa che quel permesso manca.

- `r`: leggere un file, o elencare il contenuto di una cartella
- `w`: modificare o cancellare un file, o creare e rimuovere file in una cartella
- `x`: eseguire un file, o entrare in una cartella e attraversarla

Nel prossimo video si vedono i comandi per modificarli: vedi `gestire`.
