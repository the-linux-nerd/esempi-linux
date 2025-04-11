# qemu

# creazione del disco virtuale

```
qemu-img create -f qcow2 disk.qcow 10G
```

# installazione del sistema

```
qemu-system-x86_64 -m 1024 -drive file=disk.qcow,format=qcow2 -cdrom ~/Scaricati/archlinux-x86_64.iso
```

# liberare il mouse

```
CTRL + ALT + g
```
# lanciare la macchina con il networking

```
qemu-system-x86_64 -m 1024 -netdev user,id=eth0 -device virtio-net,netdev=eth0 -drive file=disk.qcow,format=qcow2 -cdrom ~/Scaricati/debian-12.10.0-amd64-netinst.iso
```

