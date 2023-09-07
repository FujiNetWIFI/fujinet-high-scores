# zombies

Usage:

```sh
zombies <path-to-zombies-atr> <path-to-output-html>
```

Example:
```sh
zombies "/tnfs/Games/High Score Enabled/zombies.atr" "/var/www/high-scores/zombies.html"
```

* Opens an inotify to Davids Midnight Magic.atr
* When IS_MODIFIED, read the high score sectors (90), extract the high scores, translate to HTML; updates the path-to-output-html.

