# Module: `stdgo.crypto.internal`

[(view library index)](../../stdgo.md)


# Overview


```
Package randutil contains internal randomness utilities for various
    crypto packages.
```
# Index


- [class Randutil](<#class-randutil>)

  - [`function maybeReadByte(r:stdgo._internal.io.Reader):Void`](<#randutil-function-maybereadbyte>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Classes


```haxe
import stdgo.crypto.internal.*
```


## class Randutil


### Randutil function maybeReadByte


```haxe
function maybeReadByte(r:stdgo._internal.io.Reader):Void
```


```
MaybeReadByte reads a single byte from r with ~50% probability. This is used
        to ensure that callers do not depend on non-guaranteed behaviour, e.g.
        assuming that rsa.GenerateKey is deterministic w.r.t. a given random stream.
```

This does not affect tests that pass a stream of fixed bytes as the random
source \(e.g. a zeroReader\).  

[\(view code\)](<./Randutil.hx#L17>)


# Typedefs


```haxe
import stdgo.crypto.internal.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.crypto.internal.randutil.T__struct_0;
```


