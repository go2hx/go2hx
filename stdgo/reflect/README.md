# Module: `stdgo.reflect`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function append(_s:stdgo.reflect.Value, _x:haxe.Rest<stdgo.reflect.Value>):Void`](<#function-append>)

- [`function appendSlice(_s:stdgo.reflect.Value, _t:stdgo.reflect.Value):Void`](<#function-appendslice>)

- [`function arrayOf(_length:stdgo.GoInt, _elem:stdgo.reflect.Type_):Void`](<#function-arrayof>)

- [`function chanOf(_dir:stdgo.reflect.ChanDir, _t:stdgo.reflect.Type_):Void`](<#function-chanof>)

- [`function copy(_dst:stdgo.reflect.Value, _src:stdgo.reflect.Value):Void`](<#function-copy>)

- [`function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Void`](<#function-deepequal>)

- [`function funcOf(_in:stdgo.Slice<stdgo.reflect.Type_>, _out:stdgo.Slice<stdgo.reflect.Type_>, _variadic:Bool):Void`](<#function-funcof>)

- [`function indirect(_v:stdgo.reflect.Value):Void`](<#function-indirect>)

- [`function makeChan(_typ:stdgo.reflect.Type_, _buffer:stdgo.GoInt):Void`](<#function-makechan>)

- [`function makeFunc(_typ:stdgo.reflect.Type_, _fn:(_args:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>):Void`](<#function-makefunc>)

- [`function makeMap(_typ:stdgo.reflect.Type_):Void`](<#function-makemap>)

- [`function makeMapWithSize(_typ:stdgo.reflect.Type_, _n:stdgo.GoInt):Void`](<#function-makemapwithsize>)

- [`function makeSlice(_typ:stdgo.reflect.Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):Void`](<#function-makeslice>)

- [`function mapOf(_key:stdgo.reflect.Type_, _elem:stdgo.reflect.Type_):Void`](<#function-mapof>)

- [`function newAt(_typ:stdgo.reflect.Type_, _p:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-newat>)

- [`function new_(_typ:stdgo.reflect.Type_):Void`](<#function-new_>)

- [`function pointerTo(_t:stdgo.reflect.Type_):Void`](<#function-pointerto>)

- [`function ptrTo(_t:stdgo.reflect.Type_):Void`](<#function-ptrto>)

- [`function select(_cases:stdgo.Slice<stdgo.reflect.SelectCase>):Void`](<#function-select>)

- [`function sliceOf(_t:stdgo.reflect.Type_):Void`](<#function-sliceof>)

- [`function structOf(_fields:stdgo.Slice<stdgo.reflect.StructField>):Void`](<#function-structof>)

- [`function swapper(_slice:stdgo.AnyInterface):Void`](<#function-swapper>)

- [`function typeOf(_i:stdgo.AnyInterface):Void`](<#function-typeof>)

- [`function valueOf(_i:stdgo.AnyInterface):Void`](<#function-valueof>)

- [`function visibleFields(_t:stdgo.reflect.Type_):Void`](<#function-visiblefields>)

- [`function zero(_typ:stdgo.reflect.Type_):Void`](<#function-zero>)

- [typedef ChanDir](<#typedef-chandir>)

- [typedef ChanDir\_asInterface](<#typedef-chandir_asinterface>)

- [typedef ChanDir\_static\_extension](<#typedef-chandir_static_extension>)

- [typedef Kind](<#typedef-kind>)

- [typedef Kind\_asInterface](<#typedef-kind_asinterface>)

- [typedef Kind\_static\_extension](<#typedef-kind_static_extension>)

- [typedef MapIter](<#typedef-mapiter>)

- [typedef MapIter\_asInterface](<#typedef-mapiter_asinterface>)

- [typedef MapIter\_static\_extension](<#typedef-mapiter_static_extension>)

- [typedef Method](<#typedef-method>)

- [typedef Method\_asInterface](<#typedef-method_asinterface>)

- [typedef Method\_static\_extension](<#typedef-method_static_extension>)

- [typedef SelectCase](<#typedef-selectcase>)

- [typedef SelectDir](<#typedef-selectdir>)

- [typedef SliceHeader](<#typedef-sliceheader>)

- [typedef StringHeader](<#typedef-stringheader>)

- [typedef StructField](<#typedef-structfield>)

- [typedef StructField\_asInterface](<#typedef-structfield_asinterface>)

- [typedef StructField\_static\_extension](<#typedef-structfield_static_extension>)

- [typedef StructTag](<#typedef-structtag>)

- [typedef StructTag\_asInterface](<#typedef-structtag_asinterface>)

- [typedef StructTag\_static\_extension](<#typedef-structtag_static_extension>)

- [typedef Type\_](<#typedef-type_>)

- [typedef Value](<#typedef-value>)

- [typedef ValueError](<#typedef-valueerror>)

- [typedef ValueError\_asInterface](<#typedef-valueerror_asinterface>)

- [typedef ValueError\_static\_extension](<#typedef-valueerror_static_extension>)

- [typedef Value\_asInterface](<#typedef-value_asinterface>)

- [typedef Value\_static\_extension](<#typedef-value_static_extension>)

# Variables


```haxe
import stdgo.reflect.Reflect
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var array:Dynamic
```


```haxe
var bool_:Dynamic
```


```haxe
var bothDir:Dynamic
```


```haxe
var chan:Dynamic
```


```haxe
var complex128:Dynamic
```


```haxe
var complex64:Dynamic
```


```haxe
var float32:Dynamic
```


```haxe
var float64:Dynamic
```


```haxe
var func:Dynamic
```


```haxe
var int16:Dynamic
```


```haxe
var int32:Dynamic
```


```haxe
var int64:Dynamic
```


```haxe
var int8:Dynamic
```


```haxe
var int_:Dynamic
```


```haxe
var interface_:Dynamic
```


```haxe
var invalid:Dynamic
```


```haxe
var map_:Dynamic
```


```haxe
var pointer:Dynamic
```


```haxe
var ptr:Dynamic
```


```haxe
var recvDir:Dynamic
```


```haxe
var selectDefault:Dynamic
```


```haxe
var selectRecv:Dynamic
```


```haxe
var selectSend:Dynamic
```


```haxe
var sendDir:Dynamic
```


```haxe
var slice:Dynamic
```


```haxe
var string:Dynamic
```


```haxe
var struct_:Dynamic
```


```haxe
var uint:Dynamic
```


```haxe
var uint16:Dynamic
```


```haxe
var uint32:Dynamic
```


```haxe
var uint64:Dynamic
```


```haxe
var uint8:Dynamic
```


```haxe
var uintptr:Dynamic
```


```haxe
var unsafePointer:Dynamic
```


# Functions


```haxe
import stdgo.reflect.Reflect
```


## function append


```haxe
function append(_s:stdgo.reflect.Value, _x:haxe.Rest<stdgo.reflect.Value>):Void
```


[\(view code\)](<./Reflect.hx#L62>)


## function appendSlice


```haxe
function appendSlice(_s:stdgo.reflect.Value, _t:stdgo.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L63>)


## function arrayOf


```haxe
function arrayOf(_length:stdgo.GoInt, _elem:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L61>)


## function chanOf


```haxe
function chanOf(_dir:stdgo.reflect.ChanDir, _t:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L56>)


## function copy


```haxe
function copy(_dst:stdgo.reflect.Value, _src:stdgo.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L64>)


## function deepEqual


```haxe
function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Void
```


[\(view code\)](<./Reflect.hx#L50>)


## function funcOf


```haxe
function funcOf(_in:stdgo.Slice<stdgo.reflect.Type_>, _out:stdgo.Slice<stdgo.reflect.Type_>, _variadic:Bool):Void
```


[\(view code\)](<./Reflect.hx#L58>)


## function indirect


```haxe
function indirect(_v:stdgo.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L70>)


## function makeChan


```haxe
function makeChan(_typ:stdgo.reflect.Type_, _buffer:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L67>)


## function makeFunc


```haxe
function makeFunc(_typ:stdgo.reflect.Type_, _fn:(_args:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>):Void
```


[\(view code\)](<./Reflect.hx#L51>)


## function makeMap


```haxe
function makeMap(_typ:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L68>)


## function makeMapWithSize


```haxe
function makeMapWithSize(_typ:stdgo.reflect.Type_, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L69>)


## function makeSlice


```haxe
function makeSlice(_typ:stdgo.reflect.Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L66>)


## function mapOf


```haxe
function mapOf(_key:stdgo.reflect.Type_, _elem:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L57>)


## function newAt


```haxe
function newAt(_typ:stdgo.reflect.Type_, _p:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Reflect.hx#L74>)


## function new\_


```haxe
function new_(_typ:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L73>)


## function pointerTo


```haxe
function pointerTo(_t:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L55>)


## function ptrTo


```haxe
function ptrTo(_t:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L54>)


## function select


```haxe
function select(_cases:stdgo.Slice<stdgo.reflect.SelectCase>):Void
```


[\(view code\)](<./Reflect.hx#L65>)


## function sliceOf


```haxe
function sliceOf(_t:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L59>)


## function structOf


```haxe
function structOf(_fields:stdgo.Slice<stdgo.reflect.StructField>):Void
```


[\(view code\)](<./Reflect.hx#L60>)


## function swapper


```haxe
function swapper(_slice:stdgo.AnyInterface):Void
```


[\(view code\)](<./Reflect.hx#L52>)


## function typeOf


```haxe
function typeOf(_i:stdgo.AnyInterface):Void
```


[\(view code\)](<./Reflect.hx#L53>)


## function valueOf


```haxe
function valueOf(_i:stdgo.AnyInterface):Void
```


[\(view code\)](<./Reflect.hx#L71>)


## function visibleFields


```haxe
function visibleFields(_t:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L75>)


## function zero


```haxe
function zero(_typ:stdgo.reflect.Type_):Void
```


[\(view code\)](<./Reflect.hx#L72>)


# Typedefs


```haxe
import stdgo.reflect.*
```


## typedef ChanDir


```haxe
typedef ChanDir = stdgo._internal.reflect.ChanDir;
```


## typedef ChanDir\_asInterface


```haxe
typedef ChanDir_asInterface = Dynamic;
```


## typedef ChanDir\_static\_extension


```haxe
typedef ChanDir_static_extension = Dynamic;
```


## typedef Kind


```haxe
typedef Kind = stdgo._internal.reflect.Kind;
```


## typedef Kind\_asInterface


```haxe
typedef Kind_asInterface = Dynamic;
```


## typedef Kind\_static\_extension


```haxe
typedef Kind_static_extension = Dynamic;
```


## typedef MapIter


```haxe
typedef MapIter = Dynamic;
```


## typedef MapIter\_asInterface


```haxe
typedef MapIter_asInterface = Dynamic;
```


## typedef MapIter\_static\_extension


```haxe
typedef MapIter_static_extension = Dynamic;
```


## typedef Method


```haxe
typedef Method = Dynamic;
```


## typedef Method\_asInterface


```haxe
typedef Method_asInterface = Dynamic;
```


## typedef Method\_static\_extension


```haxe
typedef Method_static_extension = Dynamic;
```


## typedef SelectCase


```haxe
typedef SelectCase = Dynamic;
```


## typedef SelectDir


```haxe
typedef SelectDir = stdgo._internal.reflect.SelectDir;
```


## typedef SliceHeader


```haxe
typedef SliceHeader = Dynamic;
```


## typedef StringHeader


```haxe
typedef StringHeader = Dynamic;
```


## typedef StructField


```haxe
typedef StructField = Dynamic;
```


## typedef StructField\_asInterface


```haxe
typedef StructField_asInterface = Dynamic;
```


## typedef StructField\_static\_extension


```haxe
typedef StructField_static_extension = Dynamic;
```


## typedef StructTag


```haxe
typedef StructTag = stdgo._internal.reflect.StructTag;
```


## typedef StructTag\_asInterface


```haxe
typedef StructTag_asInterface = Dynamic;
```


## typedef StructTag\_static\_extension


```haxe
typedef StructTag_static_extension = Dynamic;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.reflect.Type_;
```


## typedef Value


```haxe
typedef Value = Dynamic;
```


## typedef ValueError


```haxe
typedef ValueError = Dynamic;
```


## typedef ValueError\_asInterface


```haxe
typedef ValueError_asInterface = Dynamic;
```


## typedef ValueError\_static\_extension


```haxe
typedef ValueError_static_extension = Dynamic;
```


## typedef Value\_asInterface


```haxe
typedef Value_asInterface = Dynamic;
```


## typedef Value\_static\_extension


```haxe
typedef Value_static_extension = Dynamic;
```


