# snokie

Usage:

```sh
snokie <path-to-snokie-atr> <path-to-output-html>
```

Example:
```sh
snokie "/tnfs/Games/High Score Enabled/Frogger.atr" "/var/www/high-scores/snokie.html"
```

* Opens an inotify to Frogger.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

