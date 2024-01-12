# Module: `stdgo.internal.fmtsort`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _chanMap():stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString>`](<#function-_chanmap>)

- [`function _ct(_typ:stdgo.reflect.Type_, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.reflect.Value>`](<#function-_ct>)

- [`function _makeChans():stdgo.Slice<stdgo.Chan<stdgo.GoInt>>`](<#function-_makechans>)

- [`function _pointerMap():stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoString>`](<#function-_pointermap>)

- [`function _sprint(_data:stdgo.AnyInterface):stdgo.GoString`](<#function-_sprint>)

- [`function _sprintKey(_key:stdgo.reflect.Value):stdgo.GoString`](<#function-_sprintkey>)

- [`function _unsafePointerMap():stdgo.GoMap<stdgo.unsafe.UnsafePointer, stdgo.GoString>`](<#function-_unsafepointermap>)

- [`function testCompare(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcompare>)

- [`function testInterface(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testinterface>)

- [`function testOrder(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testorder>)

- [`function main():Void`](<#function-main>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Variables


```haxe
import stdgo.internal.fmtsort_test.Fmtsort
```


```haxe
var _chans:stdgo.Slice<stdgo.Chan<stdgo.GoInt>>
```


```haxe
var _compareTests:stdgo.Slice<stdgo.Slice<stdgo.reflect.Value>>
```


```haxe
var _iFace:stdgo.AnyInterface
```


```haxe
var _ints:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _sortTests:stdgo.Slice<stdgo.internal.fmtsort_test.T_sortTest>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo.testing.InternalTest>
```


# Functions


```haxe
import stdgo.internal.fmtsort_test.Fmtsort
```


## function \_chanMap


```haxe
function _chanMap():stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString>
```


[\(view code\)](<./Fmtsort.hx#L328>)


## function \_ct


```haxe
function _ct(_typ:stdgo.reflect.Type_, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.reflect.Value>
```


[\(view code\)](<./Fmtsort.hx#L194>)


## function \_makeChans


```haxe
function _makeChans():stdgo.Slice<stdgo.Chan<stdgo.GoInt>>
```


[\(view code\)](<./Fmtsort.hx#L291>)


## function \_pointerMap


```haxe
function _pointerMap():stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoString>
```


[\(view code\)](<./Fmtsort.hx#L298>)


## function \_sprint


```haxe
function _sprint(_data:stdgo.AnyInterface):stdgo.GoString
```


[\(view code\)](<./Fmtsort.hx#L234>)


## function \_sprintKey


```haxe
function _sprintKey(_key:stdgo.reflect.Value):stdgo.GoString
```



sprintKey formats a reflect.Value but gives reproducible values for some
problematic types such as pointers. Note that it only does special handling
for the troublesome types used in the test cases; it is not a general
printer.  

[\(view code\)](<./Fmtsort.hx#L256>)


## function \_unsafePointerMap


```haxe
function _unsafePointerMap():stdgo.GoMap<stdgo.unsafe.UnsafePointer, stdgo.GoString>
```


[\(view code\)](<./Fmtsort.hx#L312>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmtsort.hx#L208>)


## function testInterface


```haxe
function testInterface(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmtsort.hx#L350>)


## function testOrder


```haxe
function testOrder(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmtsort.hx#L342>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Fmtsort.hx#L28>)


# Typedefs


```haxe
import stdgo.internal.fmtsort_test.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_y:stdgo.GoInt;
	_x:stdgo.GoInt;
};
```


