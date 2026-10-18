# apt

📺 [il video su YouTube](https://www.youtube.com/watch?v=it_IXezbCIs) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-installare-e-disinstallare-il-software/)

Su Debian il software si installa con il gestore di pacchetti, non scaricandolo a mano da internet.
È un po' come lo store di un telefono: un posto sicuro da cui installare programmi con un solo comando.

## esempio #1
Primo passo dell'aggiornamento: scarica l'elenco aggiornato dei pacchetti.

```
apt-get update
```

## esempio #2
Secondo passo: scarica e installa gli aggiornamenti. Mostra un'anteprima e chiede conferma.

```
apt-get upgrade
```

## esempio #3
Cercare un pacchetto di cui si ricorda solo una parte del nome. Con `less` si scorre la lista con le frecce e si esce con `q`:

```
apt-cache search tree | less
```

## esempio #4
Installare un pacchetto (qui `tree`, che mostra le cartelle ad albero):

```
apt-get install tree
tree /var/esempio
```

## esempio #5
Rimuovere un pacchetto. Restano i suoi file di configurazione:

```
apt-get remove tree
```

## esempio #6
Rimuovere il pacchetto insieme ai file di configurazione, per una disinstallazione pulita:

```
apt-get purge tree
```

## esempio #7
Togliere i pacchetti orfani, non più usati da nessuno:

```
apt-get autoremove
```

## esempio #8
Come sopra, ma eliminando anche i loro file di configurazione:

```
apt-get autopurge
```
