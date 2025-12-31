# popeye

Usage:

```sh
popeye <path-to-popeye-atr> <path-to-output-html>
```

Example:
```sh
popeye "/tnfs/Games/High Score Enabled/Popeye.atr" "/var/www/high-scores/popeye.html"
```

* Opens an inotify to Popeye.atr
* When IS_MODIFIED, read the high score sectors (0x2ba-0x2bd), extract the high scores, translate to HTML; updates the path-to-output-html.

