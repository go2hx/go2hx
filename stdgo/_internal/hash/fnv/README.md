# Module: `stdgo._internal.hash.fnv`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function _appendUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appenduint32>)

- [`function _appendUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appenduint64>)

- [`function _readUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_readuint32>)

- [`function _readUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-_readuint64>)

- [`function new128():stdgo._internal.hash.Hash`](<#function-new128>)

- [`function new128a():stdgo._internal.hash.Hash`](<#function-new128a>)

- [`function new32():stdgo._internal.hash.Hash32`](<#function-new32>)

- [`function new32a():stdgo._internal.hash.Hash32`](<#function-new32a>)

- [`function new64():stdgo._internal.hash.Hash64`](<#function-new64>)

- [`function new64a():stdgo._internal.hash.Hash64`](<#function-new64a>)

- [typedef T\_sum128](<#typedef-t_sum128>)

- [typedef T\_sum128a](<#typedef-t_sum128a>)

- [typedef T\_sum32](<#typedef-t_sum32>)

- [typedef T\_sum32a](<#typedef-t_sum32a>)

- [typedef T\_sum64](<#typedef-t_sum64>)

- [typedef T\_sum64a](<#typedef-t_sum64a>)

# Constants


```haxe
import stdgo._internal.hash.fnv.Fnv_new64a
```


```haxe
final _magic128:stdgo.GoString = stdgo.Go.str("fnv", 5)
```


```haxe
final _magic128a:stdgo.GoString = stdgo.Go.str("fnv", 6)
```


```haxe
final _magic32:stdgo.GoString = stdgo.Go.str("fnv", 1)
```


```haxe
final _magic32a:stdgo.GoString = stdgo.Go.str("fnv", 2)
```


```haxe
final _magic64:stdgo.GoString = stdgo.Go.str("fnv", 3)
```


```haxe
final _magic64a:stdgo.GoString = stdgo.Go.str("fnv", 4)
```


```haxe
final _marshaledSize128:stdgo.GoInt = ((20 : stdgo.GoInt))
```


```haxe
final _marshaledSize32:stdgo.GoInt = ((8 : stdgo.GoInt))
```


```haxe
final _marshaledSize64:stdgo.GoInt = ((12 : stdgo.GoInt))
```


```haxe
final _offset128Higher:stdgo.GoUInt64 = ((7809847782465536322i64 : stdgo.GoUInt64))
```


```haxe
final _offset128Lower:stdgo.GoUInt64 = ((7113472399480571277i64 : stdgo.GoUInt64))
```


```haxe
final _offset32:stdgo.GoUInt64 = ((2166136261i64 : stdgo.GoUInt64))
```


```haxe
final _offset64:stdgo.GoUInt64 = ((-3750763034362895579i64 : stdgo.GoUInt64))
```


```haxe
final _prime128Lower:stdgo.GoUInt64 = ((315i64 : stdgo.GoUInt64))
```


```haxe
final _prime128Shift:stdgo.GoUInt64 = ((24i64 : stdgo.GoUInt64))
```


```haxe
final _prime32:stdgo.GoUInt64 = ((16777619i64 : stdgo.GoUInt64))
```


```haxe
final _prime64:stdgo.GoUInt64 = ((1099511628211i64 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.hash.fnv.Fnv_new64a
```


## function \_appendUint32


```haxe
function _appendUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function \_appendUint64


```haxe
function _appendUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function \_readUint32


```haxe
function _readUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function \_readUint64


```haxe
function _readUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function new128


```haxe
function new128():stdgo._internal.hash.Hash
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function new128a


```haxe
function new128a():stdgo._internal.hash.Hash
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function new32


```haxe
function new32():stdgo._internal.hash.Hash32
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function new32a


```haxe
function new32a():stdgo._internal.hash.Hash32
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function new64


```haxe
function new64():stdgo._internal.hash.Hash64
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


## function new64a


```haxe
function new64a():stdgo._internal.hash.Hash64
```


[\(view code\)](<./Fnv_new64a.hx#L2>)


# Typedefs


```haxe
import stdgo._internal.hash.fnv.*
```


## typedef T\_sum128


```haxe
typedef T_sum128 = stdgo.GoArray<stdgo.GoUInt64>;
```


## typedef T\_sum128a


```haxe
typedef T_sum128a = stdgo.GoArray<stdgo.GoUInt64>;
```


## typedef T\_sum32


```haxe
typedef T_sum32 = stdgo.GoUInt32;
```


## typedef T\_sum32a


```haxe
typedef T_sum32a = stdgo.GoUInt32;
```


## typedef T\_sum64


```haxe
typedef T_sum64 = stdgo.GoUInt64;
```


## typedef T\_sum64a


```haxe
typedef T_sum64a = stdgo.GoUInt64;
```


