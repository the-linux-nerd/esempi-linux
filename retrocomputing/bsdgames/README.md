# bsdgames, un ritorno agli anni '80

📺 [il video su YouTube](https://www.youtube.com/watch?v=xWjI_Dxl2KE) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-bsdgames-un-ritorno-agli-anni-80/)

Un pacchetto con una collezione di vecchi giochi testuali da riga di comando.
Gli eseguibili stanno in `/usr/games`, che di solito non è nel PATH.

## esempio #1
Installare il pacchetto:

```
sudo apt install bsdgames
```

## esempio #2
Vedere l'elenco dei giochi contenuti nel pacchetto:

```
apt show bsdgames
```

## esempio #3
Se scriviamo solo il nome del gioco, il comando non viene trovato. Con whereis scopriamo dove sta l'eseguibile:

```
snake
whereis snake
```

## esempio #4
Boggle: trova le parole nella scacchiera, in orizzontale, verticale e diagonale. Ctrl+D per finire:

```
/usr/games/boggle
```

## esempio #5
Hangman, l'impiccato: si indovina la parola lettera per lettera:

```
/usr/games/hangman
```

## esempio #6
Quiz: domande su un argomento a scelta, per esempio le capitali europee. Invio per vedere la risposta:

```
/usr/games/quiz european capital
```

## esempio #7
Tetris (con q si esce):

```
/usr/games/tetris-bsd
```

## esempio #8
Snake, o worm in questa versione: il verme mangia i numeri e si allunga, senza mordersi la coda:

```
/usr/games/snake
/usr/games/worm
```
