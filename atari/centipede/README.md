# centipede

Usage:

```sh
centipede <path-to-centipede-atr> <path-to-output-html>
```

Example:
```sh
centipede "/tnfs/Games/High Score Enabled/Jumpman.atr" "/var/www/high-scores/centipede.html"
```

* Opens an inotify to Jumpman.atr
* When IS_MODIFIED, read the high score sectors (0x2ba-0x2bd), extract the high scores, translate to HTML; updates the path-to-output-html.

