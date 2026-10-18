# git branch

📺 [il video su YouTube](https://www.youtube.com/watch?v=O4yVod0Vl-c) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-gestire-le-branch-in-git-spiegato-semplice/)

Un branch (ramo) è un'etichetta attaccata a un commit. Permette di tenere linee di sviluppo parallele dello stesso progetto e di riunirle poi con un merge.
Gli esempi partono da un repository con qualche file di testo e il ramo `master`.

## esempio #1
Elenca i branch. L'asterisco indica quello su cui ci troviamo:

```
git branch
```

## esempio #2
Crea un nuovo branch, partendo dal commit corrente:

```
git branch colori
```

## esempio #3
Passa a un altro branch. La cartella di lavoro cambia per adeguarsi al suo contenuto:

```
git checkout colori
git status
```

## esempio #4
Un file creato e committato su `colori` non esiste su `master`:

```
echo blu > colori.txt
git add colori.txt
git commit -m "aggiunto colori"
git checkout master
ls
```

## esempio #5
Rinomina il branch su cui ci si trova:

```
git checkout colori
git branch -m aggiunta-colori
```

## esempio #6
Il log come albero, con tutti i branch:

```
git log --oneline --graph --decorate --all
```

## esempio #7
Per unire un branch nel branch corrente, ci si sposta sul branch di destinazione e si fa il merge. Se non ci sono divergenze è un fast forward: l'etichetta avanza e basta:

```
git checkout master
git merge aggiunta-colori
```

## esempio #8
Dopo il merge l'etichetta non serve più e si elimina. I commit restano nella cronologia:

```
git branch -d aggiunta-colori
```

## esempio #9
Se le stesse righe sono state modificate su due rami, il merge va in conflitto. Nel file compaiono i marcatori: `<<<<<<< HEAD` (branch corrente), `=======`, `>>>>>>> nome-branch`. Si sistema il file e si completa il merge con un commit:

```
git merge modifica-colori
git status
git add colori.txt
git commit
```

## esempio #10
Per tornare indietro e annullare un merge in conflitto:

```
git merge --abort
```

## esempio #11
`checkout` accetta anche l'identificativo di un commit. Si entra in detached HEAD: HEAD non punta a nessun branch e si può sperimentare liberamente:

```
git checkout <commit>
```

## esempio #12
Se gli esperimenti in detached HEAD piacciono, si salvano creando un branch. Se si torna su un altro branch senza farlo, vengono dimenticati:

```
git checkout -b pasta-ripiena
```
