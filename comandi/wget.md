# wget
Questa utility GNU ci consente di scaricare singoli file, pagine HTML e interi siti dal web in maniera affidabile e automatica. Può essere
facilmente integrato in script per automatizzare le operazioni di download e supporta la ripresa di download parziali.

## esempio 1
L'utilizzo più semplice che possiamo fare di wget è scaricare un singolo file; la sintassi è molto semplice, ad esempio:

```
wget https://esempi.thelinuxnerd.it/esempio.tar.gz
```

Volendo possiamo specificare il nome del file scaricato con l'opzione -O:

```
wget https://esempi.thelinuxnerd.it/esempio.tar.gz -O prova.tar.gz
```

Si noti che di default wget sovrascrive il file di destinazione se esiste già.

## esempio 2
Se il download per qualsiasi ragione si interrompe, possiamo riprenderlo con l'opzione -c:

```
wget -c https://esempi.thelinuxnerd.it/esempio.tar.gz
```

## esempio 3
Se vogliamo avere il terminale libero mentre il download è in corso, possiamo usare l'opzione -b per mandare il processo in background:

```
wget -b https://esempi.thelinuxnerd.it/esempio.tar.gz
```

## esempio 4
Se abbiamo un file contenente diversi URL da scaricare (uno per riga) possiamo darlo in pasto a wget utilizzando l'opzione -i:

```
wget -i lista.txt
```

## esempio 5
Se necessario possiamo scaricare file protetti da username e password specificando le opzioni --user e --password:

```
wget --user=<user_id> --password=<user_password> <URL>
```

## esempio 6
Se vogliamo scaricare un intero sito web, possiamo utilizzare l'opzione di mirroring -m:

```
wget -m https://esempi.thelinuxnerd.it
```

