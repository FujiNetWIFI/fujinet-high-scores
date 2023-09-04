# mariorun

Usage:

```sh
mariorun <path-to-mario-run-atr> <path-to-output-html>
```

Example:
```sh
mariorun "/tnfs/Games/High Score Enabled/Mario Run.atr" "/var/www/high-scores/mariorun.html"
```

* Opens an inotify to Mario Run.atr
* When IS_MODIFIED, read the high score sector 720, extract the high scores, translate to HTML; updates the path-to-output-html.

