# tgpt

📺 [il video su YouTube](https://www.youtube.com/watch?v=u63ZM1wmoMY) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-usare-chatgpt-da-linea-di-comando/)

tgpt permette di interrogare un'intelligenza artificiale (ChatGPT) dalla linea di comando, senza chiave API.
Si appoggia a un progetto gratuito e usa un modello gratuito.
Utile per farsi suggerire un comando senza uscire dal terminale. L'IA non vede i file della macchina.

## esempio #1
Installare il linguaggio Go, necessario per tgpt:

```
apt-get install golang
```

## esempio #2
Installare tgpt con lo script del progetto:

```
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash
```

## esempio #3
Vedere le opzioni disponibili:

```
tgpt -h
```

## esempio #4
Fare una domanda:

```
tgpt "Come posso prelevare le ultime righe di un file di testo in Linux Bash?"
```

## esempio #5
Un'altra domanda:

```
tgpt "Come faccio a sostituire una sottostringa con un'altra in una stringa usando la Bash di Linux?"
```

## esempio #6
Una terza domanda:

```
tgpt "Come faccio a trovare in Linux Bash tutti i file modificati oggi in una data sottocartella?"
```
