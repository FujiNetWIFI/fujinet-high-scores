# wayout

Usage:

```sh
wayout <path-to-wayout-atr> <path-to-output-html>
```

Example:
```sh
wayout "/tnfs/Games/High Score Enabled/Wayout.atr" "/var/www/high-scores/wayout.html"
```

* Opens an inotify to Wayout.atr
* When IS_MODIFIED, read the high score sectors extract the high scores, translate to HTML; updates the path-to-output-html.

