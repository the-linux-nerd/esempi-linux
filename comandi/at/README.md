# at

📺 [il video su YouTube](https://www.youtube.com/watch?v=4Bj6cmR7IrE) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-eseguire-i-comandi-nel-futuro/)

Il comando at serve a eseguire comandi in un momento preciso del futuro.
Se non è installato: sudo apt-get install at

## esempio #1
Modalità interattiva. Con -t si indica l'ora esatta nel formato AAAAMMGGhhmm. Si apre un editor dove scrivere i comandi; si esce con Ctrl+D:

```
at -t 202311062328
```

Ad esempio, dentro l'editor:

```
echo "prova at" > prova.txt
```

## esempio #2
Con -l si vede l'elenco dei job programmati (lo stesso fa atq):

```
at -l
```

## esempio #3
Al momento giusto verifichiamo che il file sia stato creato:

```
cat prova.txt
```

## esempio #4
Modalità non interattiva. Il comando si passa con echo e una pipe. L'orario può essere relativo, come "now + 1 minute":

```
echo "echo ciao mondo > prova2.txt" | at now + 1 minute
```

## esempio #5
Dopo un minuto controlliamo il risultato:

```
cat prova2.txt
```

## esempio #6
Altra forma dell'orario: cinque minuti dopo mezzanotte.

```
echo "echo ciao > prova3.txt" | at midnight + 5 minutes
```

## esempio #7
atq mostra la coda dei job, con il loro numero:

```
atq
```

## esempio #8
at -c mostra il contenuto di un job (qui il numero 19), comprese le variabili d'ambiente:

```
at -c 19
```

## esempio #9
atrm toglie un job dalla coda:

```
atrm 19
atq
```
