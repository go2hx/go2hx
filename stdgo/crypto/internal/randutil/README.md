# Module: `stdgo.crypto.internal.randutil`

[(view library index)](../../../stdgo.md)


# Overview



Package randutil contains internal randomness utilities for various
crypto packages.  

# Index


- [Variables](<#variables>)

- [`function maybeReadByte(_r:stdgo.io.Reader):Void`](<#function-maybereadbyte>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Variables


```haxe
import stdgo.crypto.internal.randutil.Randutil
```


```haxe
var _closedChan:stdgo.Chan<stdgo.crypto.internal.randutil.T__struct_0>
```


```haxe
var _closedChanOnce:stdgo.sync.Once
```


# Functions


```haxe
import stdgo.crypto.internal.randutil.Randutil
```


## function maybeReadByte


```haxe
function maybeReadByte(_r:stdgo.io.Reader):Void
```



MaybeReadByte reads a single byte from r with \~50% probability. This is used
to ensure that callers do not depend on non\-guaranteed behaviour, e.g.
assuming that rsa.GenerateKey is deterministic w.r.t. a given random stream.  


This does not affect tests that pass a stream of fixed bytes as the random
source \(e.g. a zeroReader\).  

[\(view code\)](<./Randutil.hx#L40>)


# Typedefs


```haxe
import stdgo.crypto.internal.randutil.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
};
```


