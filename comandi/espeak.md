# espeak

# leggere una fortune

```
fortune -s | espeak
```

# rallentare

```
fortune -s | espeak -s 120
```

# elencare le voci disponibili

```
espeak --voices
```

# cambiare voce

```
fortune -s | espeak -s 120 -v europe/it
```

# aggiustare il pitch

```
fortune -s | espeak -s 130 -p 15 -v europe/it
```

# aggiustare volume e word gap

```
fortune -s | espeak -s 130 -p 15 -a 50 -g 3 -v europe/it
```
