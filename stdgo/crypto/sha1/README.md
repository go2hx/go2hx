# Module: `stdgo.crypto.sha1`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.B>, _size:stdgo.GoInt):Void`](<#function-_benchmarksize>)

- [`function _block(_dig:stdgo.Ref<stdgo.crypto.sha1.T_digest>, _p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_block>)

- [`function _blockGeneric(_dig:stdgo.Ref<stdgo.crypto.sha1.T_digest>, _p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_blockgeneric>)

- [`function _boringNewSHA1():Void`](<#function-_boringnewsha1>)

- [`function _boringSHA1(_0:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_boringsha1>)

- [`function _boringUnreachable():Void`](<#function-_boringunreachable>)

- [`function _consumeUint32(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_consumeuint32>)

- [`function _consumeUint64(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_consumeuint64>)

- [`function _safeSum(_h:stdgo._internal.hash.Hash):Void`](<#function-_safesum>)

- [`function benchmarkHash1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkhash1k>)

- [`function benchmarkHash320Bytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkhash320bytes>)

- [`function benchmarkHash8Bytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkhash8bytes>)

- [`function benchmarkHash8K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkhash8k>)

- [`function new_():Void`](<#function-new_>)

- [`function sum(_data:stdgo.Slice<stdgo.GoByte>):Void`](<#function-sum>)

- [`function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testallocations>)

- [`function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testblockgeneric>)

- [`function testBlockSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testblocksize>)

- [`function testGolden(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgolden>)

- [`function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgoldenmarshal>)

- [`function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlargehashes>)

- [`function testSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsize>)

- [typedef T\_digest](<#typedef-t_digest>)

- [typedef T\_digest\_asInterface](<#typedef-t_digest_asinterface>)

- [typedef T\_digest\_static\_extension](<#typedef-t_digest_static_extension>)

- [typedef T\_sha1Test](<#typedef-t_sha1test>)

- [typedef T\_unmarshalTest](<#typedef-t_unmarshaltest>)

# Variables


```haxe
import stdgo.crypto.sha1.Sha1
```


```haxe
var _:Dynamic
```


```haxe
var __K0:Dynamic
```


```haxe
var __K1:Dynamic
```


```haxe
var __K2:Dynamic
```


```haxe
var __K3:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _bench:Dynamic
```


```haxe
var _boringEnabled:Dynamic
```


```haxe
var _buf:Dynamic
```


```haxe
var _chunk:Dynamic
```


```haxe
var _golden:Dynamic
```


```haxe
var _init0:Dynamic
```


```haxe
var _init1:Dynamic
```


```haxe
var _init2:Dynamic
```


```haxe
var _init3:Dynamic
```


```haxe
var _init4:Dynamic
```


```haxe
var _largeUnmarshalTests:Dynamic
```


```haxe
var _magic:Dynamic
```


```haxe
var _marshaledSize:Dynamic
```


```haxe
var blockSize:Dynamic
```


```haxe
var size:Dynamic
```


# Functions


```haxe
import stdgo.crypto.sha1.Sha1
```


## function \_benchmarkSize


```haxe
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.B>, _size:stdgo.GoInt):Void
```


[\(view code\)](<./Sha1.hx#L40>)


## function \_block


```haxe
function _block(_dig:stdgo.Ref<stdgo.crypto.sha1.T_digest>, _p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Sha1.hx#L46>)


## function \_blockGeneric


```haxe
function _blockGeneric(_dig:stdgo.Ref<stdgo.crypto.sha1.T_digest>, _p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Sha1.hx#L45>)


## function \_boringNewSHA1


```haxe
function _boringNewSHA1():Void
```


[\(view code\)](<./Sha1.hx#L25>)


## function \_boringSHA1


```haxe
function _boringSHA1(_0:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Sha1.hx#L27>)


## function \_boringUnreachable


```haxe
function _boringUnreachable():Void
```


[\(view code\)](<./Sha1.hx#L26>)


## function \_consumeUint32


```haxe
function _consumeUint32(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Sha1.hx#L29>)


## function \_consumeUint64


```haxe
function _consumeUint64(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Sha1.hx#L28>)


## function \_safeSum


```haxe
function _safeSum(_h:stdgo._internal.hash.Hash):Void
```


[\(view code\)](<./Sha1.hx#L37>)


## function benchmarkHash1K


```haxe
function benchmarkHash1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sha1.hx#L43>)


## function benchmarkHash320Bytes


```haxe
function benchmarkHash320Bytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sha1.hx#L42>)


## function benchmarkHash8Bytes


```haxe
function benchmarkHash8Bytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sha1.hx#L41>)


## function benchmarkHash8K


```haxe
function benchmarkHash8K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sha1.hx#L44>)


## function new\_


```haxe
function new_():Void
```


[\(view code\)](<./Sha1.hx#L30>)


## function sum


```haxe
function sum(_data:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Sha1.hx#L31>)


## function testAllocations


```haxe
function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sha1.hx#L39>)


## function testBlockGeneric


```haxe
function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sha1.hx#L36>)


## function testBlockSize


```haxe
function testBlockSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sha1.hx#L35>)


## function testGolden


```haxe
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sha1.hx#L32>)


## function testGoldenMarshal


```haxe
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sha1.hx#L33>)


## function testLargeHashes


```haxe
function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sha1.hx#L38>)


## function testSize


```haxe
function testSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sha1.hx#L34>)


# Typedefs


```haxe
import stdgo.crypto.sha1.*
```


## typedef T\_digest


```haxe
typedef T_digest = Dynamic;
```


## typedef T\_digest\_asInterface


```haxe
typedef T_digest_asInterface = Dynamic;
```


## typedef T\_digest\_static\_extension


```haxe
typedef T_digest_static_extension = Dynamic;
```


## typedef T\_sha1Test


```haxe
typedef T_sha1Test = Dynamic;
```


## typedef T\_unmarshalTest


```haxe
typedef T_unmarshalTest = Dynamic;
```


