# roptool
Find Ropgadgets for the libc of seclabs isolation-container
---
## Usage:

### 1: Get Image

Pull from Duckerhub.
```
$ docker pull lennihein/roptool
```
Or build from source.
```
$ docker build --rm -f Dockerfile -t lennihein/roptool .
```
### 2: Run as...

... Single line:
``` 
$ docker run --rm lennihein/roptool:latest 'rop ": pop rbp ; ret"'
───┬────────────────────┬─────────
 # │      Address       │ Gadget
───┼────────────────────┼─────────
 0 │ 0x00000000000253a6 │ pop rbp
───┴────────────────────┴─────────
```

... Interactive Container:
``` 
$ docker run --rm -it lennihein/roptool:latest fish
root@hostname /# rop ": pop rbp ; ret"
───┬────────────────────┬─────────
 # │      Address       │ Gadget
───┼────────────────────┼─────────
 0 │ 0x00000000000253a6 │ pop rbp
───┴────────────────────┴─────────

root@hostname /# rop ": push rax ; ret"
───┬────────────────────┬──────────
 # │      Address       │  Gadget
───┼────────────────────┼──────────
 0 │ 0x000000000003ac83 │ push rax
───┴────────────────────┴──────────
```

### Syntax

```
rop "[: ]<instruction>[ ; ret]"
```

`[: ]`: Limits the output to such gadgets that START with the given instruction.  
`[ ; ret]`: Limits the output to such gadgets that END with the given instruction.