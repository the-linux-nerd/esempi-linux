# gpg

📺 [il video su YouTube](https://www.youtube.com/watch?v=xrQyKMrtj7M) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-crittografare-un-file-con-gpg/)

Cifra un file con una passphrase, in modo che gli estranei non possano leggerlo. Poi lo si può decifrare.
Qui si usa la forma più semplice, con cifratura simmetrica.

## esempio #1
Un file con dati importanti:

```
echo "contenuto segreto" > segreto.txt
cat segreto.txt
```

## esempio #2
Cifrare il file con `-c` (cipher). Viene chiesta due volte una passphrase e si crea `segreto.txt.gpg`, non leggibile:

```
gpg -c segreto.txt
```

## esempio #3
Dopo la cifratura si può cancellare l'originale:

```
rm segreto.txt
```

## esempio #4
Subito dopo la cifratura la passphrase resta nella cache di gpg-agent. Per fargli dimenticare tutte le password:

```
gpg-connect-agent reloadagent /bye
```

## esempio #5
Con `-d` (decrypt) si legge il contenuto senza ricreare il file. Viene chiesta la passphrase:

```
gpg -d segreto.txt.gpg
```

## esempio #6
Senza opzioni gpg decifra e ricrea il file originale:

```
gpg segreto.txt.gpg
```
