# pico e nano

📺 [il video su YouTube](https://www.youtube.com/watch?v=z1H4_-dx_iU) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-pico-e-nano-gli-editor-leggeri/)

pico è l'editor nato con il client di posta Pine; nano è il suo clone libero, con gli stessi tasti.
Su Debian e derivate pico è un collegamento a nano gestito dalle alternative: tutto quello che segue vale per tutti e due.

## esempio #1
Dove stanno gli eseguibili, e dove porta davvero pico:

```
which pico
which nano
readlink -f /usr/bin/pico
```

## esempio #2
Creare un file nuovo, scriverci, salvarlo con `Ctrl+O`, uscire con `Ctrl+X` e controllarlo:

```
pico prova.txt
cat prova.txt
```

## esempio #3
Le scorciatoie viste nel video ( `^` = Ctrl, `M-` = Alt ):

```
Ctrl+O    salva
Ctrl+X    esce
Ctrl+W    cerca
Alt+W     occorrenza successiva
Ctrl+\    cerca e sostituisce
Ctrl+K    taglia la riga ( più volte di fila: più righe )
Ctrl+U    incolla
Alt+A     mette il marcatore per selezionare
Ctrl+_    va a riga,colonna ( p.es. 3,2 )
```

## esempio #4
Aprire un file con i numeri di riga:

```
pico -l prova.txt
```

## esempio #5
Il file di configurazione nella home, con numeri di riga, autoindentazione e colorazione della sintassi:

```
pico ~/.nanorc
```

```
set linenumbers
set autoindent
include "/usr/share/nano/*.nanorc"
```

## esempio #6
Provare la colorazione con uno script di shell:

```
pico prova.sh
```

```
#!/bin/bash
# il mio primo script colorato
echo "Ciao dal terminale"
```

## esempio #7
nano come editor di default, solo per la sessione corrente:

```
export EDITOR=nano
```

## esempio #8
Per renderlo permanente: si controlla che non ci sia già, poi si aggiunge in fondo al `.bashrc`:

```
grep EDITOR ~/.bashrc
echo 'export EDITOR=nano' >> ~/.bashrc
```
