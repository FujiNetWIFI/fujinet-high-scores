# cavernsofmars

Usage:

```sh
cavernsofmars <path-to-cavernsofmars-atr> <path-to-output-html>
```

Example:
```sh
cavernsofmars "/tnfs/Games/High Score Enabled/Caverns of Mars.atr" "/var/www/high-scores/cavernsofmars.html"
```

* Opens an inotify to Jumpman.atr
* When IS_MODIFIED, read the high score sectors (0x2ba-0x2bd), extract the high scores, translate to HTML; updates the path-to-output-html.

