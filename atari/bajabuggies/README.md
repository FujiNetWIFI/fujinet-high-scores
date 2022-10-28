# bajabuggies

Usage:

```sh
bajabuggies <path-to-bajabuggies-atr> <path-to-output-html>
```

Example:
```sh
bajabuggies "/tnfs/Games/High Score Enabled/Frogger.atr" "/var/www/high-scores/bajabuggies.html"
```

* Opens an inotify to Frogger.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

