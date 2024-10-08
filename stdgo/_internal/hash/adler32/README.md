# Module: `stdgo._internal.hash.adler32`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _appendUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appenduint32>)

- [`function _checksum(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_checksum>)

- [`function _readUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_readuint32>)

- [`function _update(_d:stdgo._internal.hash.adler32.T_digest, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.adler32.T_digest`](<#function-_update>)

- [`function benchmarkAdler32KB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkadler32kb>)

- [`function checksum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-checksum>)

- [`function new_():stdgo._internal.hash.Hash32`](<#function-new_>)

- [`function testGolden(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgolden>)

- [`function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgoldenmarshal>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_digest](<#typedef-t_digest>)

# Constants


```haxe
import stdgo._internal.hash.adler32.Adler32_testGoldenMarshal
```


```haxe
final _magic:stdgo.GoString = stdgo.Go.str("adl", 1)
```


```haxe
final _marshaledSize:stdgo.GoInt = ((8 : stdgo.GoInt))
```


```haxe
final _mod:stdgo.GoUInt64 = ((65521i64 : stdgo.GoUInt64))
```


```haxe
final _nmax:stdgo.GoUInt64 = ((5552i64 : stdgo.GoUInt64))
```


```haxe
final size:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.hash.adler32.Adler32_testGoldenMarshal
```


```haxe
var _golden:stdgo.Slice<stdgo._internal.hash.adler32.T__struct_0>
```


# Functions


```haxe
import stdgo._internal.hash.adler32.Adler32_testGoldenMarshal
```


## function \_appendUint32


```haxe
function _appendUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


## function \_checksum


```haxe
function _checksum(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


## function \_readUint32


```haxe
function _readUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


## function \_update


```haxe
function _update(_d:stdgo._internal.hash.adler32.T_digest, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.adler32.T_digest
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


## function benchmarkAdler32KB


```haxe
function benchmarkAdler32KB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


## function checksum


```haxe
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


## function new\_


```haxe
function new_():stdgo._internal.hash.Hash32
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


## function testGolden


```haxe
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


## function testGoldenMarshal


```haxe
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Adler32_testGoldenMarshal.hx#L2>)


# Typedefs


```haxe
import stdgo._internal.hash.adler32.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_out:stdgo.GoUInt32;
	_in:stdgo.GoString;
	_halfState:stdgo.GoString;
};
```


## typedef T\_digest


```haxe
typedef T_digest = stdgo.GoUInt32;
```


