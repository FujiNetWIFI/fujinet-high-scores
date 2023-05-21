# smol snek

Usage:

```sh
smolsnek <path-to-smolsnek-atr> <path-to-output-html>
```

Example:
```sh
smolsnek "/tnfs/Games/High Score Enabled/smolsnek-fn-version.atr" "/var/www/high-scores/smolsnek.html"
```

* Opens an inotify to smolsnek-fn-version.atr
* When IS_MODIFIED, read the high score sector, extract the high scores, translate to HTML; updates the path-to-output-html.

