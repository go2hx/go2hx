# Module: `stdgo._internal.internal.saferio`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function readData(_r:stdgo._internal.io.Reader, _n:stdgo.GoUInt64):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-readdata>)

- [`function readDataAt(_r:stdgo._internal.io.ReaderAt, _n:stdgo.GoUInt64, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-readdataat>)

- [`function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt`](<#function-slicecap>)

- [`function testReadData(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaddata>)

- [`function testReadDataAt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaddataat>)

- [`function testSliceCap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testslicecap>)

# Constants


```haxe
import stdgo._internal.internal.saferio.Saferio_testSliceCap
```


```haxe
final _chunk:stdgo.GoUInt64 = ((10485760i64 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.internal.saferio.Saferio_testSliceCap
```


## function readData


```haxe
function readData(_r:stdgo._internal.io.Reader, _n:stdgo.GoUInt64):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Saferio_testSliceCap.hx#L2>)


## function readDataAt


```haxe
function readDataAt(_r:stdgo._internal.io.ReaderAt, _n:stdgo.GoUInt64, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Saferio_testSliceCap.hx#L2>)


## function sliceCap


```haxe
function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt
```


[\(view code\)](<./Saferio_testSliceCap.hx#L2>)


## function testReadData


```haxe
function testReadData(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Saferio_testSliceCap.hx#L2>)


## function testReadDataAt


```haxe
function testReadDataAt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Saferio_testSliceCap.hx#L2>)


## function testSliceCap


```haxe
function testSliceCap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Saferio_testSliceCap.hx#L2>)


