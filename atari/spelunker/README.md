# spelunker

Usage:

```sh
spelunker <path-to-spelunker-atr> <path-to-output-html>
```

Example:
```sh
spelunker "/tnfs/Games/High Score Enabled/Jawbreaker II.atr" "/var/www/high-scores/jawbreaker-ii.html"
```

* Opens an inotify to Jawbreaker II.atr
* When IS_MODIFIED, read the high score sectors (544), extract the high scores, translate to HTML; updates the path-to-output-html.

