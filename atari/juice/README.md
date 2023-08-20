# juice

Usage:

```sh
juice <path-to-juice-atr> <path-to-output-html>
```

Example:
```sh
juice "/tnfs/Games/High Score Enabled/Frogger.atr" "/var/www/high-scores/juice.html"
```

* Opens an inotify to Frogger.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

