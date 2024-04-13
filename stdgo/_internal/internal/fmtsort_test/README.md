# Module: `stdgo._internal.internal.fmtsort`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _chanMap():stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString>`](<#function-_chanmap>)

- [`function _ct(_typ:stdgo._internal.reflect.Type_, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo._internal.reflect.Value>`](<#function-_ct>)

- [`function _makeChans():stdgo.Slice<stdgo.Chan<stdgo.GoInt>>`](<#function-_makechans>)

- [`function _pointerMap():stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoString>`](<#function-_pointermap>)

- [`function _sprint(_data:stdgo.AnyInterface):stdgo.GoString`](<#function-_sprint>)

- [`function _sprintKey(_key:stdgo._internal.reflect.Value):stdgo.GoString`](<#function-_sprintkey>)

- [`function _unsafePointerMap():stdgo.GoMap<stdgo._internal.unsafe.UnsafePointer, stdgo.GoString>`](<#function-_unsafepointermap>)

- [`function testCompare(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcompare>)

- [`function testInterface(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testinterface>)

- [`function testOrder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testorder>)

- [`function main():Void`](<#function-main>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Variables


```haxe
import stdgo._internal.internal.fmtsort_test.Fmtsort
```


```haxe
var _chans:stdgo.Slice<stdgo.Chan<stdgo.GoInt>>
```


```haxe
var _compareTests:stdgo.Slice<stdgo.Slice<stdgo._internal.reflect.Value>>
```


```haxe
var _iFace:stdgo.AnyInterface
```


```haxe
var _ints:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _sortTests:stdgo.Slice<stdgo._internal.internal.fmtsort_test.T_sortTest>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo._internal.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo._internal.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo._internal.testing.InternalTest>
```


# Functions


```haxe
import stdgo._internal.internal.fmtsort_test.Fmtsort
```


## function \_chanMap


```haxe
function _chanMap():stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString>
```


[\(view code\)](<./Fmtsort.hx#L283>)


## function \_ct


```haxe
function _ct(_typ:stdgo._internal.reflect.Type_, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo._internal.reflect.Value>
```


[\(view code\)](<./Fmtsort.hx#L155>)


## function \_makeChans


```haxe
function _makeChans():stdgo.Slice<stdgo.Chan<stdgo.GoInt>>
```


[\(view code\)](<./Fmtsort.hx#L246>)


## function \_pointerMap


```haxe
function _pointerMap():stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoString>
```


[\(view code\)](<./Fmtsort.hx#L253>)


## function \_sprint


```haxe
function _sprint(_data:stdgo.AnyInterface):stdgo.GoString
```


[\(view code\)](<./Fmtsort.hx#L195>)


## function \_sprintKey


```haxe
function _sprintKey(_key:stdgo._internal.reflect.Value):stdgo.GoString
```


[\(view code\)](<./Fmtsort.hx#L211>)


## function \_unsafePointerMap


```haxe
function _unsafePointerMap():stdgo.GoMap<stdgo._internal.unsafe.UnsafePointer, stdgo.GoString>
```


[\(view code\)](<./Fmtsort.hx#L267>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmtsort.hx#L169>)


## function testInterface


```haxe
function testInterface(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmtsort.hx#L305>)


## function testOrder


```haxe
function testOrder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmtsort.hx#L297>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Fmtsort.hx#L8>)


# Typedefs


```haxe
import stdgo._internal.internal.fmtsort_test.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_y:stdgo.GoInt;
	_x:stdgo.GoInt;
};
```


