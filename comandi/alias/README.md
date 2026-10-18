# alias

📺 [il video su YouTube](https://www.youtube.com/watch?v=REAFG9L0Su0) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-risparmiare-tempo-con-gli-alias-di-comando/)

Dà un'etichetta corta a una linea di comando lunga o complicata.
La sintassi è `alias etichetta=comando`. Dopo, scrivendo l'etichetta si esegue il comando.

## esempio #1
Definiamo l'alias lsa per `ls -la`:

```
alias lsa="ls -la"
```

## esempio #2
Ora lsa fa la stessa cosa di `ls -la`:

```
lsa
```

## esempio #3
Senza argomenti alias mostra l'elenco degli alias definiti (stessa cosa con -p):

```
alias
alias -p
```

## esempio #4
Con unalias si elimina un alias:

```
unalias lsa
```

## esempio #5
Dopo averlo eliminato, lsa dà errore di comando non trovato:

```
lsa
```

## esempio #6
Un alias vale solo per l'utente che lo definisce e solo per la sessione in corso. Per averlo a ogni login si aggiunge in fondo al file `~/.bashrc`, con un commento:

```
# i miei alias
alias lsa="ls -la"
```

## esempio #7
Il file .bashrc viene letto all'inizio di ogni sessione, quindi per provare l'alias si apre un nuovo terminale:

```
lsa
```

## esempio #8
Un caso concreto: il lettore di newsgroup tin richiede una linea di comando lunga (autenticazione, server e porta). La mettiamo in un alias:

```
alias tin="tin -A -g news.eternal-september.org -p 119"
```

## esempio #9
Attenzione: un alias con lo stesso nome di un comando esistente lo nasconde. Prima di creare un alias, controlliamo che l'etichetta non sia già un comando (se risponde "comando non trovato" è libera):

```
lsa
```

## esempio #10
Con l'opzione -a (da root) l'alias vale per tutti gli utenti:

```
alias -a lsa="ls -la"
```
