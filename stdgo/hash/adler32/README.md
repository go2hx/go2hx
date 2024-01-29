# Module: `stdgo.hash.adler32`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt32):Void`](<#function-_appenduint32>)

- [`function _checksum(_p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_checksum>)

- [`function _readUint32(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_readuint32>)

- [`function _update(_d:stdgo.hash.adler32.T_digest, _p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_update>)

- [`function benchmarkAdler32KB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkadler32kb>)

- [`function checksum(_data:stdgo.Slice<stdgo.GoByte>):Void`](<#function-checksum>)

- [`function new_():Void`](<#function-new_>)

- [`function testGolden(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgolden>)

- [`function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgoldenmarshal>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_digest](<#typedef-t_digest>)

- [typedef T\_digest\_asInterface](<#typedef-t_digest_asinterface>)

- [typedef T\_digest\_static\_extension](<#typedef-t_digest_static_extension>)

# Variables


```haxe
import stdgo.hash.adler32.Adler32
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _golden:Dynamic
```


```haxe
var _magic:Dynamic
```


```haxe
var _marshaledSize:Dynamic
```


```haxe
var _mod:Dynamic
```


```haxe
var _nmax:Dynamic
```


```haxe
var size:Dynamic
```


# Functions


```haxe
import stdgo.hash.adler32.Adler32
```


## function \_appendUint32


```haxe
function _appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Adler32.hx#L14>)


## function \_checksum


```haxe
function _checksum(_p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Adler32.hx#L18>)


## function \_readUint32


```haxe
function _readUint32(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Adler32.hx#L15>)


## function \_update


```haxe
function _update(_d:stdgo.hash.adler32.T_digest, _p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Adler32.hx#L16>)


## function benchmarkAdler32KB


```haxe
function benchmarkAdler32KB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Adler32.hx#L21>)


## function checksum


```haxe
function checksum(_data:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Adler32.hx#L17>)


## function new\_


```haxe
function new_():Void
```


[\(view code\)](<./Adler32.hx#L13>)


## function testGolden


```haxe
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Adler32.hx#L19>)


## function testGoldenMarshal


```haxe
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Adler32.hx#L20>)


# Typedefs


```haxe
import stdgo.hash.adler32.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.hash.adler32.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_digest


```haxe
typedef T_digest = stdgo._internal.hash.adler32.T_digest;
```


## typedef T\_digest\_asInterface


```haxe
typedef T_digest_asInterface = Dynamic;
```


## typedef T\_digest\_static\_extension


```haxe
typedef T_digest_static_extension = Dynamic;
```


