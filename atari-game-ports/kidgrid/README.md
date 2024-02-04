# kidgrid

Notes for adding hiscore to Kid Grid (1982, Tronix)

This game has a relocator that shifts things down slightly, at init, which makes tracing from a disassembly an irritation.

Game Over before attract at $3EB7 in memory, but past L4D4C in disassembly. But at least it's intact!

```
3EB7: 20 2D 3A        JSR $3A2D
```

So we need to JSR $3A2D and then jump back to $3EBA

