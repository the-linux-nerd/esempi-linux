# docker

## avviare un container semplice

```
docker run hello-world
```

## avviare un container che espone porte di rete

```
docker run -dit -p 8080:80 docker/welcome-to-docker
```

opzione    | funzione
-----------|--------------------------------
-d         | avvia il container in background (detach)
-i         | modalità interattiva, mantiene aperto STDIN
-t         | alloca uno pseudoterminale (tty)
-p         | pubblica una porta

## avviare un container montando un volume

```
docker run -dit -p 80:80 -v /root/glis/config/:/var/www/html/src/config/ext/:ro istricesrl/glisdev:20250510225730
```

opzione    | funzione
-----------|--------------------------------
-v         | monta una cartella dell'host sul filesystem del guest

## lanciare una shell all'interno del container

```
docker exec -it container_id /bin/bash
```

## visualizzare le immagini disponibili

```
docker image ls
```

## visualizzare i container in esecuzione

```
docker container ls
```

## fermare un container

```
docker stop container_id
```

## eliminare le immagini inutilizzate

```
docker image prune --all --force
```
