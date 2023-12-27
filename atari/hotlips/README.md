# hotlips

Usage:

```sh
hotlips <path-to-hotlips-atr> <path-to-output-html>
```

Example:
```sh
hotlips "/tnfs/Games/High Score Enabled/Hot Lips.atr" "/var/www/high-scores/hotlips.html"
```

* Opens an inotify to Jumpman.atr
* When IS_MODIFIED, read the high score sectors (0x2ba-0x2bd), extract the high scores, translate to HTML; updates the path-to-output-html.

