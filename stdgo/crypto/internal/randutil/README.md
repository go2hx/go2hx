# Module: `stdgo.crypto.internal.randutil`

[(view library index)](../../../stdgo.md)


# Overview



Package randutil contains internal randomness utilities for various
crypto packages.  

# Index


- [`function maybeReadByte(r:stdgo._internal.io.Reader):Void`](<#function-maybereadbyte>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

# Functions


```haxe
import stdgo.crypto.internal.randutil.Randutil
```


## function maybeReadByte


```haxe
function maybeReadByte(r:stdgo._internal.io.Reader):Void
```



MaybeReadByte reads a single byte from r with \~50% probability. This is used
to ensure that callers do not depend on non\-guaranteed behaviour, e.g.
assuming that rsa.GenerateKey is deterministic w.r.t. a given random stream.  


This does not affect tests that pass a stream of fixed bytes as the random
source \(e.g. a zeroReader\).  

[\(view code\)](<./Randutil.hx#L18>)


# Typedefs


```haxe
import stdgo.crypto.internal.randutil.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.crypto.internal.randutil.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


