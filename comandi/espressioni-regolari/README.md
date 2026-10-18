# espressioni regolari

📺 [il video su YouTube](https://www.youtube.com/watch?v=8FFTOKi7nHo) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-introduzione-alle-espressioni-regolari/)

Un linguaggio per descrivere dei pattern di testo, trovare delle corrispondenze (match) ed estrarre parti di testo.
Valgono in quasi tutti i linguaggi e comandi (grep, sed, Python, Bash...).
Nel video si prova tutto sul sito https://regex101.com, che spiega l'espressione man mano che la si scrive.

I primi esempi usano il testo `Ciao mondo`.

## esempio #1
Il punto significa qualsiasi carattere. Trova ogni singolo carattere:

```
.
```

## esempio #2
L'asterisco significa zero o più volte. Insieme al punto trova tutta la stringa:

```
.*
```

## esempio #3
Le parentesi quadre definiscono un gruppo di caratteri. Con l'asterisco trova le sequenze di cifre (anche la stringa vuota, perché 0 volte va bene):

```
[0123456789]*
```

## esempio #4
Il più significa da una a infinite volte. Trova solo i numeri veri:

```
[0123456789]+
```

## esempio #5
Un range riassume i caratteri. Lo stesso risultato dell'esempio precedente:

```
[0-9]+
```

## esempio #6
Un range alfabetico. Le maiuscole e le lettere accentate vanno indicate a parte:

```
[a-z]+
```

## esempio #7
Range uniti: lettere e numeri:

```
[a-zA-Z0-9]+
```

## esempio #8
Fuori dai gruppi, l'accento circonflesso indica l'inizio della stringa. Qui la prima parola:

```
^[a-zA-Z0-9]+
```

## esempio #9
Il dollaro indica la fine della stringa. Qui l'ultima parola:

```
[a-zA-Z0-9]+$
```

## esempio #10
Con inizio e fine si verifica che tutta la stringa sia formata solo da lettere, numeri e spazi:

```
^[a-zA-Z0-9 ]+$
```

## esempio #11
Lo stesso per verificare che la stringa sia solo un numero (con `12345` c'è match, con `12a45` no):

```
^[0-9]+$
```

## esempio #12
Un quantificatore esplicito tra graffe indica quante volte. Questa espressione riconosce una data nel formato gg/mm/aaaa. Lo slash va preceduto da un backslash:

```
^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$
```

## esempio #13
Un gruppo negato (accento circonflesso dentro le parentesi) significa "tutto tranne". Qui tutto quello che precede la virgola:

```
^[^,]*
```

## esempio #14
Le parentesi tonde sono un gruppo di cattura: la parte trovata viene salvata in una variabile (nel programma Python, nello script Bash...). Qui catturiamo la parola prima della virgola:

```
^([^,]+)
```

## esempio #15
Catturiamo la parola prima della virgola solo nelle stringhe che contengono la parola crudele:

```
^([^,]+).*crudele.*
```

## esempio #16
Estrarre un indirizzo email: lettere, numeri e punti (con il punto preceduto da backslash), una chiocciola, poi lettere, numeri e punti:

```
([a-zA-Z0-9\.]+@[a-zA-Z0-9\.]+)
```

## esempio #17
Le stesse espressioni funzionano anche da riga di comando, per esempio con grep -E:

```
echo "scrivi a mario.rossi@example.com" | grep -oE '[a-zA-Z0-9.]+@[a-zA-Z0-9.]+'
```
