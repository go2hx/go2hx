# Module: `stdgo._internal.crypto.sha512`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function new384():stdgo._internal.hash.Hash`](<#function-new384>)

- [`function new_():stdgo._internal.hash.Hash`](<#function-new_>)

- [`function new512_224():stdgo._internal.hash.Hash`](<#function-new512_224>)

- [`function new512_256():stdgo._internal.hash.Hash`](<#function-new512_256>)

- [`function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha512.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_block>)

- [`function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.sha512.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_blockgeneric>)

- [`function _consumeUint64(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt64;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-_consumeuint64>)

- [`function sum384(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sum384>)

- [`function sum512(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sum512>)

- [`function sum512_224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sum512_224>)

- [`function sum512_256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sum512_256>)

- [class T\_digest](<#class-t_digest>)

  - [`function new(?_h:stdgo.GoArray<stdgo.GoUInt64>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64, ?_function:stdgo._internal.crypto.Hash):Void`](<#t_digest-function-new>)

# Constants


```haxe
import stdgo._internal.crypto.sha512.Sha512_sum512_256
```


```haxe
final _chunk:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _init0:stdgo.GoUInt64 = ((7640891576956012808i64 : stdgo.GoUInt64))
```


```haxe
final _init0_224:stdgo.GoUInt64 = ((-8341449602262348382i64 : stdgo.GoUInt64))
```


```haxe
final _init0_256:stdgo.GoUInt64 = ((2463787394917988140i64 : stdgo.GoUInt64))
```


```haxe
final _init0_384:stdgo.GoUInt64 = ((-3766243637369397544i64 : stdgo.GoUInt64))
```


```haxe
final _init1:stdgo.GoUInt64 = ((-4942790177534073029i64 : stdgo.GoUInt64))
```


```haxe
final _init1_224:stdgo.GoUInt64 = ((8350123849800275158i64 : stdgo.GoUInt64))
```


```haxe
final _init1_256:stdgo.GoUInt64 = ((-6965556091613846334i64 : stdgo.GoUInt64))
```


```haxe
final _init1_384:stdgo.GoUInt64 = ((7105036623409894663i64 : stdgo.GoUInt64))
```


```haxe
final _init2:stdgo.GoUInt64 = ((4354685564936845355i64 : stdgo.GoUInt64))
```


```haxe
final _init2_224:stdgo.GoUInt64 = ((2160240930085379202i64 : stdgo.GoUInt64))
```


```haxe
final _init2_256:stdgo.GoUInt64 = ((2563595384472711505i64 : stdgo.GoUInt64))
```


```haxe
final _init2_384:stdgo.GoUInt64 = ((-7973340178411365097i64 : stdgo.GoUInt64))
```


```haxe
final _init3:stdgo.GoUInt64 = ((-6534734903238641935i64 : stdgo.GoUInt64))
```


```haxe
final _init3_224:stdgo.GoUInt64 = ((7466358040605728719i64 : stdgo.GoUInt64))
```


```haxe
final _init3_256:stdgo.GoUInt64 = ((-7622211418569250115i64 : stdgo.GoUInt64))
```


```haxe
final _init3_384:stdgo.GoUInt64 = ((1526699215303891257i64 : stdgo.GoUInt64))
```


```haxe
final _init4:stdgo.GoUInt64 = ((5840696475078001361i64 : stdgo.GoUInt64))
```


```haxe
final _init4_224:stdgo.GoUInt64 = ((1111592415079452072i64 : stdgo.GoUInt64))
```


```haxe
final _init4_256:stdgo.GoUInt64 = ((-7626776825740460061i64 : stdgo.GoUInt64))
```


```haxe
final _init4_384:stdgo.GoUInt64 = ((7436329637833083697i64 : stdgo.GoUInt64))
```


```haxe
final _init5:stdgo.GoUInt64 = ((-7276294671716946913i64 : stdgo.GoUInt64))
```


```haxe
final _init5_224:stdgo.GoUInt64 = ((8638871050018654530i64 : stdgo.GoUInt64))
```


```haxe
final _init5_256:stdgo.GoUInt64 = ((-4729309413028513390i64 : stdgo.GoUInt64))
```


```haxe
final _init5_384:stdgo.GoUInt64 = ((-8163818279084223215i64 : stdgo.GoUInt64))
```


```haxe
final _init6:stdgo.GoUInt64 = ((2270897969802886507i64 : stdgo.GoUInt64))
```


```haxe
final _init6_224:stdgo.GoUInt64 = ((4583966954114332360i64 : stdgo.GoUInt64))
```


```haxe
final _init6_256:stdgo.GoUInt64 = ((3098927326965381290i64 : stdgo.GoUInt64))
```


```haxe
final _init6_384:stdgo.GoUInt64 = ((-2662702644619276377i64 : stdgo.GoUInt64))
```


```haxe
final _init7:stdgo.GoUInt64 = ((6620516959819538809i64 : stdgo.GoUInt64))
```


```haxe
final _init7_224:stdgo.GoUInt64 = ((1230299281376055969i64 : stdgo.GoUInt64))
```


```haxe
final _init7_256:stdgo.GoUInt64 = ((1060366662362279074i64 : stdgo.GoUInt64))
```


```haxe
final _init7_384:stdgo.GoUInt64 = ((5167115440072839076i64 : stdgo.GoUInt64))
```


```haxe
final _magic384:stdgo.GoString = stdgo.Go.str("sha", 4)
```


```haxe
final _magic512:stdgo.GoString = (("sha\x07" : stdgo.GoString))
```


```haxe
final _magic512_224:stdgo.GoString = stdgo.Go.str("sha", 5)
```


```haxe
final _magic512_256:stdgo.GoString = stdgo.Go.str("sha", 6)
```


```haxe
final _marshaledSize:stdgo.GoInt = ((204 : stdgo.GoInt))
```


```haxe
final blockSize:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final size:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final size224:stdgo.GoUInt64 = ((28i64 : stdgo.GoUInt64))
```


```haxe
final size256:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final size384:stdgo.GoUInt64 = ((48i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.crypto.sha512.Sha512_sum512_256
```


```haxe
var __K:stdgo.Slice<stdgo.GoUInt64>
```


# Functions


```haxe
import stdgo._internal.crypto.sha512.Sha512_sum512_256
```


## function new384


```haxe
function new384():stdgo._internal.hash.Hash
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function new\_


```haxe
function new_():stdgo._internal.hash.Hash
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function new512\_224


```haxe
function new512_224():stdgo._internal.hash.Hash
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function new512\_256


```haxe
function new512_256():stdgo._internal.hash.Hash
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function \_block


```haxe
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha512.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function \_blockGeneric


```haxe
function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.sha512.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function \_consumeUint64


```haxe
function _consumeUint64(_b:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt64;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function sum384


```haxe
function sum384(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function sum512


```haxe
function sum512(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function sum512\_224


```haxe
function sum512_224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


## function sum512\_256


```haxe
function sum512_256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Sha512_sum512_256.hx#L2>)


# Classes


```haxe
import stdgo._internal.crypto.sha512.*
```


## class T\_digest


```haxe
var _function:stdgo._internal.crypto.Hash
```


```haxe
var _h:stdgo.GoArray<stdgo.GoUInt64>
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
function new(?_h:stdgo.GoArray<stdgo.GoUInt64>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64, ?_function:stdgo._internal.crypto.Hash):Void
```


[\(view code\)](<./Sha512_T_digest.hx#L8>)


