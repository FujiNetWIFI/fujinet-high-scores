# computerwar

Usage:

```sh
computerwar <path-to-computerwar-atr> <path-to-output-html>
```

Example:
```sh
computerwar "/tnfs/Games/High Score Enabled/Congo Bongo.atr" "/var/www/high-scores/computerwar.html"
```

* Opens an inotify to Jumpman.atr
* When IS_MODIFIED, read the high score sectors (0x2ba-0x2bd), extract the high scores, translate to HTML; updates the path-to-output-html.

