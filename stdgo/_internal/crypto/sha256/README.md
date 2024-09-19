# Module: `stdgo._internal.crypto.sha256`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function new224():stdgo._internal.hash.Hash`](<#function-new224>)

- [`function new_():stdgo._internal.hash.Hash`](<#function-new_>)

- [`function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha256.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_block>)

- [`function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.sha256.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_blockgeneric>)

- [`function _consumeUint32(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-_consumeuint32>)

- [`function _consumeUint64(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt64;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-_consumeuint64>)

- [`function sum224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sum224>)

- [`function sum256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sum256>)

- [class T\_digest](<#class-t_digest>)

  - [`function new(?_h:stdgo.GoArray<stdgo.GoUInt32>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64, ?_is224:Bool):Void`](<#t_digest-function-new>)

# Constants


```haxe
import stdgo._internal.crypto.sha256.Sha256_sum256
```


```haxe
final _chunk:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final _init0:stdgo.GoUInt64 = ((1779033703i64 : stdgo.GoUInt64))
```


```haxe
final _init0_224:stdgo.GoUInt64 = ((3238371032i64 : stdgo.GoUInt64))
```


```haxe
final _init1:stdgo.GoUInt64 = ((3144134277i64 : stdgo.GoUInt64))
```


```haxe
final _init1_224:stdgo.GoUInt64 = ((914150663i64 : stdgo.GoUInt64))
```


```haxe
final _init2:stdgo.GoUInt64 = ((1013904242i64 : stdgo.GoUInt64))
```


```haxe
final _init2_224:stdgo.GoUInt64 = ((812702999i64 : stdgo.GoUInt64))
```


```haxe
final _init3:stdgo.GoUInt64 = ((2773480762i64 : stdgo.GoUInt64))
```


```haxe
final _init3_224:stdgo.GoUInt64 = ((4144912697i64 : stdgo.GoUInt64))
```


```haxe
final _init4:stdgo.GoUInt64 = ((1359893119i64 : stdgo.GoUInt64))
```


```haxe
final _init4_224:stdgo.GoUInt64 = ((4290775857i64 : stdgo.GoUInt64))
```


```haxe
final _init5:stdgo.GoUInt64 = ((2600822924i64 : stdgo.GoUInt64))
```


```haxe
final _init5_224:stdgo.GoUInt64 = ((1750603025i64 : stdgo.GoUInt64))
```


```haxe
final _init6:stdgo.GoUInt64 = ((528734635i64 : stdgo.GoUInt64))
```


```haxe
final _init6_224:stdgo.GoUInt64 = ((1694076839i64 : stdgo.GoUInt64))
```


```haxe
final _init7:stdgo.GoUInt64 = ((1541459225i64 : stdgo.GoUInt64))
```


```haxe
final _init7_224:stdgo.GoUInt64 = ((3204075428i64 : stdgo.GoUInt64))
```


```haxe
final _magic224:stdgo.GoString = stdgo.Go.str("sha", 2)
```


```haxe
final _magic256:stdgo.GoString = stdgo.Go.str("sha", 3)
```


```haxe
final _marshaledSize:stdgo.GoInt = ((108 : stdgo.GoInt))
```


```haxe
final blockSize:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final size:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final size224:stdgo.GoUInt64 = ((28i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.crypto.sha256.Sha256_sum256
```


```haxe
var __K:stdgo.Slice<stdgo.GoUInt32>
```


# Functions


```haxe
import stdgo._internal.crypto.sha256.Sha256_sum256
```


## function new224


```haxe
function new224():stdgo._internal.hash.Hash
```


[\(view code\)](<./Sha256_sum256.hx#L2>)


## function new\_


```haxe
function new_():stdgo._internal.hash.Hash
```


[\(view code\)](<./Sha256_sum256.hx#L2>)


## function \_block


```haxe
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha256.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Sha256_sum256.hx#L2>)


## function \_blockGeneric


```haxe
function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.sha256.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Sha256_sum256.hx#L2>)


## function \_consumeUint32


```haxe
function _consumeUint32(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Sha256_sum256.hx#L2>)


## function \_consumeUint64


```haxe
function _consumeUint64(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt64;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Sha256_sum256.hx#L2>)


## function sum224


```haxe
function sum224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Sha256_sum256.hx#L2>)


## function sum256


```haxe
function sum256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Sha256_sum256.hx#L2>)


# Classes


```haxe
import stdgo._internal.crypto.sha256.*
```


## class T\_digest


```haxe
var _h:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _is224:Bool
```


```haxe
var _len:stdgo.GoUInt64
```


```haxe
var _nx:stdgo.GoInt
```


```haxe
var _x:stdgo.GoArray<stdgo.GoUInt8>
```


### T\_digest function new


```haxe
function new(?_h:stdgo.GoArray<stdgo.GoUInt32>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64, ?_is224:Bool):Void
```


[\(view code\)](<./Sha256_T_digest.hx#L8>)


