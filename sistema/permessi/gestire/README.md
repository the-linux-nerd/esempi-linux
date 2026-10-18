# chmod, chown, chgrp
Tre comandi per cambiare i permessi (`chmod`), il proprietario (`chown`) e il gruppo (`chgrp`) di un file.
Si usano sul file `permessi.txt` creato nel video precedente.

## esempio #1
Togliere (`-`) il permesso di lettura (`r`) agli altri (`o`):

```
chmod o-r permessi.txt
ls -l permessi.txt
```

## esempio #2
Aggiungere (`+`) il permesso di esecuzione (`x`) al proprietario (`u`):

```
chmod u+x permessi.txt
ls -l permessi.txt
```

## esempio #3
Si possono cambiare più permessi insieme: scrittura ed esecuzione al gruppo (`g`):

```
chmod g+wx permessi.txt
ls -l permessi.txt
```

## esempio #4
Cambiare il proprietario, per esempio assegnando il file all'utente del server web (richiede i permessi di root):

```
chown www-data permessi.txt
```

## esempio #5
Cambiare il gruppo:

```
chgrp www-data permessi.txt
```

## esempio #6
Con `chown` si cambiano utente e gruppo in un colpo solo, con la sintassi `utente:gruppo`:

```
chown root:root permessi.txt
```

## esempio #7
Su una cartella, per applicare la modifica anche a sottocartelle e file contenuti, serve l'opzione `-R` (ricorsiva). Vale per `chown` e `chgrp`:

```
chown -R www-data:www-data cartella/
```

## esempio #8
Se si hanno dubbi sulla sintassi si apre il manuale. Con `q` si esce:

```
man chmod
```
