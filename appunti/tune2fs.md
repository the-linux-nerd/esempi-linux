# tune2fs
Può capitare di dover rigenerare l'UUID di un disco (ad esempio dopo aver ripristinato un'immagine di backup che ha lo stesso UUID del disco originale); per farlo
si può utilizzare il comando:
```
tune2fs -U $(uuidgen) /dev/sdc3
```
*ATTENZIONE! Avere due dischi con lo stesso UUID può portare a errori di mount e inconsistenze, non dovreste MAI trovarvi in questa situazione!*

Inoltre può capitare che tune2fs si lamenti che il disco non è allineato, nel caso utilizzare:
```
e2fsck -f /dev/sdc3
```
# link-o-grafia
- https://askubuntu.com/questions/901290/is-it-a-problem-to-temporarily-have-the-same-uuid-for-two-partitions
