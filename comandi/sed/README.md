# sed
Serve a sostituire e manipolare il contenuto di file o stringhe.
Il primo argomento è lo script (cosa fare), il secondo il file. Può anche leggere dallo standard input.
sed non modifica il file: scrive il risultato sullo standard output.

Gli esempi usano un file `mondo.txt` con più righe che contengono la parola mondo.

## esempio #1
Sostituiamo la parola mondo con Mario in una stringa passata in pipe. Lo script inizia con `s` e usa lo slash come separatore:

```
echo "ciao mondo" | sed 's/mondo/Mario/'
```

## esempio #2
Lo stesso su un file. Viene sostituita la prima occorrenza di ogni riga:

```
sed 's/mondo/Mario/' mondo.txt
```

## esempio #3
Un numero dopo lo slash finale sostituisce la seconda occorrenza di ogni riga (se non c'è, la riga resta uguale):

```
sed 's/mondo/Mario/2' mondo.txt
```

## esempio #4
Il flag g (global) sostituisce tutte le occorrenze:

```
sed 's/mondo/Mario/g' mondo.txt
```

## esempio #5
Numero e g insieme: dalla seconda occorrenza in avanti:

```
sed 's/mondo/Mario/2g' mondo.txt
```

## esempio #6
Un numero davanti allo script limita la sostituzione a una riga, qui la seconda:

```
sed '2s/mondo/Mario/' mondo.txt
```

## esempio #7
Le due cose si combinano: seconda riga, seconda occorrenza:

```
sed '2s/mondo/Mario/2' mondo.txt
```

## esempio #8
Un range di righe, qui le prime due:

```
sed '1,2s/mondo/Mario/g' mondo.txt
```

## esempio #9
Il flag p ristampa le righe dove è avvenuta la sostituzione (quindi compaiono due volte):

```
sed 's/mondo/Mario/p' mondo.txt
```

## esempio #10
Con -n si stampano solo le righe dove è avvenuta la sostituzione:

```
sed -n 's/mondo/Mario/p' mondo.txt
```

## esempio #11
Si può combinare con altri flag, per esempio dalla terza occorrenza in poi:

```
sed -n 's/mondo/Mario/3gp' mondo.txt
```

## esempio #12
Il comando d elimina una riga dall'output (il file non cambia):

```
sed '3d' mondo.txt
```

## esempio #13
Il dollaro indica l'ultima riga. Così cancelliamo dalla terza all'ultima:

```
sed '3,$d' mondo.txt
```

## esempio #14
Si può cancellare anche con un pattern: via le righe che contengono la parola mondo:

```
sed '/mondo/d' mondo.txt
```

## esempio #15
Il comando p stampa solo certe righe, insieme a -n:

```
sed -n '1,3p' mondo.txt
```

## esempio #16
Il comando a aggiunge una riga dopo quella che corrisponde al pattern:

```
sed '/parola/a riga di esempio' mondo.txt
```

## esempio #17
Il comando i inserisce la riga prima di quella che corrisponde:

```
sed '/parola/i riga di esempio' mondo.txt
```
