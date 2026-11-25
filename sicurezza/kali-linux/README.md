# installiamo Kali Linux

📺 [il video su YouTube](https://www.youtube.com/watch?v=BNs_g3Uad00) · 📝 [l'articolo su www.thelinuxnerd.it](https://www.thelinuxnerd.it/gnu-linux-installiamo-kali-linux/)

Kali Linux è la distribuzione specializzata in sicurezza informatica. In questa puntata la installiamo
in una macchina virtuale con VirtualBox: è tutta grafica, quindi qui ci sono le impostazioni usate
nel video, non i comandi. Il percorso è quello della puntata su Debian, di cui Kali è una derivata.

## l'ISO
Da kali.org, sezione download: l'immagine **installer** a 64 bit.

## la macchina virtuale

- nome: kali-privacy
- memoria: 4 GB di RAM
- processori: 4 CPU
- disco: da 25 a 40 GB, allocato dinamicamente
- rete: oltre alla scheda di default, una seconda interfaccia **host-only**

## l'installazione
Installazione testuale, non grafica. Le scelte, nell'ordine:

- lingua italiana e tastiera italiana
- nome della macchina: kali-privacy
- rete manuale: IP statico della rete host-only con finale .115, gateway l'host, DNS di Google
- utente e una password robusta
- partizionamento guidato, tutto il disco
- software: le spunte di default
- bootloader GRUB su /dev/sda

Al riavvio si toglie l'ISO, se serve, e si entra con l'utente appena creato.
