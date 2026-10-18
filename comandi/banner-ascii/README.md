# figlet e toilet
Due comandi per creare banner ASCII da linea di comando. Si installano con apt-get:

```
sudo apt-get install figlet toilet
```

## esempio #1
figlet trasforma un testo in un banner:

```
figlet "The Linux Nerd"
```

## esempio #2
I font disponibili stanno in /usr/share/figlet:

```
ls /usr/share/figlet
```

## esempio #3
L'opzione -f cambia il font, per esempio slant:

```
figlet -f slant "The Linux Nerd"
```

## esempio #4
Altri font da provare, come bubble e letter:

```
figlet -f bubble "The Linux Nerd"
figlet -f letter "The Linux Nerd"
```

## esempio #5
toilet funziona in modo simile ma aggiunge i colori. Con il filtro gay si ottiene un effetto arcobaleno:

```
toilet --gay "The Linux Nerd"
```

## esempio #6
Anche toilet accetta -f per il font (legge dalla stessa cartella di figlet):

```
toilet -f slant --gay "The Linux Nerd"
```
