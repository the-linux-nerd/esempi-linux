# Flatcar Linux

## installazione su Virtualbox
Utilizzare questo script:

```
#!/bin/bash

wget https://raw.githubusercontent.com/flatcar/scripts/main/contrib/create-coreos-vdi

chmod +x create-coreos-vdi

./create-coreos-vdi -V stable
wget https://raw.github.com/flatcar/scripts/main/contrib/create-basic-configdrive

chmod +x create-basic-configdrive
./create-basic-configdrive -H my_vm01 -S ~/.ssh/id_rsa.pub

VBoxManage clonehd coreos_production_stable.vdi my_vm01.vdi
VBoxManage modifyhd my_vm01.vdi --resize 10240
```
Questo creerà il disco virtuale e una ISO da inserire nel lettore ottico virtuale della VM per configurare l'installazione. Fare il login via SSH
con la chiave impostata, e se serve configurare la rete (vedi sotto).

Per verificare che tutto funzioni lanciare il container hello-world:

```
docker run hello-world
```

## configurazione della rete
Creare il file /etc/systemd/network/static.network:

```
vi /etc/systemd/network/static.network
```

Inserire i dettagli della rete:

```
[Match]
Name=enp0s3

[Network]
Address=192.168.56.108/24
Gateway=192.168.56.1
DNS=8.8.8.8
```

riavviare la rete:

```
sudo systemctl restart systemd-networkd
```

## aumentare lo spazio disco

```
VBoxManage clonehd flatcar_production_4152.2.3.vdi flatcar_production_4152.2.3.new.vdi --format VDI
VBoxManage modifyhd flatcar_production_4152.2.3.new.vdi --resize 20480
```
