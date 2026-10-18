# pwgen
Genera password sicure da riga di comando. Può produrre più password alla volta, così si sceglie quella che si preferisce.
Le opzioni si possono combinare: `-n -y -c` si ricorda facilmente come "NYC", New York City.

## esempio #1
Con -h pwgen riassume le opzioni principali, quelle che cambiano il tipo di password generata:

```
pwgen -h
```

## esempio #2
Password con numeri (-n), simboli (-y) e lettere maiuscole (-c). Qui, per esempio, 16 caratteri e tre password diverse:

```
pwgen -nyc 16 3
```

## esempio #3
Con -s le password diventano davvero casuali ed esoteriche, impossibili da imparare a memoria: vanno salvate in un portachiavi (keyring). Qui 12 password da 16 caratteri, incolonnate:

```
pwgen -nycs 16 12
```

## esempio #4
Per installarlo su Debian:

```
apt-get install pwgen
```
