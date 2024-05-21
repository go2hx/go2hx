# Module: `stdgo._internal.reflect`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function append(_s:stdgo._internal.reflect.Value, _x:haxe.Rest<stdgo._internal.reflect.Value>):stdgo._internal.reflect.Value`](<#function-append>)

- [`function appendSlice(_s:stdgo._internal.reflect.Value, _t:stdgo._internal.reflect.Value):stdgo._internal.reflect.Value`](<#function-appendslice>)

- [`function arrayOf(_length:stdgo.GoInt, _elem:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_`](<#function-arrayof>)

- [`function chanOf(_dir:stdgo._internal.reflect.ChanDir, _t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_`](<#function-chanof>)

- [`function copy(_dst:stdgo._internal.reflect.Value, _src:stdgo._internal.reflect.Value):stdgo.GoInt`](<#function-copy>)

- [`function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool`](<#function-deepequal>)

- [`function funcOf(_in:stdgo.Slice<stdgo._internal.reflect.Type_>, _out:stdgo.Slice<stdgo._internal.reflect.Type_>, _variadic:Bool):stdgo._internal.reflect.Type_`](<#function-funcof>)

- [`function indirect(_v:stdgo._internal.reflect.Value):stdgo._internal.reflect.Value`](<#function-indirect>)

- [`function makeChan(_typ:stdgo._internal.reflect.Type_, _buffer:stdgo.GoInt):stdgo._internal.reflect.Value`](<#function-makechan>)

- [`function makeFunc(_typ:stdgo._internal.reflect.Type_, _fn:(_args:stdgo.Slice<stdgo._internal.reflect.Value>):stdgo.Slice<stdgo._internal.reflect.Value>):stdgo._internal.reflect.Value`](<#function-makefunc>)

- [`function makeMap(_typ:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Value`](<#function-makemap>)

- [`function makeMapWithSize(_typ:stdgo._internal.reflect.Type_, _n:stdgo.GoInt):stdgo._internal.reflect.Value`](<#function-makemapwithsize>)

- [`function makeSlice(_typ:stdgo._internal.reflect.Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):stdgo._internal.reflect.Value`](<#function-makeslice>)

- [`function mapOf(_key:stdgo._internal.reflect.Type_, _elem:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_`](<#function-mapof>)

- [`function newAt(_typ:stdgo._internal.reflect.Type_, _p:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.reflect.Value`](<#function-newat>)

- [`function new_(_typ:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Value`](<#function-new_>)

- [`function pointerTo(_t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_`](<#function-pointerto>)

- [`function ptrTo(_t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_`](<#function-ptrto>)

- [`function select(_cases:stdgo.Slice<stdgo._internal.reflect.SelectCase>):{
	_2:Bool;
	_1:stdgo._internal.reflect.Value;
	_0:stdgo.GoInt;
}`](<#function-select>)

- [`function sliceOf(_t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_`](<#function-sliceof>)

- [`function structOf(_fields:stdgo.Slice<stdgo._internal.reflect.StructField>):stdgo._internal.reflect.Type_`](<#function-structof>)

- [`function swapper(_slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#function-swapper>)

- [`function typeOf(_i:stdgo.AnyInterface):stdgo._internal.reflect.Type_`](<#function-typeof>)

- [`function valueOf(_i:stdgo.AnyInterface):stdgo._internal.reflect.Value`](<#function-valueof>)

- [`function visibleFields(_t:stdgo._internal.reflect.Type_):stdgo.Slice<stdgo._internal.reflect.StructField>`](<#function-visiblefields>)

- [`function zero(_typ:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Value`](<#function-zero>)

- [class MapIter](<#class-mapiter>)

  - [`function new(?map:haxe.IMap<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo._internal.internal.reflect._Type, ?index:Int):Void`](<#mapiter-function-new>)

  - [`function key():stdgo._internal.reflect.Value`](<#mapiter-function-key>)

  - [`function next():Bool`](<#mapiter-function-next>)

  - [`function reset( _v:stdgo._internal.reflect.Value):Void`](<#mapiter-function-reset>)

  - [`function value():stdgo._internal.reflect.Value`](<#mapiter-function-value>)

- [class Method](<#class-method>)

  - [`function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo._internal.reflect.Type_>, ?func:stdgo._internal.reflect.Value, ?index:stdgo.GoInt):Void`](<#method-function-new>)

  - [`function isExported():Bool`](<#method-function-isexported>)

- [class SelectCase](<#class-selectcase>)

  - [`function new(?dir:Null<stdgo._internal.reflect.SelectDir>, ?chan:stdgo._internal.reflect.Value, ?send:stdgo._internal.reflect.Value):Void`](<#selectcase-function-new>)

- [class SliceHeader](<#class-sliceheader>)

  - [`function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt, ?cap:stdgo.GoInt):Void`](<#sliceheader-function-new>)

- [class StringHeader](<#class-stringheader>)

  - [`function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt):Void`](<#stringheader-function-new>)

- [class StructField](<#class-structfield>)

  - [`function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo._internal.reflect.Type_>, ?tag:Null<stdgo._internal.reflect.StructTag>, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool):Void`](<#structfield-function-new>)

  - [`function isExported():Bool`](<#structfield-function-isexported>)

- [class Value](<#class-value>)

  - [`function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:stdgo.GoInt, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string:():stdgo.GoString):Void`](<#value-function-new>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function addr():stdgo._internal.reflect.Value`](<#value-function-addr>)

  - [`function bool_():Bool`](<#value-function-bool_>)

  - [`function bytes():stdgo.Slice<stdgo.GoByte>`](<#value-function-bytes>)

  - [`function call( _in:stdgo.Slice<stdgo._internal.reflect.Value>):stdgo.Slice<stdgo._internal.reflect.Value>`](<#value-function-call>)

  - [`function callSlice( _in:stdgo.Slice<stdgo._internal.reflect.Value>):stdgo.Slice<stdgo._internal.reflect.Value>`](<#value-function-callslice>)

  - [`function canAddr():Bool`](<#value-function-canaddr>)

  - [`function canComplex():Bool`](<#value-function-cancomplex>)

  - [`function canConvert( _t:stdgo._internal.reflect.Type_):Bool`](<#value-function-canconvert>)

  - [`function canFloat():Bool`](<#value-function-canfloat>)

  - [`function canInt():Bool`](<#value-function-canint>)

  - [`function canInterface():Bool`](<#value-function-caninterface>)

  - [`function canSet():Bool`](<#value-function-canset>)

  - [`function canUint():Bool`](<#value-function-canuint>)

  - [`function cap():stdgo.GoInt`](<#value-function-cap>)

  - [`function clear():Void`](<#value-function-clear>)

  - [`function close():Void`](<#value-function-close>)

  - [`function comparable_():Bool`](<#value-function-comparable_>)

  - [`function complex():stdgo.GoComplex128`](<#value-function-complex>)

  - [`function convert( _t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Value`](<#value-function-convert>)

  - [`function elem():stdgo._internal.reflect.Value`](<#value-function-elem>)

  - [`function equal( _u:stdgo._internal.reflect.Value):Bool`](<#value-function-equal>)

  - [`function field( _i:stdgo.GoInt):stdgo._internal.reflect.Value`](<#value-function-field>)

  - [`function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Value`](<#value-function-fieldbyindex>)

  - [`function fieldByIndexErr( _index:stdgo.Slice<stdgo.GoInt>):{ _1:stdgo.Error; _0:stdgo._internal.reflect.Value;}`](<#value-function-fieldbyindexerr>)

  - [`function fieldByName( _name:stdgo.GoString):stdgo._internal.reflect.Value`](<#value-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):stdgo._internal.reflect.Value`](<#value-function-fieldbynamefunc>)

  - [`function float_():stdgo.GoFloat64`](<#value-function-float_>)

  - [`function grow( _n:stdgo.GoInt):Void`](<#value-function-grow>)

  - [`function index( _i:stdgo.GoInt):stdgo._internal.reflect.Value`](<#value-function-index>)

  - [`function int_():stdgo.GoInt64`](<#value-function-int_>)

  - [`function interfaceData():stdgo.GoArray<stdgo.GoUIntptr>`](<#value-function-interfacedata>)

  - [`function interface_():stdgo.AnyInterface`](<#value-function-interface_>)

  - [`function isNil():Bool`](<#value-function-isnil>)

  - [`function isValid():Bool`](<#value-function-isvalid>)

  - [`function isZero():Bool`](<#value-function-iszero>)

  - [`function kind():stdgo._internal.reflect.Kind`](<#value-function-kind>)

  - [`function len():stdgo.GoInt`](<#value-function-len>)

  - [`function mapIndex( _key:stdgo._internal.reflect.Value):stdgo._internal.reflect.Value`](<#value-function-mapindex>)

  - [`function mapKeys():stdgo.Slice<stdgo._internal.reflect.Value>`](<#value-function-mapkeys>)

  - [`function mapRange():stdgo.Ref<stdgo._internal.reflect.MapIter>`](<#value-function-maprange>)

  - [`function method( _i:stdgo.GoInt):stdgo._internal.reflect.Value`](<#value-function-method>)

  - [`function methodByName( _name:stdgo.GoString):stdgo._internal.reflect.Value`](<#value-function-methodbyname>)

  - [`function numField():stdgo.GoInt`](<#value-function-numfield>)

  - [`function numMethod():stdgo.GoInt`](<#value-function-nummethod>)

  - [`function overflowComplex( _x:stdgo.GoComplex128):Bool`](<#value-function-overflowcomplex>)

  - [`function overflowFloat( _x:stdgo.GoFloat64):Bool`](<#value-function-overflowfloat>)

  - [`function overflowInt( _x:stdgo.GoInt64):Bool`](<#value-function-overflowint>)

  - [`function overflowUint( _x:stdgo.GoUInt64):Bool`](<#value-function-overflowuint>)

  - [`function pointer():stdgo.GoUIntptr`](<#value-function-pointer>)

  - [`function recv():{ _1:Bool; _0:stdgo._internal.reflect.Value;}`](<#value-function-recv>)

  - [`function send( _x:stdgo._internal.reflect.Value):Void`](<#value-function-send>)

  - [`function set( _x:stdgo._internal.reflect.Value):Void`](<#value-function-set>)

  - [`function setBool( _x:Bool):Void`](<#value-function-setbool>)

  - [`function setBytes( _x:stdgo.Slice<stdgo.GoByte>):Void`](<#value-function-setbytes>)

  - [`function setCap( _n:stdgo.GoInt):Void`](<#value-function-setcap>)

  - [`function setComplex( _x:stdgo.GoComplex128):Void`](<#value-function-setcomplex>)

  - [`function setFloat( _x:stdgo.GoFloat64):Void`](<#value-function-setfloat>)

  - [`function setInt( _x:stdgo.GoInt64):Void`](<#value-function-setint>)

  - [`function setIterKey( _iter:stdgo.Ref<stdgo._internal.reflect.MapIter>):Void`](<#value-function-setiterkey>)

  - [`function setIterValue( _iter:stdgo.Ref<stdgo._internal.reflect.MapIter>):Void`](<#value-function-setitervalue>)

  - [`function setLen( _n:stdgo.GoInt):Void`](<#value-function-setlen>)

  - [`function setMapIndex( _key:stdgo._internal.reflect.Value, _elem:stdgo._internal.reflect.Value):Void`](<#value-function-setmapindex>)

  - [`function setPointer( _x:stdgo._internal.unsafe.UnsafePointer):Void`](<#value-function-setpointer>)

  - [`function setString( _x:stdgo.GoString):Void`](<#value-function-setstring>)

  - [`function setUint( _x:stdgo.GoUInt64):Void`](<#value-function-setuint>)

  - [`function setZero():Void`](<#value-function-setzero>)

  - [`function slice( _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.reflect.Value`](<#value-function-slice>)

  - [`function slice3( _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo._internal.reflect.Value`](<#value-function-slice3>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function tryRecv():{ _1:Bool; _0:stdgo._internal.reflect.Value;}`](<#value-function-tryrecv>)

  - [`function trySend( _x:stdgo._internal.reflect.Value):Bool`](<#value-function-trysend>)

  - [`function type():stdgo._internal.reflect.Type_`](<#value-function-type>)

  - [`function uint():stdgo.GoUInt64`](<#value-function-uint>)

  - [`function unsafeAddr():stdgo.GoUIntptr`](<#value-function-unsafeaddr>)

  - [`function unsafePointer():stdgo._internal.unsafe.UnsafePointer`](<#value-function-unsafepointer>)

- [class ValueError](<#class-valueerror>)

  - [`function new(?method:stdgo.GoString, ?kind:stdgo._internal.reflect.Kind, ?toString:():String):Void`](<#valueerror-function-new>)

  - [`function toString():String`](<#valueerror-function-tostring>)

  - [`function error():stdgo.GoString`](<#valueerror-function-error>)

- [typedef ChanDir](<#typedef-chandir>)

- [typedef Kind](<#typedef-kind>)

- [typedef SelectDir](<#typedef-selectdir>)

- [typedef StructTag](<#typedef-structtag>)

- [typedef Type\_](<#typedef-type_>)

# Constants


```haxe
import stdgo._internal.reflect.Reflect
```


```haxe
final array:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final bool_:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final bothDir:stdgo._internal.reflect.ChanDir = ((((0 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect.ChanDir))
```


```haxe
final chan:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final complex128:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final complex64:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final float32:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final float64:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final func:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final int16:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final int32:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final int64:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final int8:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final int_:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final interface_:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final invalid:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final map_:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final pointer:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final ptr:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final recvDir:stdgo._internal.reflect.ChanDir = ((((0 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect.ChanDir))
```


```haxe
final selectDefault:Null<Any> = @:unknown_default_value null
```


```haxe
final selectRecv:Null<Any> = @:unknown_default_value null
```


```haxe
final selectSend:Null<Any> = @:unknown_default_value null
```


```haxe
final sendDir:stdgo._internal.reflect.ChanDir = ((((0 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect.ChanDir))
```


```haxe
final slice:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final string:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final struct_:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final uint:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final uint16:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final uint32:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final uint64:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final uint8:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final uintptr:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


```haxe
final unsafePointer:stdgo._internal.reflect.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.reflect.Reflect.Kind))
```


# Functions


```haxe
import stdgo._internal.reflect.Reflect
```


## function append


```haxe
function append(_s:stdgo._internal.reflect.Value, _x:haxe.Rest<stdgo._internal.reflect.Value>):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L526>)


## function appendSlice


```haxe
function appendSlice(_s:stdgo._internal.reflect.Value, _t:stdgo._internal.reflect.Value):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L527>)


## function arrayOf


```haxe
function arrayOf(_length:stdgo.GoInt, _elem:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L525>)


## function chanOf


```haxe
function chanOf(_dir:stdgo._internal.reflect.ChanDir, _t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L520>)


## function copy


```haxe
function copy(_dst:stdgo._internal.reflect.Value, _src:stdgo._internal.reflect.Value):stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L528>)


## function deepEqual


```haxe
function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool
```


[\(view code\)](<./Reflect.hx#L504>)


## function funcOf


```haxe
function funcOf(_in:stdgo.Slice<stdgo._internal.reflect.Type_>, _out:stdgo.Slice<stdgo._internal.reflect.Type_>, _variadic:Bool):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L522>)


## function indirect


```haxe
function indirect(_v:stdgo._internal.reflect.Value):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L539>)


## function makeChan


```haxe
function makeChan(_typ:stdgo._internal.reflect.Type_, _buffer:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L536>)


## function makeFunc


```haxe
function makeFunc(_typ:stdgo._internal.reflect.Type_, _fn:(_args:stdgo.Slice<stdgo._internal.reflect.Value>):stdgo.Slice<stdgo._internal.reflect.Value>):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L512>)


## function makeMap


```haxe
function makeMap(_typ:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L537>)


## function makeMapWithSize


```haxe
function makeMapWithSize(_typ:stdgo._internal.reflect.Type_, _n:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L538>)


## function makeSlice


```haxe
function makeSlice(_typ:stdgo._internal.reflect.Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L530>)


## function mapOf


```haxe
function mapOf(_key:stdgo._internal.reflect.Type_, _elem:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L521>)


## function newAt


```haxe
function newAt(_typ:stdgo._internal.reflect.Type_, _p:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L557>)


## function new\_


```haxe
function new_(_typ:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L552>)


## function pointerTo


```haxe
function pointerTo(_t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L519>)


## function ptrTo


```haxe
function ptrTo(_t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L518>)


## function select


```haxe
function select(_cases:stdgo.Slice<stdgo._internal.reflect.SelectCase>):{
	_2:Bool;
	_1:stdgo._internal.reflect.Value;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Reflect.hx#L529>)


## function sliceOf


```haxe
function sliceOf(_t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L523>)


## function structOf


```haxe
function structOf(_fields:stdgo.Slice<stdgo._internal.reflect.StructField>):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L524>)


## function swapper


```haxe
function swapper(_slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L513>)


## function typeOf


```haxe
function typeOf(_i:stdgo.AnyInterface):stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L514>)


## function valueOf


```haxe
function valueOf(_i:stdgo.AnyInterface):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L546>)


## function visibleFields


```haxe
function visibleFields(_t:stdgo._internal.reflect.Type_):stdgo.Slice<stdgo._internal.reflect.StructField>
```


[\(view code\)](<./Reflect.hx#L558>)


## function zero


```haxe
function zero(_typ:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L549>)


# Classes


```haxe
import stdgo._internal.reflect.*
```


## class MapIter


### MapIter function new


```haxe
function new(?map:haxe.IMap<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo._internal.internal.reflect._Type, ?index:Int):Void
```


[\(view code\)](<./Reflect.hx#L448>)


### MapIter function key


```haxe
function key():stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1600>)


### MapIter function next


```haxe
function next():Bool
```


[\(view code\)](<./Reflect.hx#L1572>)


### MapIter function reset


```haxe
function reset( _v:stdgo._internal.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L1564>)


### MapIter function value


```haxe
function value():stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1584>)


## class Method


```haxe
var func:stdgo._internal.reflect.Value
```


```haxe
var index:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```


```haxe
var pkgPath:stdgo.GoString
```


```haxe
var type:stdgo._internal.reflect.Type_
```


### Method function new


```haxe
function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo._internal.reflect.Type_>, ?func:stdgo._internal.reflect.Value, ?index:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L330>)


### Method function isExported


```haxe
function isExported():Bool
```


[\(view code\)](<./Reflect.hx#L572>)


## class SelectCase


```haxe
var chan:stdgo._internal.reflect.Value
```


```haxe
var dir:stdgo._internal.reflect.SelectDir
```


```haxe
var send:stdgo._internal.reflect.Value
```


### SelectCase function new


```haxe
function new(?dir:Null<stdgo._internal.reflect.SelectDir>, ?chan:stdgo._internal.reflect.Value, ?send:stdgo._internal.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L490>)


## class SliceHeader


```haxe
var cap:stdgo.GoInt
```


```haxe
var data:stdgo.GoUIntptr
```


```haxe
var len:stdgo.GoInt
```


### SliceHeader function new


```haxe
function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt, ?cap:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L476>)


## class StringHeader


```haxe
var data:stdgo.GoUIntptr
```


```haxe
var len:stdgo.GoInt
```


### StringHeader function new


```haxe
function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L463>)


## class StructField


```haxe
var anonymous:Bool
```


```haxe
var index:stdgo.Slice<stdgo.GoInt>
```


```haxe
var name:stdgo.GoString
```


```haxe
var offset:stdgo.GoUIntptr
```


```haxe
var pkgPath:stdgo.GoString
```


```haxe
var tag:stdgo._internal.reflect.StructTag
```


```haxe
var type:stdgo._internal.reflect.Type_
```


### StructField function new


```haxe
function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo._internal.reflect.Type_>, ?tag:Null<stdgo._internal.reflect.StructTag>, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool):Void
```


[\(view code\)](<./Reflect.hx#L350>)


### StructField function isExported


```haxe
function isExported():Bool
```


[\(view code\)](<./Reflect.hx#L587>)


## class Value


### Value function new


```haxe
function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:stdgo.GoInt, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string:():stdgo.GoString):Void
```


[\(view code\)](<./Reflect.hx#L407>)


### Value function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L373>)


### Value function addr


```haxe
function addr():stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1528>)


### Value function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Reflect.hx#L1502>)


### Value function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Reflect.hx#L1461>)


### Value function call


```haxe
function call( _in:stdgo.Slice<stdgo._internal.reflect.Value>):stdgo.Slice<stdgo._internal.reflect.Value>
```


[\(view code\)](<./Reflect.hx#L1443>)


### Value function callSlice


```haxe
function callSlice( _in:stdgo.Slice<stdgo._internal.reflect.Value>):stdgo.Slice<stdgo._internal.reflect.Value>
```


[\(view code\)](<./Reflect.hx#L1441>)


### Value function canAddr


```haxe
function canAddr():Bool
```


[\(view code\)](<./Reflect.hx#L1456>)


### Value function canComplex


```haxe
function canComplex():Bool
```


[\(view code\)](<./Reflect.hx#L1435>)


### Value function canConvert


```haxe
function canConvert( _t:stdgo._internal.reflect.Type_):Bool
```


[\(view code\)](<./Reflect.hx#L754>)


### Value function canFloat


```haxe
function canFloat():Bool
```


[\(view code\)](<./Reflect.hx#L1337>)


### Value function canInt


```haxe
function canInt():Bool
```


[\(view code\)](<./Reflect.hx#L1263>)


### Value function canInterface


```haxe
function canInterface():Bool
```


[\(view code\)](<./Reflect.hx#L1224>)


### Value function canSet


```haxe
function canSet():Bool
```


[\(view code\)](<./Reflect.hx#L1454>)


### Value function canUint


```haxe
function canUint():Bool
```


[\(view code\)](<./Reflect.hx#L802>)


### Value function cap


```haxe
function cap():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1439>)


### Value function clear


```haxe
function clear():Void
```


[\(view code\)](<./Reflect.hx#L758>)


### Value function close


```haxe
function close():Void
```


[\(view code\)](<./Reflect.hx#L1437>)


### Value function comparable\_


```haxe
function comparable_():Bool
```


[\(view code\)](<./Reflect.hx#L752>)


### Value function complex


```haxe
function complex():stdgo.GoComplex128
```


[\(view code\)](<./Reflect.hx#L1409>)


### Value function convert


```haxe
function convert( _t:stdgo._internal.reflect.Type_):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L756>)


### Value function elem


```haxe
function elem():stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1364>)


### Value function equal


```haxe
function equal( _u:stdgo._internal.reflect.Value):Bool
```


[\(view code\)](<./Reflect.hx#L750>)


### Value function field


```haxe
function field( _i:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1347>)


### Value function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1345>)


### Value function fieldByIndexErr


```haxe
function fieldByIndexErr( _index:stdgo.Slice<stdgo.GoInt>):{
	_1:stdgo.Error;
	_0:stdgo._internal.reflect.Value;
}
```


[\(view code\)](<./Reflect.hx#L1343>)


### Value function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1341>)


### Value function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1339>)


### Value function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Reflect.hx#L1309>)


### Value function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L760>)


### Value function index


```haxe
function index( _i:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1265>)


### Value function int\_


```haxe
function int_():stdgo.GoInt64
```


[\(view code\)](<./Reflect.hx#L1229>)


### Value function interfaceData


```haxe
function interfaceData():stdgo.GoArray<stdgo.GoUIntptr>
```


[\(view code\)](<./Reflect.hx#L1220>)


### Value function interface\_


```haxe
function interface_():stdgo.AnyInterface
```


[\(view code\)](<./Reflect.hx#L1222>)


### Value function isNil


```haxe
function isNil():Bool
```


[\(view code\)](<./Reflect.hx#L1167>)


### Value function isValid


```haxe
function isValid():Bool
```


[\(view code\)](<./Reflect.hx#L1155>)


### Value function isZero


```haxe
function isZero():Bool
```


[\(view code\)](<./Reflect.hx#L1153>)


### Value function kind


```haxe
function kind():stdgo._internal.reflect.Kind
```


[\(view code\)](<./Reflect.hx#L1149>)


### Value function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1113>)


### Value function mapIndex


```haxe
function mapIndex( _key:stdgo._internal.reflect.Value):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1111>)


### Value function mapKeys


```haxe
function mapKeys():stdgo.Slice<stdgo._internal.reflect.Value>
```


[\(view code\)](<./Reflect.hx#L1109>)


### Value function mapRange


```haxe
function mapRange():stdgo.Ref<stdgo._internal.reflect.MapIter>
```


[\(view code\)](<./Reflect.hx#L1100>)


### Value function method


```haxe
function method( _i:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1098>)


### Value function methodByName


```haxe
function methodByName( _name:stdgo.GoString):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L1094>)


### Value function numField


```haxe
function numField():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1089>)


### Value function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1096>)


### Value function overflowComplex


```haxe
function overflowComplex( _x:stdgo.GoComplex128):Bool
```


[\(view code\)](<./Reflect.hx#L1087>)


### Value function overflowFloat


```haxe
function overflowFloat( _x:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Reflect.hx#L1085>)


### Value function overflowInt


```haxe
function overflowInt( _x:stdgo.GoInt64):Bool
```


[\(view code\)](<./Reflect.hx#L1083>)


### Value function overflowUint


```haxe
function overflowUint( _x:stdgo.GoUInt64):Bool
```


[\(view code\)](<./Reflect.hx#L1081>)


### Value function pointer


```haxe
function pointer():stdgo.GoUIntptr
```


[\(view code\)](<./Reflect.hx#L1074>)


### Value function recv


```haxe
function recv():{
	_1:Bool;
	_0:stdgo._internal.reflect.Value;
}
```


[\(view code\)](<./Reflect.hx#L1072>)


### Value function send


```haxe
function send( _x:stdgo._internal.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L1070>)


### Value function set


```haxe
function set( _x:stdgo._internal.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L1007>)


### Value function setBool


```haxe
function setBool( _x:Bool):Void
```


[\(view code\)](<./Reflect.hx#L1001>)


### Value function setBytes


```haxe
function setBytes( _x:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Reflect.hx#L999>)


### Value function setCap


```haxe
function setCap( _n:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L937>)


### Value function setComplex


```haxe
function setComplex( _x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Reflect.hx#L985>)


### Value function setFloat


```haxe
function setFloat( _x:stdgo.GoFloat64):Void
```


[\(view code\)](<./Reflect.hx#L971>)


### Value function setInt


```haxe
function setInt( _x:stdgo.GoInt64):Void
```


[\(view code\)](<./Reflect.hx#L941>)


### Value function setIterKey


```haxe
function setIterKey( _iter:stdgo.Ref<stdgo._internal.reflect.MapIter>):Void
```


[\(view code\)](<./Reflect.hx#L1107>)


### Value function setIterValue


```haxe
function setIterValue( _iter:stdgo.Ref<stdgo._internal.reflect.MapIter>):Void
```


[\(view code\)](<./Reflect.hx#L1105>)


### Value function setLen


```haxe
function setLen( _n:stdgo.GoInt):Void
```


[\(view code\)](<./Reflect.hx#L939>)


### Value function setMapIndex


```haxe
function setMapIndex( _key:stdgo._internal.reflect.Value, _elem:stdgo._internal.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L935>)


### Value function setPointer


```haxe
function setPointer( _x:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Reflect.hx#L901>)


### Value function setString


```haxe
function setString( _x:stdgo.GoString):Void
```


[\(view code\)](<./Reflect.hx#L895>)


### Value function setUint


```haxe
function setUint( _x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Reflect.hx#L903>)


### Value function setZero


```haxe
function setZero():Void
```


[\(view code\)](<./Reflect.hx#L1151>)


### Value function slice


```haxe
function slice( _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L862>)


### Value function slice3


```haxe
function slice3( _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Reflect.hx#L860>)


### Value function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L825>)


### Value function tryRecv


```haxe
function tryRecv():{
	_1:Bool;
	_0:stdgo._internal.reflect.Value;
}
```


[\(view code\)](<./Reflect.hx#L823>)


### Value function trySend


```haxe
function trySend( _x:stdgo._internal.reflect.Value):Bool
```


[\(view code\)](<./Reflect.hx#L821>)


### Value function type


```haxe
function type():stdgo._internal.reflect.Type_
```


[\(view code\)](<./Reflect.hx#L812>)


### Value function uint


```haxe
function uint():stdgo.GoUInt64
```


[\(view code\)](<./Reflect.hx#L766>)


### Value function unsafeAddr


```haxe
function unsafeAddr():stdgo.GoUIntptr
```


[\(view code\)](<./Reflect.hx#L764>)


### Value function unsafePointer


```haxe
function unsafePointer():stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Reflect.hx#L762>)


## class ValueError


```haxe
var kind:stdgo._internal.reflect.Kind
```


```haxe
var method:stdgo.GoString
```


### ValueError function new


```haxe
function new(?method:stdgo.GoString, ?kind:stdgo._internal.reflect.Kind, ?toString:():String):Void
```


[\(view code\)](<./Reflect.hx#L427>)


### ValueError function toString


```haxe
function toString():String
```


[\(view code\)](<./Reflect.hx#L424>)


### ValueError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1543>)


# Typedefs


```haxe
import stdgo._internal.reflect.*
```


## typedef ChanDir


```haxe
typedef ChanDir = stdgo.GoInt;
```


## typedef Kind


```haxe
typedef Kind = stdgo.GoUInt;
```


## typedef SelectDir


```haxe
typedef SelectDir = stdgo.GoInt;
```


## typedef StructTag


```haxe
typedef StructTag = stdgo.GoString;
```


## typedef Type\_


```haxe
typedef Type_ = {
	public function string():stdgo.GoString;	// String returns a string representation of the type. The string representation may use shortened package names (e.g., base64 instead of "encoding/base64") and is not guaranteed to be unique among types. To test for type identity, compare the Types directly.
	public function size():stdgo.GoUIntptr;	// Size returns the number of bytes needed to store a value of the given type; it is analogous to unsafe.Sizeof.
	public function pkgPath():stdgo.GoString;	// PkgPath returns a defined type's package path, that is, the import path that uniquely identifies the package, such as "encoding/base64". If the type was predeclared (string, error) or not defined (*T, struct{}, []int, or A where A is an alias for a non-defined type), the package path will be the empty string.
	public function out(_i:stdgo.GoInt):stdgo._internal.reflect.Type_;	// Out returns the type of a function type's i'th output parameter. It panics if the type's Kind is not Func. It panics if i is not in the range [0, NumOut()).
	public function numOut():stdgo.GoInt;	// NumOut returns a function type's output parameter count. It panics if the type's Kind is not Func.
	public function numMethod():stdgo.GoInt;	// NumMethod returns the number of methods accessible using Method. For a non-interface type, it returns the number of exported methods. For an interface type, it returns the number of exported and unexported methods.
	public function numIn():stdgo.GoInt;	// NumIn returns a function type's input parameter count. It panics if the type's Kind is not Func.
	public function numField():stdgo.GoInt;	// NumField returns a struct type's field count. It panics if the type's Kind is not Struct.
	public function name():stdgo.GoString;	// Name returns the type's name within its package for a defined type. For other (non-defined) types it returns the empty string.
	public function methodByName(_0:stdgo.GoString):{
		_1:Bool;
		_0:stdgo._internal.reflect.Method;
	};	// MethodByName returns the method with that name in the type's method set and a boolean indicating if the method was found. For a non-interface type T or *T, the returned Method's Type and Func fields describe a function whose first argument is the receiver. For an interface type, the returned Method's Type field gives the method signature, without a receiver, and the Func field is nil.
	public function method(_0:stdgo.GoInt):stdgo._internal.reflect.Method;	// Method returns the i'th method in the type's method set. It panics if i is not in the range [0, NumMethod()). For a non-interface type T or *T, the returned Method's Type and Func fields describe a function whose first argument is the receiver, and only exported methods are accessible. For an interface type, the returned Method's Type field gives the method signature, without a receiver, and the Func field is nil. Methods are sorted in lexicographic order.
	public function len():stdgo.GoInt;	// Len returns an array type's length. It panics if the type's Kind is not Array.
	public function kind():stdgo._internal.reflect.Kind;	// Kind returns the specific kind of this type.
	public function key():stdgo._internal.reflect.Type_;	// Key returns a map type's key type. It panics if the type's Kind is not Map.
	public function isVariadic():Bool;	// IsVariadic reports whether a function type's final input parameter is a "..." parameter. If so, t.In(t.NumIn() - 1) returns the parameter's implicit actual type []T. For concreteness, if t represents func(x int, y ... float64), then t.NumIn() == 2 t.In(0) is the reflect.Type for "int" t.In(1) is the reflect.Type for "[]float64" t.IsVariadic() == true IsVariadic panics if the type's Kind is not Func.
	public function in_(_i:stdgo.GoInt):stdgo._internal.reflect.Type_;	// In returns the type of a function type's i'th input parameter. It panics if the type's Kind is not Func. It panics if i is not in the range [0, NumIn()).
	public function implements_(_u:stdgo._internal.reflect.Type_):Bool;	// Implements reports whether the type implements the interface type u.
	public function fieldByNameFunc(_match:()):{
		_1:Bool;
		_0:stdgo._internal.reflect.StructField;
	};	// FieldByNameFunc returns the struct field with a name that satisfies the match function and a boolean indicating if the field was found. FieldByNameFunc considers the fields in the struct itself and then the fields in any embedded structs, in breadth first order, stopping at the shallowest nesting depth containing one or more fields satisfying the match function. If multiple fields at that depth satisfy the match function, they cancel each other and FieldByNameFunc returns no match. This behavior mirrors Go's handling of name lookup in structs containing embedded fields.
	public function fieldByName(_name:stdgo.GoString):{
		_1:Bool;
		_0:stdgo._internal.reflect.StructField;
	};	// FieldByName returns the struct field with the given name and a boolean indicating if the field was found.
	public function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.StructField;	// FieldByIndex returns the nested field corresponding to the index sequence. It is equivalent to calling Field successively for each index i. It panics if the type's Kind is not Struct.
	public function fieldAlign():stdgo.GoInt;	// FieldAlign returns the alignment in bytes of a value of this type when used as a field in a struct.
	public function field(_i:stdgo.GoInt):stdgo._internal.reflect.StructField;	// Field returns a struct type's i'th field. It panics if the type's Kind is not Struct. It panics if i is not in the range [0, NumField()).
	public function elem():stdgo._internal.reflect.Type_;	// Elem returns a type's element type. It panics if the type's Kind is not Array, Chan, Map, Pointer, or Slice.
	public function convertibleTo(_u:stdgo._internal.reflect.Type_):Bool;	// ConvertibleTo reports whether a value of the type is convertible to type u. Even if ConvertibleTo returns true, the conversion may still panic. For example, a slice of type []T is convertible to *[N]T, but the conversion will panic if its length is less than N.
	public function comparable_():Bool;	// Comparable reports whether values of this type are comparable. Even if Comparable returns true, the comparison may still panic. For example, values of interface type are comparable, but the comparison will panic if their dynamic type is not comparable.
	public function chanDir():stdgo._internal.reflect.ChanDir;	// ChanDir returns a channel type's direction. It panics if the type's Kind is not Chan.
	public function bits():stdgo.GoInt;	// Bits returns the size of the type in bits. It panics if the type's Kind is not one of the sized or unsized Int, Uint, Float, or Complex kinds.
	public function assignableTo(_u:stdgo._internal.reflect.Type_):Bool;	// AssignableTo reports whether a value of the type is assignable to type u.
	public function align():stdgo.GoInt;	// Align returns the alignment in bytes of a value of this type when allocated in memory.
};
```


