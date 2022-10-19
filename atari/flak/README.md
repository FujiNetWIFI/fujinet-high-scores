# flak

Usage:

```sh
flak <path-to-flak-atr> <path-to-output-html>
```

Example:
```sh
flak "/tnfs/Games/High Score Enabled/Frogger.atr" "/var/www/high-scores/flak.html"
```

* Opens an inotify to Frogger.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

