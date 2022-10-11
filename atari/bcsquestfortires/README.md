# bcsquestfortires

Usage:

```sh
bcsquestfortires <path-to-bcsquestfortires-atr> <path-to-output-html>
```

Example:
```sh
bcsquestfortires "/tnfs/Games/High Score Enabled/Jumpman.atr" "/var/www/high-scores/bcsquestfortires.html"
```

* Opens an inotify to Jumpman.atr
* When IS_MODIFIED, read the high score sectors (0x2ba-0x2bd), extract the high scores, translate to HTML; updates the path-to-output-html.

