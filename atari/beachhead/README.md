# beachhead

Usage:

```sh
beachhead <path-to-beachhead-atr> <path-to-output-html>
```

Example:
```sh
beachhead "/tnfs/Games/High Score Enabled/Beach Head.atr" "/var/www/high-scores/beachhead.html"
```

* Opens an inotify to Beach Head.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

