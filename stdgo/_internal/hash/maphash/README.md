# Module: `stdgo._internal.hash.maphash`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function _leUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_leuint32>)

- [`function _leUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-_leuint64>)

- [`function _mix(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_mix>)

- [`function _r3(_p:stdgo.Slice<stdgo.GoUInt8>, _k:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_r3>)

- [`function _r4(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-_r4>)

- [`function _r8(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-_r8>)

- [`function _randUint64():stdgo.GoUInt64`](<#function-_randuint64>)

- [`function _rthash(_buf:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_rthash>)

- [`function _rthashString(_s:stdgo.GoString, _state:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_rthashstring>)

- [`function _wyhash(_key:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.GoUInt64, _len:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_wyhash>)

- [`function bytes(_seed:stdgo._internal.hash.maphash.Seed, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-bytes>)

- [`function makeSeed():stdgo._internal.hash.maphash.Seed`](<#function-makeseed>)

- [`function string(_seed:stdgo._internal.hash.maphash.Seed, _s:stdgo.GoString):stdgo.GoUInt64`](<#function-string>)

- [class Hash](<#class-hash>)

  - [`function new(?__1:stdgo.GoArray<():Void>, ?_seed:stdgo._internal.hash.maphash.Seed, ?_state:stdgo._internal.hash.maphash.Seed, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_n:stdgo.GoInt):Void`](<#hash-function-new>)

- [class Seed](<#class-seed>)

  - [`function new(?_s:stdgo.GoUInt64):Void`](<#seed-function-new>)

# Constants


```haxe
import stdgo._internal.hash.maphash.Maphash_string
```


```haxe
final _bufSize:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _m1:stdgo.GoUInt64 = ((-6884282663029611473i64 : stdgo.GoUInt64))
```


```haxe
final _m2:stdgo.GoUInt64 = ((-1800455987208640293i64 : stdgo.GoUInt64))
```


```haxe
final _m3:stdgo.GoUInt64 = ((-8161530843051276573i64 : stdgo.GoUInt64))
```


```haxe
final _m4:stdgo.GoUInt64 = ((6384245875588680899i64 : stdgo.GoUInt64))
```


```haxe
final _m5:stdgo.GoUInt64 = ((2129725606500045391i64 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.hash.maphash.Maphash_string
```


## function \_leUint32


```haxe
function _leUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_leUint64


```haxe
function _leUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_mix


```haxe
function _mix(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_r3


```haxe
function _r3(_p:stdgo.Slice<stdgo.GoUInt8>, _k:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_r4


```haxe
function _r4(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_r8


```haxe
function _r8(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_randUint64


```haxe
function _randUint64():stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_rthash


```haxe
function _rthash(_buf:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_rthashString


```haxe
function _rthashString(_s:stdgo.GoString, _state:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function \_wyhash


```haxe
function _wyhash(_key:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.GoUInt64, _len:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function bytes


```haxe
function bytes(_seed:stdgo._internal.hash.maphash.Seed, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function makeSeed


```haxe
function makeSeed():stdgo._internal.hash.maphash.Seed
```


[\(view code\)](<./Maphash_string.hx#L2>)


## function string


```haxe
function string(_seed:stdgo._internal.hash.maphash.Seed, _s:stdgo.GoString):stdgo.GoUInt64
```


[\(view code\)](<./Maphash_string.hx#L2>)


# Classes


```haxe
import stdgo._internal.hash.maphash.*
```


## class Hash


```haxe
var __1:stdgo.GoArray<():Void>
```


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _n:stdgo.GoInt
```


```haxe
var _seed:stdgo._internal.hash.maphash.Seed
```


```haxe
var _state:stdgo._internal.hash.maphash.Seed
```


### Hash function new


```haxe
function new(?__1:stdgo.GoArray<():Void>, ?_seed:stdgo._internal.hash.maphash.Seed, ?_state:stdgo._internal.hash.maphash.Seed, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_n:stdgo.GoInt):Void
```


[\(view code\)](<./Maphash_Hash.hx#L9>)


## class Seed


```haxe
var _s:stdgo.GoUInt64
```


### Seed function new


```haxe
function new(?_s:stdgo.GoUInt64):Void
```


[\(view code\)](<./Maphash_Seed.hx#L4>)


