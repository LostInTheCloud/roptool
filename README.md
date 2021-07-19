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
$ docker build --rm -f Dockerfile -t lennihein/roptool:latest .
```
### 2: Run as...

... Single line:
``` 
$ docker run --rm lennihein/roptool:latest fish -c "rop \": pop rbp ; ret\""
───┬────────────────────┬─────────
 # │      Address       │ Gadget
───┼────────────────────┼─────────
 0 │ 0x00000000000253a6 │ pop rbp
───┴────────────────────┴─────────
```

... Interactive Container:
``` 
$ docker run --rm -it lennihein/roptool:latest
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