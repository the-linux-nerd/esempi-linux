# uso delle subshell
Sostanzialmente una subshell è una shell che viene aperta all'interno di un'altra shell, come per esempio uno script bash.
Questo consente di ottenere diversi effetti, come la parallelizzazione delle esecuzioni e la sostituzione dei comandi.

## esempio 1
Per creare una subshell possiamo usare le parentesi tonde o graffe:

```
( pwd; ls; )
```

oppure:

```
{ pwd; ls; }
```

## esempio 2
L'utilizzo forse più comune delle subshell è la sostituzione di comando, che ci consente di assegnare a una variabile il
valore di output di una subshell:

```
percorso=$(pwd)
echo $percorso
```

## esempio 3
Le subshell hanno visibilità sulle variabili della shell genitore, ma qualsiasi modifica ad esse sarà limitata all'ambiente
della subshell stessa:

```
test=10
( echo $test; test=20; echo $test )
echo $test
```

Come si vede, nella shell genitore la variabile test vale ancora 10.

## esempio 4
È ovviamente possibile mandare una subshell in background:

```
(sleep 10; echo "eseguito background") &
```

## esempio 5
Un utilizzo molto comodo delle subshell è la parallelizzazione dei processi; si supponga di avere tre script che contengono degli sleep arbitrari
(ad esempio 20, 10 e 30 secondi) e di lanciare:

```
(./sleep1.sh) & (./sleep2.sh) & (./sleep3.sh) &
```
