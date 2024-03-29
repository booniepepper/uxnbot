A docker container based on [uxn-unstable](https://search.nixos.org/packages?show=uxn&type=packages)
and NixOS.

The approach is adapted from this Uxn IRC bot:
* https://git.phial.org/d6/nxu/src/commit/4f6b71d6419e7e91b35eba5f69d800aebed3dad9/uxnrepl.py

## Building uxnasm and uxncli

```
cc src/uxnasm.c -o uxnasm && cc src/uxnbot.c -o uxnbot
```

## Running talk

```
uxnasm program.tal program.rom && uxnbot program.rom
```