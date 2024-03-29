## Building uxnasm and uxncli

```
cc src/uxnasm.c -o uxnasm && cc src/uxnbot.c -o uxnbot
```

## Running talk

```
uxnasm program.tal program.rom && uxnbot program.rom
```

Inspired by d6's IRC bot here:

* https://git.phial.org/d6/nxu/src/commit/4f6b71d6419e7e91b35eba5f69d800aebed3dad9/uxnrepl.py

Discord interaction is defined here:

* https://github.com/booniepepper/dt-discord-bot/tree/uxn
