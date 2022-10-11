# serpentine

Usage:

```sh
serpentine <path-to-serpentine-atr> <path-to-output-html>
```

Example:
```sh
serpentine "/tnfs/Games/High Score Enabled/Serpentine.atr" "/var/www/high-scores/serpentine.html"
```

* Opens an inotify to Serpentine.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

