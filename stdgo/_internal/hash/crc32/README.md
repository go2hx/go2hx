# Module: `stdgo._internal.hash.crc32`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _simpleMakeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Table>`](<#function-_simplemaketable>)

- [`function _simplePopulateTable(_poly:stdgo.GoUInt32, _t:stdgo.Ref<stdgo._internal.hash.crc32.Table>):Void`](<#function-_simplepopulatetable>)

- [`function _appendUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appenduint32>)

- [`function _archAvailableCastagnoli():Bool`](<#function-_archavailablecastagnoli>)

- [`function _archAvailableIEEE():Bool`](<#function-_archavailableieee>)

- [`function _archInitCastagnoli():Void`](<#function-_archinitcastagnoli>)

- [`function _archInitIEEE():Void`](<#function-_archinitieee>)

- [`function _archUpdateCastagnoli(_crc:stdgo.GoUInt32, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_archupdatecastagnoli>)

- [`function _archUpdateIEEE(_crc:stdgo.GoUInt32, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_archupdateieee>)

- [`function _castagnoliInit():Void`](<#function-_castagnoliinit>)

- [`function _ieeeInit():Void`](<#function-_ieeeinit>)

- [`function _readUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_readuint32>)

- [`function _simpleUpdate(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_simpleupdate>)

- [`function _slicingMakeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.T_slicing8Table>`](<#function-_slicingmaketable>)

- [`function _slicingUpdate(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.T_slicing8Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_slicingupdate>)

- [`function _tableSum(_t:stdgo.Ref<stdgo._internal.hash.crc32.Table>):stdgo.GoUInt32`](<#function-_tablesum>)

- [`function _update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>, _p:stdgo.Slice<stdgo.GoUInt8>, _checkInitIEEE:Bool):stdgo.GoUInt32`](<#function-_update>)

- [`function _updateCastagnoli(:stdgo.GoUInt32, :stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_updatecastagnoli>)

- [`function _updateIEEE(:stdgo.GoUInt32, :stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_updateieee>)

- [`function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>):stdgo.GoUInt32`](<#function-checksum>)

- [`function checksumIEEE(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-checksumieee>)

- [`function makeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Table>`](<#function-maketable>)

- [`function newIEEE():stdgo._internal.hash.Hash32`](<#function-newieee>)

- [`function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>):stdgo._internal.hash.Hash32`](<#function-new_>)

- [`function update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-update>)

- [class T\_digest](<#class-t_digest>)

  - [`function new(?_crc:stdgo.GoUInt32, ?_tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>):Void`](<#t_digest-function-new>)

- [typedef T\_slicing8Table](<#typedef-t_slicing8table>)

- [typedef Table](<#typedef-table>)

# Constants


```haxe
import stdgo._internal.hash.crc32.Crc32_update
```


```haxe
final _magic:stdgo.GoString = stdgo.Go.str("crc", 1)
```


```haxe
final _marshaledSize:stdgo.GoInt = ((12 : stdgo.GoInt))
```


```haxe
final _slicing8Cutoff:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final castagnoli:stdgo.GoUInt64 = ((2197175160i64 : stdgo.GoUInt64))
```


```haxe
final ieee:stdgo.GoUInt64 = ((3988292384i64 : stdgo.GoUInt64))
```


```haxe
final koopman:stdgo.GoUInt64 = ((3945912366i64 : stdgo.GoUInt64))
```


```haxe
final size:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.hash.crc32.Crc32_update
```


```haxe
var ieeetable:stdgo.Ref<stdgo._internal.hash.crc32.Table>
```


```haxe
var _castagnoliOnce:stdgo._internal.sync.Once
```


```haxe
var _castagnoliTable:stdgo.Ref<stdgo._internal.hash.crc32.Table>
```


```haxe
var _castagnoliTable8:stdgo.Ref<stdgo._internal.hash.crc32.T_slicing8Table>
```


```haxe
var _haveCastagnoli:stdgo._internal.sync.atomic_.Bool_
```


```haxe
var _ieeeOnce:stdgo._internal.sync.Once
```


```haxe
var _ieeeTable8:stdgo.Ref<stdgo._internal.hash.crc32.T_slicing8Table>
```


# Functions


```haxe
import stdgo._internal.hash.crc32.Crc32_update
```


## function \_simpleMakeTable


```haxe
function _simpleMakeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Table>
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_simplePopulateTable


```haxe
function _simplePopulateTable(_poly:stdgo.GoUInt32, _t:stdgo.Ref<stdgo._internal.hash.crc32.Table>):Void
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_appendUint32


```haxe
function _appendUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_archAvailableCastagnoli


```haxe
function _archAvailableCastagnoli():Bool
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_archAvailableIEEE


```haxe
function _archAvailableIEEE():Bool
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_archInitCastagnoli


```haxe
function _archInitCastagnoli():Void
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_archInitIEEE


```haxe
function _archInitIEEE():Void
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_archUpdateCastagnoli


```haxe
function _archUpdateCastagnoli(_crc:stdgo.GoUInt32, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_archUpdateIEEE


```haxe
function _archUpdateIEEE(_crc:stdgo.GoUInt32, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_castagnoliInit


```haxe
function _castagnoliInit():Void
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_ieeeInit


```haxe
function _ieeeInit():Void
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_readUint32


```haxe
function _readUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_simpleUpdate


```haxe
function _simpleUpdate(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_slicingMakeTable


```haxe
function _slicingMakeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.T_slicing8Table>
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_slicingUpdate


```haxe
function _slicingUpdate(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.T_slicing8Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_tableSum


```haxe
function _tableSum(_t:stdgo.Ref<stdgo._internal.hash.crc32.Table>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_update


```haxe
function _update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>, _p:stdgo.Slice<stdgo.GoUInt8>, _checkInitIEEE:Bool):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_updateCastagnoli


```haxe
function _updateCastagnoli(:stdgo.GoUInt32, :stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function \_updateIEEE


```haxe
function _updateIEEE(:stdgo.GoUInt32, :stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function checksum


```haxe
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function checksumIEEE


```haxe
function checksumIEEE(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function makeTable


```haxe
function makeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Table>
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function newIEEE


```haxe
function newIEEE():stdgo._internal.hash.Hash32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function new\_


```haxe
function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>):stdgo._internal.hash.Hash32
```


[\(view code\)](<./Crc32_update.hx#L2>)


## function update


```haxe
function update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Crc32_update.hx#L2>)


# Classes


```haxe
import stdgo._internal.hash.crc32.*
```


## class T\_digest


```haxe
var _crc:stdgo.GoUInt32
```


```haxe
var _tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>
```


### T\_digest function new


```haxe
function new(?_crc:stdgo.GoUInt32, ?_tab:stdgo.Ref<stdgo._internal.hash.crc32.Table>):Void
```


[\(view code\)](<./Crc32_T_digest.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.hash.crc32.*
```


## typedef T\_slicing8Table


```haxe
typedef T_slicing8Table = stdgo.GoArray<stdgo._internal.hash.crc32.Table>;
```


## typedef Table


```haxe
typedef Table = stdgo.GoArray<stdgo.GoUInt32>;
```


