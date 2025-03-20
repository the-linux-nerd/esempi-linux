# tee
Questo comando fa una cosa molto semplice, salva su file e visualizza a schermo l'output di un comando che gli viene passato in pipe.
Prende il nome dalla giunzione a T che si usa per i tubi dell'acqua perché svolge un compito molto simile.

## esempio #1
Supponiamo di voler visualizzare e al tempo stesso salvare su file l'output del comando ls:

```
ls | tee lista.txt
```

## esempio #2
Il comportamento normale di tee è sovrascrivere il file che gli si dà come argomento, se vogliamo invece appendere l'output del comando
a un file già esistente dobbiamo utilizzare l'opzione -a:

```
ls | tee -a lista.txt
```
