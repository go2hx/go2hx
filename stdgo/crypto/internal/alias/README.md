# Module: `stdgo.crypto.internal.alias`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [class Alias](<#class-alias>)

  - [`function anyOverlap(_x:Array<UInt>, _y:Array<UInt>):Bool`](<#alias-function-anyoverlap>)

  - [`function inexactOverlap(_x:Array<UInt>, _y:Array<UInt>):Bool`](<#alias-function-inexactoverlap>)

# Classes


```haxe
import
```


## class Alias


```
Package alias implements memory aliasing tests.
    This code also exists as golang.org/x/crypto/internal/alias.
```
### Alias function anyOverlap


```haxe
function anyOverlap(_x:Array<UInt>, _y:Array<UInt>):Bool
```


```
AnyOverlap reports whether x and y share memory at any (not necessarily
        corresponding) index. The memory beyond the slice length is ignored.
```
[\(view code\)](<./Alias.hx#L11>)


### Alias function inexactOverlap


```haxe
function inexactOverlap(_x:Array<UInt>, _y:Array<UInt>):Bool
```


```
InexactOverlap reports whether x and y share memory at any non-corresponding
        index. The memory beyond the slice length is ignored. Note that x and y can
        have different lengths and still not have any inexact overlap.
```

InexactOverlap can be used to implement the requirements of the crypto/cipher
AEAD, Block, BlockMode and Stream interfaces.  

[\(view code\)](<./Alias.hx#L24>)


