# le cartelle di Linux

📺 [il video su YouTube](https://www.youtube.com/watch?v=Qg18b7dC59M) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-cosa-ce-nelle-cartelle-di-linux/)

Una guida alle cartelle principali del file system standard di Linux e al loro ruolo.
Si parte dalla radice con un elenco in colonna, poi si passa in rassegna una cartella alla volta.

## esempio #1
Elenco del contenuto della radice, una voce per riga:

```
cd /
ls -1
```

## esempio #2
Le cartelle, nell'ordine in cui compaiono nel video:

- `/bin`: i comandi fondamentali del sistema, disponibili anche all'avvio di emergenza
- `/boot`: immagini del kernel e bootloader; non va toccata
- `/dev`: le periferiche, rappresentate come file (dischi, terminali)
- `/etc`: i file di configurazione del sistema e dei servizi; contiene anche `/etc/passwd`, l'elenco degli utenti
- `/home`: le cartelle personali degli utenti
- `/lib`, `/lib64`: le librerie necessarie ai comandi di `/bin` e `/sbin`
- `/lost+found`: dove finiscono i file recuperati da un controllo del disco
- `/media`: i punti di montaggio automatici di chiavette USB e dischi esterni
- `/mnt`: un punto dove montare a mano un file system temporaneo
- `/opt`: software opzionale che non rispetta la gerarchia standard
- `/proc`: file speciali che mostrano processi e impostazioni del kernel
- `/root`: la home dell'utente root
- `/run`: dati dei processi in esecuzione, gestita dal sistema
- `/sbin`: i comandi di sistema, usati di solito da root
- `/srv`: i dati forniti dai servizi (per esempio FTP o web)
- `/sys`: interfaccia ad alcune informazioni del kernel
- `/tmp`: file temporanei, svuotata regolarmente
- `/usr`: la maggior parte del software installato (come "Programmi" di Windows)
- `/var`: i file che crescono nel tempo, come log e database

## esempio #3
Alcuni esempi citati di cosa si trova in `/var`:

```
/var/log
/var/www/html
/var/lib/mysql
```
