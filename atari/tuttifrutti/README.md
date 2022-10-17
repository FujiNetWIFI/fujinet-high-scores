# frogger

Usage:

```sh
frogger <path-to-frogger-atr> <path-to-output-html>
```

Example:
```sh
frogger "/tnfs/Games/High Score Enabled/Frogger.atr" "/var/www/high-scores/frogger.html"
```

* Opens an inotify to Frogger.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

