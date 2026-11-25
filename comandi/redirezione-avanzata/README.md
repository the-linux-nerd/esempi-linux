# redirezione avanzata in bash

📺 [il video su YouTube](https://www.youtube.com/watch?v=cRgHsqAabn4)

Ogni programma nasce con tre canali aperti: 0 è lo standard input ( la tastiera ),
1 lo standard output e 2 lo standard error ( tutti e due lo schermo ).
Con la redirezione li mandiamo dove vogliamo.

## esempio #1
Un file che esiste e uno che non esiste: output ed errore finiscono mescolati sullo schermo.
Con il maggiore da solo nel file va solo l'output, l'errore resta sullo schermo:

```
ls /etc/passwd /nonesiste
ls /etc/passwd /nonesiste > risultato.txt
cat risultato.txt
```

## esempio #2
Con 2> redirigiamo gli errori; 2>> li aggiunge in fondo al file invece di sovrascriverlo:

```
ls /etc/passwd /nonesiste 2> errori.txt
cat errori.txt
```

## esempio #3
Output in un file ed errori in un altro, nella stessa riga:

```
ls /etc/passwd /nonesiste > risultato.txt 2> errori.txt
cat risultato.txt
cat errori.txt
```

## esempio #4
Tutto nello stesso file con 2>&1: prima il file, poi 2>&1. Al contrario l'errore torna sullo schermo.
In bash la scorciatoia è &>, che con /bin/sh potrebbe non funzionare:

```
ls /etc/passwd /nonesiste > tutto.txt 2>&1
cat tutto.txt
ls /etc/passwd /nonesiste 2>&1 > tutto.txt
ls /etc/passwd /nonesiste &> tutto.txt
```

## esempio #5
Il buco nero /dev/null: buttiamo via i "permesso negato" di find e restano solo le righe buone:

```
find / -name passwd
find / -name passwd 2> /dev/null
```

## esempio #6
Con il minore il comando legge lo standard input da un file:

```
cat /etc/passwd | wc -l
wc -l < /etc/passwd
```

## esempio #7
Il here-doc passa un testo su più righe. La parola di fine va da sola sulla sua riga;
fra apici ( << 'FINE' ) le variabili non vengono espanse:

```
cat << FINE
Questo è un testo
su più righe.
Il tuo utente è $USER
FINE
```

## esempio #8
Negli script il here-doc scrive un file di configurazione. Lo script `heredoc`:

```
#!/bin/bash
cat > config.txt << FINE
nome=prova
porta=8080
FINE
```

```
chmod +x heredoc
./heredoc
cat config.txt
```

## esempio #9
Il here-string passa una sola stringa come standard input, senza echo e pipe:

```
tr a-z A-Z <<< "ciao mondo"
wc -w <<< "$frase"
```

## esempio #10
I messaggi di errore dei nostri script vanno sullo standard error con >&2. Lo script `script-errori`:

```
#!/bin/bash
if [ $# -lt 1 ]; then
    echo "manca l'argomento" >&2
    exit 1
fi
```

```
chmod +x script-errori
./script-errori
./script-errori > vuoto.txt
./script-errori 2> script-errori.txt
cat script-errori.txt
```
