# Module: `stdgo._internal.crypto.md5`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function new_():stdgo._internal.hash.Hash`](<#function-new_>)

- [`function _block(_dig:stdgo.Ref<stdgo._internal.crypto.md5.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_block>)

- [`function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.md5.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_blockgeneric>)

- [`function _consumeUint32(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-_consumeuint32>)

- [`function _consumeUint64(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt64;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-_consumeuint64>)

- [`function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sum>)

- [class T\_digest](<#class-t_digest>)

  - [`function new(?_s:stdgo.GoArray<stdgo.GoUInt32>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64):Void`](<#t_digest-function-new>)

# Constants


```haxe
import stdgo._internal.crypto.md5.Md5_sum
```


```haxe
final _haveAsm:Bool = false
```


```haxe
final _init0:stdgo.GoUInt64 = ((1732584193i64 : stdgo.GoUInt64))
```


```haxe
final _init1:stdgo.GoUInt64 = ((4023233417i64 : stdgo.GoUInt64))
```


```haxe
final _init2:stdgo.GoUInt64 = ((2562383102i64 : stdgo.GoUInt64))
```


```haxe
final _init3:stdgo.GoUInt64 = ((271733878i64 : stdgo.GoUInt64))
```


```haxe
final _magic:stdgo.GoString = stdgo.Go.str("md5", 1)
```


```haxe
final _marshaledSize:stdgo.GoInt = ((92 : stdgo.GoInt))
```


```haxe
final blockSize:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final size:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.crypto.md5.Md5_sum
```


## function new\_


```haxe
function new_():stdgo._internal.hash.Hash
```


[\(view code\)](<./Md5_sum.hx#L2>)


## function \_block


```haxe
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.md5.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Md5_sum.hx#L2>)


## function \_blockGeneric


```haxe
function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.md5.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Md5_sum.hx#L2>)


## function \_consumeUint32


```haxe
function _consumeUint32(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Md5_sum.hx#L2>)


## function \_consumeUint64


```haxe
function _consumeUint64(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt64;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Md5_sum.hx#L2>)


## function sum


```haxe
function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Md5_sum.hx#L2>)


# Classes


```haxe
import stdgo._internal.crypto.md5.*
```


## class T\_digest


```haxe
var _len:stdgo.GoUInt64
```


```haxe
var _nx:stdgo.GoInt
```


```haxe
var _s:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _x:stdgo.GoArray<stdgo.GoUInt8>
```


### T\_digest function new


```haxe
function new(?_s:stdgo.GoArray<stdgo.GoUInt32>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64):Void
```


[\(view code\)](<./Md5_T_digest.hx#L7>)


