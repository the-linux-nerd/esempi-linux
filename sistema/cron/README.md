# cron
Il demone cron esegue ogni minuto: controlla i file di pianificazione e lancia i compiti in programma.
Serve per operazioni ripetitive e cicliche. Funziona sia per il sistema sia per i singoli utenti.

## esempio #1
Il file principale è `/etc/crontab`. Contiene variabili d'ambiente e righe di pianificazione:

```
cat /etc/crontab
```

## esempio #2
Ogni riga ha cinque campi per il tempo, poi l'utente e il comando:

```
# m h dom mon dow user command
17 *	* * *	root	cd / && run-parts --report /etc/cron.hourly
```

- minuti: 0-59
- ore: 0-23
- giorno del mese: 1-31
- mese: 1-12
- giorno della settimana: 0-7 (0 e 7 sono la domenica)

## esempio #3
Le cartelle `/etc/cron.hourly`, `cron.daily`, `cron.weekly` e `cron.monthly` contengono script eseguiti con `run-parts`. Per eseguire uno script ogni giorno basta metterlo in `/etc/cron.daily`:

```
ls /etc/cron.daily
```

## esempio #4
Per orari diversi si crea un crontab aggiuntivo in `/etc/cron.d`. Qui scrive "ciao" ogni giorno alle 15:11 (formato `m h dom mon dow user command`):

```
11 15 * * * root echo ciao > /var/esempio/cron1.log
```

## esempio #5
Ogni 2 minuti con lo slash:

```
*/2 * * * * root echo ciao > /var/esempio/cron1.log
```

## esempio #6
Un intervallo di ore con il trattino: ogni 2 minuti, ma solo dalle 14 alle 16:

```
*/2 14-16 * * * root echo ciao > /var/esempio/cron1.log
```

## esempio #7
Un elenco con le virgole: come sopra, solo il giovedì (4) e il sabato (6):

```
*/2 14-16 * * 4,6 root echo ciao > /var/esempio/cron1.log
```

## esempio #8
Con `>>` si aggiunge al file invece di sovrascriverlo. Con `tail -f` si segue il file mentre cresce:

```
*/2 14-16 * * 4,6 root date >> /var/esempio/cron1.log
tail -f /var/esempio/cron1.log
```

## esempio #9
Ogni utente ha il suo crontab, senza la colonna dell'utente. Elenco del proprio:

```
crontab -l
```

## esempio #10
Modifica del proprio crontab, ogni minuto scrive la data in un file:

```
crontab -e
```

```
* * * * * date >> /var/esempio/cron2.log
```

## esempio #11
I crontab degli utenti sono in `/var/spool/cron/crontabs`, un file per utente:

```
ls /var/spool/cron/crontabs
```

## esempio #12
Salvare il crontab in un file:

```
crontab -l > /var/esempio/cron-save.txt
```

## esempio #13
Rimuovere il crontab:

```
crontab -r
```

## esempio #14
Reimportarlo da un file (sovrascrive quello esistente):

```
crontab /var/esempio/cron-save.txt
```

## esercizio
Scrivere un crontab che scrive "Buon Natale" ogni 25 dicembre in un file.
