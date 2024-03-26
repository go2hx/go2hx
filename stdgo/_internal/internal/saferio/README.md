# Module: `stdgo._internal.internal.saferio`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function readData(_r:stdgo._internal.io.Reader, _n:stdgo.GoUInt64):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-readdata>)

- [`function readDataAt(_r:stdgo._internal.io.ReaderAt, _n:stdgo.GoUInt64, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-readdataat>)

- [`function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt`](<#function-slicecap>)

# Constants


```haxe
import stdgo._internal.internal.saferio.Saferio
```


```haxe
final _chunk:stdgo.GoUInt64 = ((10485760i64 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.internal.saferio.Saferio
```


## function readData


```haxe
function readData(_r:stdgo._internal.io.Reader, _n:stdgo.GoUInt64):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


[\(view code\)](<./Saferio.hx#L4>)


## function readDataAt


```haxe
function readDataAt(_r:stdgo._internal.io.ReaderAt, _n:stdgo.GoUInt64, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


[\(view code\)](<./Saferio.hx#L35>)


## function sliceCap


```haxe
function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt
```


[\(view code\)](<./Saferio.hx#L66>)


