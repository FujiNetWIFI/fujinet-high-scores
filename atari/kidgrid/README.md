# kidgrid

Usage:

```sh
kidgrid <path-to-kidgrid-atr> <path-to-output-html>
```

Example:
```sh
kidgrid "/tnfs/Games/High Score Enabled/Kid Grid.atr" "/var/www/high-scores/kidgrid.html"
```

* Opens an inotify to Kid Grid.atr
* When IS_MODIFIED, read the high score sectors (0x2ba-0x2bd), extract the high scores, translate to HTML; updates the path-to-output-html.

