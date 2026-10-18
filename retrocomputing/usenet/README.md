# Usenet, dove tutto è iniziato
Usenet è una rete di server che archivia messaggi organizzati in gruppi tematici ad albero (it.comp..., it.arti...).
Per usarla servono un account su un server gratuito, come Eternal September, e un client a riga di comando, tin.

## esempio #1
Registrarsi gratis su https://www.eternal-september.org/ (sezione user registration).
Poi installare tin. Alla domanda sulla configurazione si può scegliere «no configuration»:

```
sudo apt-get install tin
```

## esempio #2
Creare il file con le credenziali. Il formato è: server, password, utente:

```
touch ~/.newsauth
```

```
news.eternal-september.org <password> <utente>
```

## esempio #3
Lanciare tin una prima volta, così crea la cartella di configurazione ~/.tin:

```
tin
```

## esempio #4
Impostare nome e mail per poter postare, nel file ~/.tin/tinrc:

```
mail_address=Nome <mail@domain.bho>
```

## esempio #5
Lanciare tin autenticandosi con ~/.newsauth sul server, porta 119:

```
tin -A -g news.eternal-september.org -p 119
```

## esempio #6
Gruppi italiani interessanti da cercare e sottoscrivere (tasto `s`):

```
it.comp.os.linux.debian
it.comp.os.linux.ubuntu
it.arti.fantasy
it.arti.scrivere
it.comp.retrocomputing
it.arti.musica
it.cultura.fantascienza
it.hobby.giochi.gdr
```

## esempio #7
Tasti principali di tin, tutti elencati anche in basso nella schermata:

```
h        aiuto con tutti i comandi
s        sottoscrive il gruppo
Invio    entra nel gruppo o nel messaggio
f        follow up, risponde al thread
w        scrive un nuovo post (chiede il soggetto)
p        posta il messaggio
q        esce
r        mostra anche i messaggi già letti
```
