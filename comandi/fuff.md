# fuff

## trovare i sottodomini attivi di un dominio

```
ffuf -w subdomains.txt -u http://FUZZ.thelinuxnerd.it
```

## trovare i virtual host attivi su un determinato IP

```
ffuf -w subdomains.txt -u http://35.240.60.13 -H "HOST: FUZZ.thelinuxnerd.it"
```
