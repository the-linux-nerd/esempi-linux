# fuff

## trovare i sottodomini attivi di un dominio

```
ffuf -w subdomains.txt -u http://FUZZ.thelinuxnerd.it
```
poi per trovare l'indirizzo IP utilizzare il comando host:
```
host mail.thelinuxnerd.it
```
## trovare i virtual host attivi su un determinato IP

```
ffuf -w subdomains.txt -u http://35.240.60.13 -H "HOST: FUZZ.thelinuxnerd.it"
```
se necessario filtrando in qualche modo l'output:
```
ffuf -w subdomains.txt -u http://79.98.45.126 -H "HOST: FUZZ.thelinuxnerd.it" -fw 898
```

# link-o-grafia
- https://github.com/ffuf/ffuf
- https://www.freecodecamp.org/news/virtual-host-enumeration-tutorial/
