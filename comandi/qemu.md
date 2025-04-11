# qemu

# creazione del disco virtuale

```
qemu-img create -f qcow2 disk.qcow 10G
```

# installazione del sistema

```
qemu-system-x86_64 -m 1024 -drive file=disk.qcow,format=qcow2 -cdrom ~/Scaricati/archlinux-x86_64.iso
```
