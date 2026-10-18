# git stash, revert, reset

📺 [il video su YouTube](https://www.youtube.com/watch?v=iKJB_nHm4h4) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-git-stash-revert-e-reset-spiegati-facili/)

Tre modi per muoversi nel tempo in un repository: accantonare le modifiche (stash), annullare un commit con un nuovo commit (revert) e tornare indietro riscrivendo la cronologia (reset).
Gli esempi partono da un repository con i file `animali.txt` e `verdure.txt`.

## esempio #1
Con `git stash` si accantonano le modifiche in corso (area di lavoro e di staging) e si torna a una situazione pulita:

```
git stash
git status
```

## esempio #2
L'elenco dei gruppi di modifiche accantonate:

```
git stash list
```

## esempio #3
`git stash pop` riprende il gruppo in cima all'elenco e lo toglie dallo stash:

```
git stash pop
```

## esempio #4
`git stash apply` applica le modifiche ma le lascia nello stash, utile per riapplicarle su più branch:

```
git stash apply
```

## esempio #5
Uno stash con un messaggio esplicativo, che compare poi in `git stash list`:

```
git stash push -m "modifiche alle verdure"
git stash list
```

## esempio #6
Per riprendere uno stash preciso si indica il suo identificativo:

```
git stash pop stash@{1}
```

## esempio #7
Il log in versione corta, una riga per commit:

```
git log --oneline
```

## esempio #8
`git revert` crea un nuovo commit che fa la modifica contraria a quella del commit indicato. La cronologia non viene modificata. Si apre l'editor per il messaggio:

```
git revert <commit>
git log --oneline
```

## esempio #9
`git add` e `git commit` in un colpo solo con `-am` (solo per i file già tracciati):

```
git commit -am "modificato verdure"
```

## esempio #10
`git reset` sposta il ramo al commit indicato. Il commit sbagliato sparisce dalla cronologia, ma le sue modifiche restano nell'area di lavoro:

```
git reset <commit>
```

## esempio #11
Con `--hard` anche le modifiche vengono eliminate e l'area di lavoro torna uguale al commit indicato. Attenzione: non si torna indietro:

```
git reset --hard <commit>
```
