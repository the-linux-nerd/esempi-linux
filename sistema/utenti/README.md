# useradd, passwd, groupadd, userdel
`useradd` crea un utente. Da solo non crea la cartella home e non imposta la password, quindi di solito si usa con alcune opzioni.
Alla creazione di un utente viene creato anche un gruppo con lo stesso nome.

## esempio #1
Utente semplice, senza home e senza password:

```
useradd prova1
```

## esempio #2
Con `-m` si crea anche la cartella home:

```
useradd -m prova2
ls -la /home/prova2
```

## esempio #3
Si imposta la password con `passwd`. Viene chiesta due volte e mentre si scrive non si vede nulla. Se le due non coincidono, non cambia:

```
passwd prova2
```

## esempio #4
Con `-g` si sceglie il gruppo di login, per esempio il gruppo del server web, così i file creati dall'utente hanno quel gruppo:

```
useradd -m -g www-data prova3
ls -la /home/prova3
```

## esempio #5
Con `-d` si indica una cartella home diversa da quella di default:

```
useradd -d /var/esempio prova4
```

## esempio #6
Il file `/etc/passwd` contiene tutti gli utenti. Per controllare quelli creati:

```
cat /etc/passwd | grep prova
```

## esempio #7
Creare un gruppo, assegnargli la cartella e usarlo come gruppo di default per un nuovo utente. Così più utenti possono collaborare nella stessa cartella:

```
groupadd esempio
chgrp esempio /var/esempio
useradd -d /var/esempio -g esempio prova5
```

## esempio #8
Cancellare un utente senza home:

```
userdel prova1
```

## esempio #9
Cancellare un utente insieme alla sua home con `-r`:

```
userdel -r prova2
```

## esempio #10
Per un utente la cui home è una cartella da conservare, come `/var/esempio`, si cancella senza `-r`:

```
userdel prova4
```
