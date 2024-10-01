# Module: `stdgo._internal.hash.crc64`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _appendUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appenduint64>)

- [`function _buildSlicing8Tables():Void`](<#function-_buildslicing8tables>)

- [`function _buildSlicing8TablesOnce():Void`](<#function-_buildslicing8tablesonce>)

- [`function _makeSlicingBy8Table(_t:stdgo.Ref<stdgo._internal.hash.crc64.Table>):stdgo.Ref<stdgo.GoArray<stdgo._internal.hash.crc64.Table>>`](<#function-_makeslicingby8table>)

- [`function _makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Table>`](<#function-_maketable>)

- [`function _readUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-_readuint64>)

- [`function _tableSum(_t:stdgo.Ref<stdgo._internal.hash.crc64.Table>):stdgo.GoUInt64`](<#function-_tablesum>)

- [`function _update(_crc:stdgo.GoUInt64, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-_update>)

- [`function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>):stdgo.GoUInt64`](<#function-checksum>)

- [`function makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Table>`](<#function-maketable>)

- [`function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>):stdgo._internal.hash.Hash64`](<#function-new_>)

- [`function update(_crc:stdgo.GoUInt64, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-update>)

- [class T\_digest](<#class-t_digest>)

  - [`function new(?_crc:stdgo.GoUInt64, ?_tab:Null<stdgo.Ref<stdgo._internal.hash.crc64.Table>>):Void`](<#t_digest-function-new>)

- [typedef Table](<#typedef-table>)

# Constants


```haxe
import stdgo._internal.hash.crc64.Crc64_update
```


```haxe
final _magic:stdgo.GoString = stdgo.Go.str("crc", 2)
```


```haxe
final _marshaledSize:stdgo.GoInt = ((20 : stdgo.GoInt))
```


```haxe
final ecma:stdgo.GoUInt64 = ((-3932672073523589310i64 : stdgo.GoUInt64))
```


```haxe
final iso:stdgo.GoUInt64 = ((-2882303761517117440i64 : stdgo.GoUInt64))
```


```haxe
final size:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.hash.crc64.Crc64_update
```


```haxe
var _slicing8TableECMA:stdgo.Ref<stdgo.GoArray<stdgo._internal.hash.crc64.Table>>
```


```haxe
var _slicing8TableISO:stdgo.Ref<stdgo.GoArray<stdgo._internal.hash.crc64.Table>>
```


```haxe
var _slicing8TablesBuildOnce:stdgo._internal.sync.Once
```


# Functions


```haxe
import stdgo._internal.hash.crc64.Crc64_update
```


## function \_appendUint64


```haxe
function _appendUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function \_buildSlicing8Tables


```haxe
function _buildSlicing8Tables():Void
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function \_buildSlicing8TablesOnce


```haxe
function _buildSlicing8TablesOnce():Void
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function \_makeSlicingBy8Table


```haxe
function _makeSlicingBy8Table(_t:stdgo.Ref<stdgo._internal.hash.crc64.Table>):stdgo.Ref<stdgo.GoArray<stdgo._internal.hash.crc64.Table>>
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function \_makeTable


```haxe
function _makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Table>
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function \_readUint64


```haxe
function _readUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function \_tableSum


```haxe
function _tableSum(_t:stdgo.Ref<stdgo._internal.hash.crc64.Table>):stdgo.GoUInt64
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function \_update


```haxe
function _update(_crc:stdgo.GoUInt64, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function checksum


```haxe
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>):stdgo.GoUInt64
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function makeTable


```haxe
function makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Table>
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function new\_


```haxe
function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>):stdgo._internal.hash.Hash64
```


[\(view code\)](<./Crc64_update.hx#L2>)


## function update


```haxe
function update(_crc:stdgo.GoUInt64, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Crc64_update.hx#L2>)


# Classes


```haxe
import stdgo._internal.hash.crc64.*
```


## class T\_digest


```haxe
var _crc:stdgo.GoUInt64
```


```haxe
var _tab:stdgo.Ref<stdgo._internal.hash.crc64.Table>
```


### T\_digest function new


```haxe
function new(?_crc:stdgo.GoUInt64, ?_tab:Null<stdgo.Ref<stdgo._internal.hash.crc64.Table>>):Void
```


[\(view code\)](<./Crc64_T_digest.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.hash.crc64.*
```


## typedef Table


```haxe
typedef Table = stdgo.GoArray<stdgo.GoUInt64>;
```


