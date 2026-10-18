# jp2a
Converte un'immagine JPEG o PNG in ASCII art da mostrare nel terminale.
Il risultato è fatto di veri caratteri, quindi si può copiare e incollare in un file di testo.
Si installa con:

```
sudo apt-get install jp2a
```

Negli esempi `immagine.jpg` è un'immagine qualsiasi.

## esempio #1
Senza opzioni jp2a usa i caratteri del terminale e il suo colore di base:

```
jp2a immagine.jpg
```

## esempio #2
Se l'immagine ha lo sfondo chiaro e la figura scura, con `--background` si inverte il comportamento:

```
jp2a --background=light immagine.jpg
```

## esempio #3
Con `--colors` si aggiungono i colori. Anche un'immagine in scala di grigi diventa più riconoscibile:

```
jp2a --colors immagine.jpg
```

## esempio #4
Le opzioni si combinano:

```
jp2a --background=light --colors immagine.jpg
```

## esempio #5
Con `--fill` si riempie lo sfondo di ogni carattere. L'effetto ricorda la pixel art:

```
jp2a --colors --fill immagine.jpg
```

## esempio #6
Con `--chars` si scelgono i caratteri da usare (servono almeno due). Con due spazi le celle restano vuote e rimane solo il colore di sfondo, cioè pixel art pura:

```
jp2a --colors --fill --chars="  " immagine.jpg
```

## esempio #7
Con `--color-depth` si cambia la profondità di colore (4, 8 o 24). Con 4 colori:

```
jp2a --colors --color-depth=4 immagine.jpg
```

## esempio #8
Con 8 bit (256 colori) l'effetto è molto retrò, anni 80:

```
jp2a --colors --color-depth=8 immagine.jpg
```

## esempio #9
La profondità di colore si nota ancora di più con la pixel art:

```
jp2a --colors --fill --chars="  " --color-depth=4 immagine.jpg
```

## esempio #10
Con `-b` si circonda l'immagine con un bordo:

```
jp2a -b immagine.jpg
```
