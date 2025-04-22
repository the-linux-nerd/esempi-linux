# la cartella /dev
La cartella /dev contiene file che rappresentano periferiche collegate al computer. I file che rappresentano i device sono
divisi in device a caratteri e device a blocchi; la differenza fra i due tipi risiede soprattutto nel fatto che i device a caratteri
ricevono o inviano singoli byte (o caratteri) mentre i device a blocchi ricevono o inviano interi blocchi di byte.

Nella prima categoria troviamo ad esempio le porte seriali, nella seconda i dischi rigidi e le porte USB. Un file a blocchi è
identificato da una lettera b all'inizio della stringa dei permessi, mentre una c in quella posizione indica un file a caratteri.

# pseudo devices
Le pseudo devices sono file che non rappresentano un device fisico collegato al computer, ma qualche tipo di device logico. Le pseudo
device più comuni sono:

- /dev/null una sorta di buco nero che distrugge qualsiasi cosa ci mettete dentro
- /dev/zero restituisce una serie infinita di byte nulli quando la leggete
- /dev/random restituisce una serie infinita di dati casuali
- /dev/urandom come sopra, ma più veloce e meno crittograficamente sicura
- /dev/full restituisce sempre l'errore "disco pieno" quando provate a scriverci su
- /dev/ptmx lo pseudo-terminale master, usato per creare gli pseudo terminali
- /dev/tty* i terminali virtuali generici presenti sulla macchina
- /dev/pts/* gli specifici pseudo terminali slave, individuati per nome
- /dev/stdin lo standard input
- /dev/stdout lo standard output
- /dev/stderr lo standard error
- /dev/shm/* i segmenti di memoria condivisa
- /dev/loopX file montati come device a blocchi (ad es. un disco fisso virtuale creato da un file)

# i dischi rigidi
Fra i file più importanti presenti in /dev ci sono quelli che rappresentano i dischi e le partizioni presenti sul sistema. In generale
i file che rappresentano dischi utilizzano la nomenclatura /dev/sd* (ad es. /dev/sda per il primo disco, /dev/sdb per il secondo,
e così via) mentre per le partizioni viene aggiunto un numero (quindi /dev/sda1 è la prima partizione del primo disco, eccetera).

