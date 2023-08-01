# drol

Usage:

```sh
drol <path-to-drol-atr> <path-to-output-html>
```

Example:
```sh
drol "/tnfs/Games/High Score Enabled/Drol.atr" "/var/www/high-scores/drol.html"
```

* Opens an inotify to Drol.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

