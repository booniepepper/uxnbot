# uxnbot

A bot that can evaluate [uxn](https://100r.co/site/uxn.html) code.

## Building uxnasm and uxnbot

```
cc src/uxnasm.c -o uxnasm && cc src/uxnbot.c -o uxnbot
```

## Running talk

```
uxnasm program.tal program.rom && uxnbot program.rom
```

## Misc

Inspired by d6's IRC bot here:

* https://git.phial.org/d6/nxu/src/commit/4f6b71d6419e7e91b35eba5f69d800aebed3dad9/uxnrepl.py

## TODO

1. Docker is unnecessary, we can call `uxnasm` and `uxnbot` directly, or the
   `eval-uxn` script
2. Merge/fork [the Discord interaction](https://github.com/booniepepper/dt-discord-bot/tree/uxn)
   into this repo
3. Error handling in the discord connection (factor code) should print stderr
   instead of crashing if uxnasm/uxnbot die
