# todnc

Usage:

```sh
todnc <path-to-todnc-atr> <path-to-output-html>
```

Example:
```sh
todnc "/tnfs/Games/High Score Enabled/Tales of Dragons and Cavemen (req 64K).atr" "/var/www/high-scores/todnc.html"
```

* Opens an inotify to Tales of Dragons and Cavemen (req 64K).atr
* When IS_MODIFIED, read the high score sectors extract the high scores, translate to HTML; updates the path-to-output-html.

