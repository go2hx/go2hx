# Module: `stdgo.reflect`

[(view library index)](../stdgo.md)


# Overview


Package reflect implements run\-time reflection, allowing a program to  manipulate objects with arbitrary types. The typical use is to take a value  with static type interface\{\} and extract its dynamic type information by  calling TypeOf, which returns a Type.    A call to ValueOf returns a Value representing the run\-time data.  Zero takes a Type and returns a Value representing a zero value  for that type.    See "The Laws of Reflection" for an introduction to reflection in Go:  https://golang.org/doc/articles/laws_of_reflection.html 


# Index


- [Constants](<#constants>)

- [`function append(_s:stdgo.reflect.Value, _x:haxe.Rest<stdgo.reflect.Value>):stdgo.reflect.Value`](<#function-append>)

- [`function appendSlice(_s:stdgo.reflect.Value, _t:stdgo.reflect.Value):stdgo.reflect.Value`](<#function-appendslice>)

- [`function arrayOf(_length:stdgo.GoInt, _elem:stdgo.reflect.Type):stdgo.reflect.Type`](<#function-arrayof>)

- [`function chanOf(_dir:stdgo.reflect.ChanDir, _t:stdgo.reflect.Type):stdgo.reflect.Type`](<#function-chanof>)

- [`function copy(_dst:stdgo.reflect.Value, _src:stdgo.reflect.Value):stdgo.GoInt`](<#function-copy>)

- [`function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool`](<#function-deepequal>)

- [`function funcOf(_in:stdgo.Slice<stdgo.reflect.Type>, _out:stdgo.Slice<stdgo.reflect.Type>, _variadic:Bool):stdgo.reflect.Type`](<#function-funcof>)

- [`function indirect(_v:stdgo.reflect.Value):stdgo.reflect.Value`](<#function-indirect>)

- [`function makeChan(_typ:stdgo.reflect.Type, _buffer:stdgo.GoInt):stdgo.reflect.Value`](<#function-makechan>)

- [`function makeFunc(_typ:stdgo.reflect.Type, _fn:(_args:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>):stdgo.reflect.Value`](<#function-makefunc>)

- [`function makeMap(_typ:stdgo.reflect.Type):stdgo.reflect.Value`](<#function-makemap>)

- [`function makeMapWithSize(_typ:stdgo.reflect.Type, _n:stdgo.GoInt):stdgo.reflect.Value`](<#function-makemapwithsize>)

- [`function makeSlice(_typ:stdgo.reflect.Type, _len:stdgo.GoInt, _cap:stdgo.GoInt):stdgo.reflect.Value`](<#function-makeslice>)

- [`function mapOf(_key:stdgo.reflect.Type, _elem:stdgo.reflect.Type):stdgo.reflect.Type`](<#function-mapof>)

- [`function newAt(_typ:stdgo.reflect.Type, _p:stdgo.unsafe.UnsafePointer):stdgo.reflect.Value`](<#function-newat>)

- [`function new_(_typ:stdgo.reflect.Type):stdgo.reflect.Value`](<#function-new_>)

- [`function pointerTo(_t:stdgo.reflect.Type):stdgo.reflect.Type`](<#function-pointerto>)

- [`function ptrTo(_t:stdgo.reflect.Type):stdgo.reflect.Type`](<#function-ptrto>)

- [`function select(_cases:stdgo.Slice<stdgo.reflect.SelectCase>):{_2:Bool, _1:stdgo.reflect.Value, _0:stdgo.GoInt}`](<#function-select>)

- [`function sliceOf(_t:stdgo.reflect.Type):stdgo.reflect.Type`](<#function-sliceof>)

- [`function structOf(_fields:stdgo.Slice<stdgo.reflect.StructField>):stdgo.reflect.Type`](<#function-structof>)

- [`function swapper(_slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#function-swapper>)

- [`function typeOf(_i:stdgo.AnyInterface):stdgo.reflect.Type`](<#function-typeof>)

- [`function valueOf(_i:stdgo.AnyInterface):stdgo.reflect.Value`](<#function-valueof>)

- [`function visibleFields(_t:stdgo.reflect.Type):stdgo.Slice<stdgo.reflect.StructField>`](<#function-visiblefields>)

- [`function zero(_typ:stdgo.reflect.Type):stdgo.reflect.Value`](<#function-zero>)

- [class ChanDir\_static\_extension](<#class-chandir_static_extension>)

  - [`function string():stdgo.GoString`](<#chandir_static_extension-function-string>)

- [class Kind\_static\_extension](<#class-kind_static_extension>)

  - [`function string():stdgo.GoString`](<#kind_static_extension-function-string>)

- [class MapIter](<#class-mapiter>)

  - [`function new():Void`](<#mapiter-function-new>)

  - [`function key():stdgo.reflect.Value`](<#mapiter-function-key>)

  - [`function next():Bool`](<#mapiter-function-next>)

  - [`function reset( _v:stdgo.reflect.Value):Void`](<#mapiter-function-reset>)

  - [`function value():stdgo.reflect.Value`](<#mapiter-function-value>)

- [class MapIter\_static\_extension](<#class-mapiter_static_extension>)

  - [`function key():stdgo.reflect.Value`](<#mapiter_static_extension-function-key>)

  - [`function next():Bool`](<#mapiter_static_extension-function-next>)

  - [`function reset( _v:stdgo.reflect.Value):Void`](<#mapiter_static_extension-function-reset>)

  - [`function value():stdgo.reflect.Value`](<#mapiter_static_extension-function-value>)

- [class Method](<#class-method>)

  - [`function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo.reflect.Type>, ?func:stdgo.reflect.Value, ?index:Null<stdgo.GoInt>):Void`](<#method-function-new>)

  - [`function isExported():Bool`](<#method-function-isexported>)

- [class Method\_static\_extension](<#class-method_static_extension>)

  - [`function isExported():Bool`](<#method_static_extension-function-isexported>)

- [class SelectCase](<#class-selectcase>)

  - [`function new(?dir:Null<stdgo.reflect.SelectDir>, ?chan:stdgo.reflect.Value, ?send:stdgo.reflect.Value):Void`](<#selectcase-function-new>)

- [class SliceHeader](<#class-sliceheader>)

  - [`function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>):Void`](<#sliceheader-function-new>)

- [class StringHeader](<#class-stringheader>)

  - [`function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>):Void`](<#stringheader-function-new>)

- [class StructField](<#class-structfield>)

  - [`function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo.reflect.Type>, ?tag:Null<stdgo.reflect.StructTag>, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool):Void`](<#structfield-function-new>)

  - [`function isExported():Bool`](<#structfield-function-isexported>)

- [class StructField\_static\_extension](<#class-structfield_static_extension>)

  - [`function isExported():Bool`](<#structfield_static_extension-function-isexported>)

- [class StructTag\_static\_extension](<#class-structtag_static_extension>)

  - [`function get( _key:stdgo.GoString):stdgo.GoString`](<#structtag_static_extension-function-get>)

  - [`function lookup( _key:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}`](<#structtag_static_extension-function-lookup>)

- [class Value](<#class-value>)

  - [`function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:Null<stdgo.GoInt>, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool):Void`](<#value-function-new>)

  - [`function addr():stdgo.reflect.Value`](<#value-function-addr>)

  - [`function bool_():Bool`](<#value-function-bool_>)

  - [`function bytes():stdgo.Slice<stdgo.GoByte>`](<#value-function-bytes>)

  - [`function call( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>`](<#value-function-call>)

  - [`function callSlice( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>`](<#value-function-callslice>)

  - [`function canAddr():Bool`](<#value-function-canaddr>)

  - [`function canComplex():Bool`](<#value-function-cancomplex>)

  - [`function canConvert( _t:stdgo.reflect.Type):Bool`](<#value-function-canconvert>)

  - [`function canFloat():Bool`](<#value-function-canfloat>)

  - [`function canInt():Bool`](<#value-function-canint>)

  - [`function canInterface():Bool`](<#value-function-caninterface>)

  - [`function canSet():Bool`](<#value-function-canset>)

  - [`function canUint():Bool`](<#value-function-canuint>)

  - [`function cap():stdgo.GoInt`](<#value-function-cap>)

  - [`function close():Void`](<#value-function-close>)

  - [`function complex():stdgo.GoComplex128`](<#value-function-complex>)

  - [`function convert( _t:stdgo.reflect.Type):stdgo.reflect.Value`](<#value-function-convert>)

  - [`function elem():stdgo.reflect.Value`](<#value-function-elem>)

  - [`function field( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-field>)

  - [`function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.Value`](<#value-function-fieldbyindex>)

  - [`function fieldByIndexErr( _index:stdgo.Slice<stdgo.GoInt>):{_1:stdgo.Error, _0:stdgo.reflect.Value}`](<#value-function-fieldbyindexerr>)

  - [`function fieldByName( _name:stdgo.GoString):stdgo.reflect.Value`](<#value-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):stdgo.reflect.Value`](<#value-function-fieldbynamefunc>)

  - [`function float_():stdgo.GoFloat64`](<#value-function-float_>)

  - [`function index( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-index>)

  - [`function int_():stdgo.GoInt64`](<#value-function-int_>)

  - [`function interfaceData():stdgo.GoArray<stdgo.GoUIntptr>`](<#value-function-interfacedata>)

  - [`function interface_():stdgo.AnyInterface`](<#value-function-interface_>)

  - [`function isNil():Bool`](<#value-function-isnil>)

  - [`function isValid():Bool`](<#value-function-isvalid>)

  - [`function isZero():Bool`](<#value-function-iszero>)

  - [`function kind():stdgo.reflect.Kind`](<#value-function-kind>)

  - [`function len():stdgo.GoInt`](<#value-function-len>)

  - [`function mapIndex( _key:stdgo.reflect.Value):stdgo.reflect.Value`](<#value-function-mapindex>)

  - [`function mapKeys():stdgo.Slice<stdgo.reflect.Value>`](<#value-function-mapkeys>)

  - [`function mapRange():stdgo.Ref<stdgo.reflect.MapIter>`](<#value-function-maprange>)

  - [`function method( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-method>)

  - [`function methodByName( _name:stdgo.GoString):stdgo.reflect.Value`](<#value-function-methodbyname>)

  - [`function numField():stdgo.GoInt`](<#value-function-numfield>)

  - [`function numMethod():stdgo.GoInt`](<#value-function-nummethod>)

  - [`function overflowComplex( _x:stdgo.GoComplex128):Bool`](<#value-function-overflowcomplex>)

  - [`function overflowFloat( _x:stdgo.GoFloat64):Bool`](<#value-function-overflowfloat>)

  - [`function overflowInt( _x:stdgo.GoInt64):Bool`](<#value-function-overflowint>)

  - [`function overflowUint( _x:stdgo.GoUInt64):Bool`](<#value-function-overflowuint>)

  - [`function pointer():stdgo.GoUIntptr`](<#value-function-pointer>)

  - [`function recv():{_1:Bool, _0:stdgo.reflect.Value}`](<#value-function-recv>)

  - [`function send( _x:stdgo.reflect.Value):Void`](<#value-function-send>)

  - [`function set( _x:stdgo.reflect.Value):Void`](<#value-function-set>)

  - [`function setBool( _x:Bool):Void`](<#value-function-setbool>)

  - [`function setBytes( _x:stdgo.Slice<stdgo.GoByte>):Void`](<#value-function-setbytes>)

  - [`function setCap( _n:stdgo.GoInt):Void`](<#value-function-setcap>)

  - [`function setComplex( _x:stdgo.GoComplex128):Void`](<#value-function-setcomplex>)

  - [`function setFloat( _x:stdgo.GoFloat64):Void`](<#value-function-setfloat>)

  - [`function setInt( _x:stdgo.GoInt64):Void`](<#value-function-setint>)

  - [`function setIterKey( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void`](<#value-function-setiterkey>)

  - [`function setIterValue( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void`](<#value-function-setitervalue>)

  - [`function setLen( _n:stdgo.GoInt):Void`](<#value-function-setlen>)

  - [`function setMapIndex( _key:stdgo.reflect.Value, _elem:stdgo.reflect.Value):Void`](<#value-function-setmapindex>)

  - [`function setPointer( _x:stdgo.unsafe.UnsafePointer):Void`](<#value-function-setpointer>)

  - [`function setString( _x:stdgo.GoString):Void`](<#value-function-setstring>)

  - [`function setUint( _x:stdgo.GoUInt64):Void`](<#value-function-setuint>)

  - [`function slice( _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-slice>)

  - [`function slice3( _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-slice3>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function tryRecv():{_1:Bool, _0:stdgo.reflect.Value}`](<#value-function-tryrecv>)

  - [`function trySend( _x:stdgo.reflect.Value):Bool`](<#value-function-trysend>)

  - [`function type():stdgo.reflect.Type`](<#value-function-type>)

  - [`function uint():stdgo.GoUInt64`](<#value-function-uint>)

  - [`function unsafeAddr():stdgo.GoUIntptr`](<#value-function-unsafeaddr>)

  - [`function unsafePointer():stdgo.unsafe.UnsafePointer`](<#value-function-unsafepointer>)

- [class ValueError](<#class-valueerror>)

  - [`function new(?method:stdgo.GoString, ?kind:Null<stdgo.reflect.Kind>):Void`](<#valueerror-function-new>)

  - [`function error():stdgo.GoString`](<#valueerror-function-error>)

- [class ValueError\_static\_extension](<#class-valueerror_static_extension>)

  - [`function error():stdgo.GoString`](<#valueerror_static_extension-function-error>)

- [class Value\_static\_extension](<#class-value_static_extension>)

  - [`function addr():stdgo.reflect.Value`](<#value_static_extension-function-addr>)

  - [`function bool_():Bool`](<#value_staticextension-function-bool>)

  - [`function bytes():stdgo.Slice<stdgo.GoByte>`](<#value_static_extension-function-bytes>)

  - [`function call( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>`](<#value_static_extension-function-call>)

  - [`function callSlice( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>`](<#value_static_extension-function-callslice>)

  - [`function canAddr():Bool`](<#value_static_extension-function-canaddr>)

  - [`function canComplex():Bool`](<#value_static_extension-function-cancomplex>)

  - [`function canConvert( _t:stdgo.reflect.Type):Bool`](<#value_static_extension-function-canconvert>)

  - [`function canFloat():Bool`](<#value_static_extension-function-canfloat>)

  - [`function canInt():Bool`](<#value_static_extension-function-canint>)

  - [`function canInterface():Bool`](<#value_static_extension-function-caninterface>)

  - [`function canSet():Bool`](<#value_static_extension-function-canset>)

  - [`function canUint():Bool`](<#value_static_extension-function-canuint>)

  - [`function cap():stdgo.GoInt`](<#value_static_extension-function-cap>)

  - [`function close():Void`](<#value_static_extension-function-close>)

  - [`function complex():stdgo.GoComplex128`](<#value_static_extension-function-complex>)

  - [`function convert( _t:stdgo.reflect.Type):stdgo.reflect.Value`](<#value_static_extension-function-convert>)

  - [`function elem():stdgo.reflect.Value`](<#value_static_extension-function-elem>)

  - [`function field( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value_static_extension-function-field>)

  - [`function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.Value`](<#value_static_extension-function-fieldbyindex>)

  - [`function fieldByIndexErr( _index:stdgo.Slice<stdgo.GoInt>):{_1:stdgo.Error, _0:stdgo.reflect.Value}`](<#value_static_extension-function-fieldbyindexerr>)

  - [`function fieldByName( _name:stdgo.GoString):stdgo.reflect.Value`](<#value_static_extension-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):stdgo.reflect.Value`](<#value_static_extension-function-fieldbynamefunc>)

  - [`function float_():stdgo.GoFloat64`](<#value_staticextension-function-float>)

  - [`function index( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value_static_extension-function-index>)

  - [`function int_():stdgo.GoInt64`](<#value_staticextension-function-int>)

  - [`function interfaceData():stdgo.GoArray<stdgo.GoUIntptr>`](<#value_static_extension-function-interfacedata>)

  - [`function interface_():stdgo.AnyInterface`](<#value_staticextension-function-interface>)

  - [`function isNil():Bool`](<#value_static_extension-function-isnil>)

  - [`function isValid():Bool`](<#value_static_extension-function-isvalid>)

  - [`function isZero():Bool`](<#value_static_extension-function-iszero>)

  - [`function kind():stdgo.reflect.Kind`](<#value_static_extension-function-kind>)

  - [`function len():stdgo.GoInt`](<#value_static_extension-function-len>)

  - [`function mapIndex( _key:stdgo.reflect.Value):stdgo.reflect.Value`](<#value_static_extension-function-mapindex>)

  - [`function mapKeys():stdgo.Slice<stdgo.reflect.Value>`](<#value_static_extension-function-mapkeys>)

  - [`function mapRange():stdgo.Ref<stdgo.reflect.MapIter>`](<#value_static_extension-function-maprange>)

  - [`function method( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value_static_extension-function-method>)

  - [`function methodByName( _name:stdgo.GoString):stdgo.reflect.Value`](<#value_static_extension-function-methodbyname>)

  - [`function numField():stdgo.GoInt`](<#value_static_extension-function-numfield>)

  - [`function numMethod():stdgo.GoInt`](<#value_static_extension-function-nummethod>)

  - [`function overflowComplex( _x:stdgo.GoComplex128):Bool`](<#value_static_extension-function-overflowcomplex>)

  - [`function overflowFloat( _x:stdgo.GoFloat64):Bool`](<#value_static_extension-function-overflowfloat>)

  - [`function overflowInt( _x:stdgo.GoInt64):Bool`](<#value_static_extension-function-overflowint>)

  - [`function overflowUint( _x:stdgo.GoUInt64):Bool`](<#value_static_extension-function-overflowuint>)

  - [`function pointer():stdgo.GoUIntptr`](<#value_static_extension-function-pointer>)

  - [`function recv():{_1:Bool, _0:stdgo.reflect.Value}`](<#value_static_extension-function-recv>)

  - [`function send( _x:stdgo.reflect.Value):Void`](<#value_static_extension-function-send>)

  - [`function set( _x:stdgo.reflect.Value):Void`](<#value_static_extension-function-set>)

  - [`function setBool( _x:Bool):Void`](<#value_static_extension-function-setbool>)

  - [`function setBytes( _x:stdgo.Slice<stdgo.GoByte>):Void`](<#value_static_extension-function-setbytes>)

  - [`function setCap( _n:stdgo.GoInt):Void`](<#value_static_extension-function-setcap>)

  - [`function setComplex( _x:stdgo.GoComplex128):Void`](<#value_static_extension-function-setcomplex>)

  - [`function setFloat( _x:stdgo.GoFloat64):Void`](<#value_static_extension-function-setfloat>)

  - [`function setInt( _x:stdgo.GoInt64):Void`](<#value_static_extension-function-setint>)

  - [`function setIterKey( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void`](<#value_static_extension-function-setiterkey>)

  - [`function setIterValue( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void`](<#value_static_extension-function-setitervalue>)

  - [`function setLen( _n:stdgo.GoInt):Void`](<#value_static_extension-function-setlen>)

  - [`function setMapIndex( _key:stdgo.reflect.Value, _elem:stdgo.reflect.Value):Void`](<#value_static_extension-function-setmapindex>)

  - [`function setPointer( _x:stdgo.unsafe.UnsafePointer):Void`](<#value_static_extension-function-setpointer>)

  - [`function setString( _x:stdgo.GoString):Void`](<#value_static_extension-function-setstring>)

  - [`function setUint( _x:stdgo.GoUInt64):Void`](<#value_static_extension-function-setuint>)

  - [`function slice( _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.reflect.Value`](<#value_static_extension-function-slice>)

  - [`function slice3( _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo.reflect.Value`](<#value_static_extension-function-slice3>)

  - [`function string():stdgo.GoString`](<#value_static_extension-function-string>)

  - [`function tryRecv():{_1:Bool, _0:stdgo.reflect.Value}`](<#value_static_extension-function-tryrecv>)

  - [`function trySend( _x:stdgo.reflect.Value):Bool`](<#value_static_extension-function-trysend>)

  - [`function type():stdgo.reflect.Type`](<#value_static_extension-function-type>)

  - [`function uint():stdgo.GoUInt64`](<#value_static_extension-function-uint>)

  - [`function unsafeAddr():stdgo.GoUIntptr`](<#value_static_extension-function-unsafeaddr>)

  - [`function unsafePointer():stdgo.unsafe.UnsafePointer`](<#value_static_extension-function-unsafepointer>)

- [typedef ChanDir](<#typedef-chandir>)

  - [`function string():stdgo.GoString`](<#chandir-function-string>)

- [typedef Kind](<#typedef-kind>)

  - [`function string():stdgo.GoString`](<#kind-function-string>)

- [typedef SelectDir](<#typedef-selectdir>)

- [typedef StructTag](<#typedef-structtag>)

  - [`function get( _key:stdgo.GoString):stdgo.GoString`](<#structtag-function-get>)

  - [`function lookup( _key:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}`](<#structtag-function-lookup>)

- [typedef Type](<#typedef-type>)

# Constants


```haxe
import stdgo.reflect.Reflect
```


```haxe
final array:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final bool_:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final bothDir:stdgo.reflect.ChanDir = ((((0 : GoInt)) : ChanDir))
```


chan 


```haxe
final chan:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final complex128:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final complex64:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final float32:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final float64:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final func:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final int16:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final int32:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final int64:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final int8:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final int_:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final interface_:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final invalid:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final map:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final pointer:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final ptr:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


Ptr is the old name for the Pointer kind. 


```haxe
final recvDir:stdgo.reflect.ChanDir = ((((0 : GoInt)) : ChanDir))
```


\<\-chan 


```haxe
final selectDefault:stdgo.InvalidType = @:unknown_default_value null
```


default 


```haxe
final selectRecv:stdgo.InvalidType = @:unknown_default_value null
```


case \<\-Chan: 


```haxe
final selectSend:stdgo.InvalidType = @:unknown_default_value null
```


case Chan \<\- Send 


```haxe
final sendDir:stdgo.reflect.ChanDir = ((((0 : GoInt)) : ChanDir))
```


chan\<\- 


```haxe
final slice:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final string:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final struct_:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final uint:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final uint16:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final uint32:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final uint64:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final uint8:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final uintptr:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


```haxe
final unsafePointer:stdgo.reflect.Kind = ((((0 : GoUInt)) : Kind))
```


# Functions


```haxe
import stdgo.reflect.Reflect
```


## function append


```haxe
function append(_s:stdgo.reflect.Value, _x:haxe.Rest<stdgo.reflect.Value>):stdgo.reflect.Value
```


Append appends the values x to a slice s and returns the resulting slice.  As in Go, each x's value must be assignable to the slice's element type. 


[\(view code\)](<./Reflect.hx#L877>)


## function appendSlice


```haxe
function appendSlice(_s:stdgo.reflect.Value, _t:stdgo.reflect.Value):stdgo.reflect.Value
```


AppendSlice appends a slice t to a slice s and returns the resulting slice.  The slices s and t must have the same element type. 


[\(view code\)](<./Reflect.hx#L884>)


## function arrayOf


```haxe
function arrayOf(_length:stdgo.GoInt, _elem:stdgo.reflect.Type):stdgo.reflect.Type
```


ArrayOf returns the array type with the given length and element type.  For example, if t represents int, ArrayOf\(5, t\) represents \[5\]int.    If the resulting type would be larger than the available address space,  ArrayOf panics. 


[\(view code\)](<./Reflect.hx#L870>)


## function chanOf


```haxe
function chanOf(_dir:stdgo.reflect.ChanDir, _t:stdgo.reflect.Type):stdgo.reflect.Type
```


ChanOf returns the channel type with the given direction and element type.  For example, if t represents int, ChanOf\(RecvDir, t\) represents \<\-chan int.    The gc runtime imposes a limit of 64 kB on channel element types.  If t's size is equal to or exceeds this limit, ChanOf panics. 


[\(view code\)](<./Reflect.hx#L818>)


## function copy


```haxe
function copy(_dst:stdgo.reflect.Value, _src:stdgo.reflect.Value):stdgo.GoInt
```


Copy copies the contents of src into dst until either  dst has been filled or src has been exhausted.  It returns the number of elements copied.  Dst and src each must have kind Slice or Array, and  dst and src must have the same element type.    As a special case, src can have kind String if the element type of dst is kind Uint8. 


[\(view code\)](<./Reflect.hx#L896>)


## function deepEqual


```haxe
function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool
```


DeepEqual reports whether x and y are “deeply equal,” defined as follows.  Two values of identical type are deeply equal if one of the following cases applies.  Values of distinct types are never deeply equal.    Array values are deeply equal when their corresponding elements are deeply equal.    Struct values are deeply equal if their corresponding fields,  both exported and unexported, are deeply equal.    Func values are deeply equal if both are nil; otherwise they are not deeply equal.    Interface values are deeply equal if they hold deeply equal concrete values.    Map values are deeply equal when all of the following are true:  they are both nil or both non\-nil, they have the same length,  and either they are the same map object or their corresponding keys  \(matched using Go equality\) map to deeply equal values.    Pointer values are deeply equal if they are equal using Go's == operator  or if they point to deeply equal values.    Slice values are deeply equal when all of the following are true:  they are both nil or both non\-nil, they have the same length,  and either they point to the same initial entry of the same underlying array  \(that is, &x\[0\] == &y\[0\]\) or their corresponding elements \(up to length\) are deeply equal.  Note that a non\-nil empty slice and a nil slice \(for example, \[\]byte\{\} and \[\]byte\(nil\)\)  are not deeply equal.    Other values \- numbers, bools, strings, and channels \- are deeply equal  if they are equal using Go's == operator.    In general DeepEqual is a recursive relaxation of Go's == operator.  However, this idea is impossible to implement without some inconsistency.  Specifically, it is possible for a value to be unequal to itself,  either because it is of func type \(uncomparable in general\)  or because it is a floating\-point NaN value \(not equal to itself in floating\-point comparison\),  or because it is an array, struct, or interface containing  such a value.  On the other hand, pointer values are always equal to themselves,  even if they point at or contain such problematic values,  because they compare equal using Go's == operator, and that  is a sufficient condition to be deeply equal, regardless of content.  DeepEqual has been defined so that the same short\-cut applies  to slices and maps: if x and y are the same slice or the same map,  they are deeply equal regardless of content.    As DeepEqual traverses the data values it may find a cycle. The  second and subsequent times that DeepEqual compares two pointer  values that have been compared before, it treats the values as  equal rather than examining the values to which they point.  This ensures that DeepEqual terminates. 


[\(view code\)](<./Reflect.hx#L736>)


## function funcOf


```haxe
function funcOf(_in:stdgo.Slice<stdgo.reflect.Type>, _out:stdgo.Slice<stdgo.reflect.Type>, _variadic:Bool):stdgo.reflect.Type
```


FuncOf returns the function type with the given argument and result types.  For example if k represents int and e represents string,  FuncOf\(\[\]Type\{k\}, \[\]Type\{e\}, false\) represents func\(int\) string.    The variadic argument controls whether the function is variadic. FuncOf  panics if the in\[len\(in\)\-1\] does not represent a slice and variadic is  true. 


[\(view code\)](<./Reflect.hx#L841>)


## function indirect


```haxe
function indirect(_v:stdgo.reflect.Value):stdgo.reflect.Value
```


Indirect returns the value that v points to.  If v is a nil pointer, Indirect returns a zero Value.  If v is not a pointer, Indirect returns v. 


[\(view code\)](<./Reflect.hx#L943>)


## function makeChan


```haxe
function makeChan(_typ:stdgo.reflect.Type, _buffer:stdgo.GoInt):stdgo.reflect.Value
```


MakeChan creates a new channel with the specified type and buffer size. 


[\(view code\)](<./Reflect.hx#L922>)


## function makeFunc


```haxe
function makeFunc(_typ:stdgo.reflect.Type, _fn:(_args:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>):stdgo.reflect.Value
```


MakeFunc returns a new function of the given Type  that wraps the function fn. When called, that new function  does the following:    \- converts its arguments to a slice of Values.  \- runs results := fn\(args\).  \- returns the results as a slice of Values, one per formal result.    The implementation fn can assume that the argument Value slice  has the number and type of arguments given by typ.  If typ describes a variadic function, the final Value is itself  a slice representing the variadic arguments, as in the  body of a variadic function. The result Value slice returned by fn  must have the number and type of results given by typ.    The Value.Call method allows the caller to invoke a typed function  in terms of Values; in contrast, MakeFunc allows the caller to implement  a typed function in terms of Values.    The Examples section of the documentation includes an illustration  of how to use MakeFunc to build a swap function for different types. 


[\(view code\)](<./Reflect.hx#L771>)


## function makeMap


```haxe
function makeMap(_typ:stdgo.reflect.Type):stdgo.reflect.Value
```


MakeMap creates a new map with the specified type. 


[\(view code\)](<./Reflect.hx#L928>)


## function makeMapWithSize


```haxe
function makeMapWithSize(_typ:stdgo.reflect.Type, _n:stdgo.GoInt):stdgo.reflect.Value
```


MakeMapWithSize creates a new map with the specified type  and initial space for approximately n elements. 


[\(view code\)](<./Reflect.hx#L935>)


## function makeSlice


```haxe
function makeSlice(_typ:stdgo.reflect.Type, _len:stdgo.GoInt, _cap:stdgo.GoInt):stdgo.reflect.Value
```


MakeSlice creates a new zero\-initialized slice value  for the specified slice type, length, and capacity. 


[\(view code\)](<./Reflect.hx#L916>)


## function mapOf


```haxe
function mapOf(_key:stdgo.reflect.Type, _elem:stdgo.reflect.Type):stdgo.reflect.Type
```


MapOf returns the map type with the given key and element types.  For example, if k represents int and e represents string,  MapOf\(k, e\) represents map\[int\]string.    If the key type is not a valid map key type \(that is, if it does  not implement Go's == operator\), MapOf panics. 


[\(view code\)](<./Reflect.hx#L829>)


## function newAt


```haxe
function newAt(_typ:stdgo.reflect.Type, _p:stdgo.unsafe.UnsafePointer):stdgo.reflect.Value
```


NewAt returns a Value representing a pointer to a value of the  specified type, using p as that pointer. 


[\(view code\)](<./Reflect.hx#L979>)


## function new\_


```haxe
function new_(_typ:stdgo.reflect.Type):stdgo.reflect.Value
```


New returns a Value representing a pointer to a new zero value  for the specified type. That is, the returned Value's Type is PointerTo\(typ\). 


[\(view code\)](<./Reflect.hx#L967>)


## function pointerTo


```haxe
function pointerTo(_t:stdgo.reflect.Type):stdgo.reflect.Type
```


PointerTo returns the pointer type with element t.  For example, if t represents type Foo, PointerTo\(t\) represents \*Foo. 


[\(view code\)](<./Reflect.hx#L808>)


## function ptrTo


```haxe
function ptrTo(_t:stdgo.reflect.Type):stdgo.reflect.Type
```


PtrTo returns the pointer type with element t.  For example, if t represents type Foo, PtrTo\(t\) represents \*Foo.    PtrTo is the old spelling of PointerTo.  The two functions behave identically. 


[\(view code\)](<./Reflect.hx#L801>)


## function select


```haxe
function select(_cases:stdgo.Slice<stdgo.reflect.SelectCase>):{_2:Bool, _1:stdgo.reflect.Value, _0:stdgo.GoInt}
```


Select executes a select operation described by the list of cases.  Like the Go select statement, it blocks until at least one of the cases  can proceed, makes a uniform pseudo\-random choice,  and then executes that case. It returns the index of the chosen case  and, if that case was a receive operation, the value received and a  boolean indicating whether the value corresponds to a send on the channel  \(as opposed to a zero value received because the channel is closed\).  Select supports a maximum of 65536 cases. 


[\(view code\)](<./Reflect.hx#L909>)


## function sliceOf


```haxe
function sliceOf(_t:stdgo.reflect.Type):stdgo.reflect.Type
```


SliceOf returns the slice type with element type t.  For example, if t represents int, SliceOf\(t\) represents \[\]int. 


[\(view code\)](<./Reflect.hx#L848>)


## function structOf


```haxe
function structOf(_fields:stdgo.Slice<stdgo.reflect.StructField>):stdgo.reflect.Type
```


StructOf returns the struct type containing fields.  The Offset and Index fields are ignored and computed as they would be  by the compiler.    StructOf currently does not generate wrapper methods for embedded  fields and panics if passed unexported StructFields.  These limitations may be lifted in a future version. 


[\(view code\)](<./Reflect.hx#L860>)


## function swapper


```haxe
function swapper(_slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


Swapper returns a function that swaps the elements in the provided  slice.    Swapper panics if the provided interface is not a slice. 


[\(view code\)](<./Reflect.hx#L780>)


## function typeOf


```haxe
function typeOf(_i:stdgo.AnyInterface):stdgo.reflect.Type
```


TypeOf returns the reflection Type that represents the dynamic type of i.  If i is a nil interface value, TypeOf returns nil. 


[\(view code\)](<./Reflect.hx#L786>)


## function valueOf


```haxe
function valueOf(_i:stdgo.AnyInterface):stdgo.reflect.Value
```


ValueOf returns a new Value initialized to the concrete value  stored in the interface i. ValueOf\(nil\) returns the zero Value. 


[\(view code\)](<./Reflect.hx#L949>)


## function visibleFields


```haxe
function visibleFields(_t:stdgo.reflect.Type):stdgo.Slice<stdgo.reflect.StructField>
```


VisibleFields returns all the visible fields in t, which must be a  struct type. A field is defined as visible if it's accessible  directly with a FieldByName call. The returned fields include fields  inside anonymous struct members and unexported fields. They follow  the same order found in the struct, with anonymous fields followed  immediately by their promoted fields.    For each element e of the returned slice, the corresponding field  can be retrieved from a value v of type t by calling v.FieldByIndex\(e.Index\). 


[\(view code\)](<./Reflect.hx#L993>)


## function zero


```haxe
function zero(_typ:stdgo.reflect.Type):stdgo.reflect.Value
```


Zero returns a Value representing the zero value for the specified type.  The result is different from the zero value of the Value struct,  which represents no value at all.  For example, Zero\(TypeOf\(42\)\) returns a Value with Kind Int and value 0.  The returned value is neither addressable nor settable. 


[\(view code\)](<./Reflect.hx#L961>)


# Classes


```haxe
import stdgo.reflect.*
```


## class ChanDir\_static\_extension


 


### ChanDir\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L2839>)


## class Kind\_static\_extension


 


### Kind\_static\_extension function string


```haxe
function string():stdgo.GoString
```


String returns the name of k. 


[\(view code\)](<./Reflect.hx#L2754>)


## class MapIter


A MapIter is an iterator for ranging over a map.  See Value.MapRange. 


### MapIter function new


```haxe
function new():Void
```


 


[\(view code\)](<./Reflect.hx#L537>)


### MapIter function key


```haxe
function key():stdgo.reflect.Value
```


Key returns the key of iter's current map entry. 


[\(view code\)](<./Reflect.hx#L2724>)


### MapIter function next


```haxe
function next():Bool
```


Next advances the map iterator and reports whether there is another   entry. It returns false when iter is exhausted; subsequent   calls to Key, Value, or Next will panic. 


[\(view code\)](<./Reflect.hx#L2710>)


### MapIter function reset


```haxe
function reset( _v:stdgo.reflect.Value):Void
```


Reset modifies iter to iterate over v.   It panics if v's Kind is not Map and v is not the zero Value.   Reset\(Value\{\}\) causes iter to not to refer to any map,   which may allow the previously iterated\-over map to be garbage collected. 


[\(view code\)](<./Reflect.hx#L2701>)


### MapIter function value


```haxe
function value():stdgo.reflect.Value
```


Value returns the value of iter's current map entry. 


[\(view code\)](<./Reflect.hx#L2717>)


## class MapIter\_static\_extension


 


### MapIter\_static\_extension function key


```haxe
function key():stdgo.reflect.Value
```


Key returns the key of iter's current map entry. 


[\(view code\)](<./Reflect.hx#L2724>)


### MapIter\_static\_extension function next


```haxe
function next():Bool
```


Next advances the map iterator and reports whether there is another   entry. It returns false when iter is exhausted; subsequent   calls to Key, Value, or Next will panic. 


[\(view code\)](<./Reflect.hx#L2710>)


### MapIter\_static\_extension function reset


```haxe
function reset( _v:stdgo.reflect.Value):Void
```


Reset modifies iter to iterate over v.   It panics if v's Kind is not Map and v is not the zero Value.   Reset\(Value\{\}\) causes iter to not to refer to any map,   which may allow the previously iterated\-over map to be garbage collected. 


[\(view code\)](<./Reflect.hx#L2701>)


### MapIter\_static\_extension function value


```haxe
function value():stdgo.reflect.Value
```


Value returns the value of iter's current map entry. 


[\(view code\)](<./Reflect.hx#L2717>)


## class Method


Method represents a single method. 


```haxe
var func:stdgo.reflect.Value
```


func with receiver as first argument 


```haxe
var index:stdgo.GoInt
```


index for Type.Method 


```haxe
var name:stdgo.GoString
```


Name is the method name. 


```haxe
var pkgPath:stdgo.GoString
```


PkgPath is the package path that qualifies a lower case \(unexported\)   method name. It is empty for upper case \(exported\) method names.   The combination of PkgPath and Name uniquely identifies a method   in a method set.   See https://golang.org/ref/spec#Uniqueness_of_identifiers 


```haxe
var type:stdgo.reflect.Type
```


method type 


### Method function new


```haxe
function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo.reflect.Type>, ?func:stdgo.reflect.Value, ?index:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Reflect.hx#L364>)


### Method function isExported


```haxe
function isExported():Bool
```


IsExported reports whether the method is exported. 


[\(view code\)](<./Reflect.hx#L1023>)


## class Method\_static\_extension


 


### Method\_static\_extension function isExported


```haxe
function isExported():Bool
```


IsExported reports whether the method is exported. 


[\(view code\)](<./Reflect.hx#L1023>)


## class SelectCase


A SelectCase describes a single case in a select operation.  The kind of case depends on Dir, the communication direction.    If Dir is SelectDefault, the case represents a default case.  Chan and Send must be zero Values.    If Dir is SelectSend, the case represents a send operation.  Normally Chan's underlying value must be a channel, and Send's underlying value must be  assignable to the channel's element type. As a special case, if Chan is a zero Value,  then the case is ignored, and the field Send will also be ignored and may be either zero  or non\-zero.    If Dir is SelectRecv, the case represents a receive operation.  Normally Chan's underlying value must be a channel and Send must be a zero Value.  If Chan is a zero Value, then the case is ignored, but Send must still be a zero Value.  When a receive operation is selected, the received Value is returned by Select. 


```haxe
var chan:stdgo.reflect.Value
```


channel to use \(for send or receive\) 


```haxe
var dir:stdgo.reflect.SelectDir
```


direction of case 


```haxe
var send:stdgo.reflect.Value
```


value to send \(for send\) 


### SelectCase function new


```haxe
function new(?dir:Null<stdgo.reflect.SelectDir>, ?chan:stdgo.reflect.Value, ?send:stdgo.reflect.Value):Void
```


 


[\(view code\)](<./Reflect.hx#L638>)


## class SliceHeader


SliceHeader is the runtime representation of a slice.  It cannot be used safely or portably and its representation may  change in a later release.  Moreover, the Data field is not sufficient to guarantee the data  it references will not be garbage collected, so programs must keep  a separate, correctly typed pointer to the underlying data. 


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
function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Reflect.hx#L587>)


## class StringHeader


StringHeader is the runtime representation of a string.  It cannot be used safely or portably and its representation may  change in a later release.  Moreover, the Data field is not sufficient to guarantee the data  it references will not be garbage collected, so programs must keep  a separate, correctly typed pointer to the underlying data. 


```haxe
var data:stdgo.GoUIntptr
```


```haxe
var len:stdgo.GoInt
```


### StringHeader function new


```haxe
function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Reflect.hx#L559>)


## class StructField


A StructField describes a single field in a struct. 


```haxe
var anonymous:Bool
```


is an embedded field 


```haxe
var index:stdgo.Slice<stdgo.GoInt>
```


index sequence for Type.FieldByIndex 


```haxe
var name:stdgo.GoString
```


Name is the field name. 


```haxe
var offset:stdgo.GoUIntptr
```


offset within struct, in bytes 


```haxe
var pkgPath:stdgo.GoString
```


PkgPath is the package path that qualifies a lower case \(unexported\)   field name. It is empty for upper case \(exported\) field names.   See https://golang.org/ref/spec#Uniqueness_of_identifiers 


```haxe
var tag:stdgo.reflect.StructTag
```


field tag string 


```haxe
var type:stdgo.reflect.Type
```


field type 


### StructField function new


```haxe
function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo.reflect.Type>, ?tag:Null<stdgo.reflect.StructTag>, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool):Void
```


 


[\(view code\)](<./Reflect.hx#L426>)


### StructField function isExported


```haxe
function isExported():Bool
```


IsExported reports whether the field is exported. 


[\(view code\)](<./Reflect.hx#L1054>)


## class StructField\_static\_extension


 


### StructField\_static\_extension function isExported


```haxe
function isExported():Bool
```


IsExported reports whether the field is exported. 


[\(view code\)](<./Reflect.hx#L1054>)


## class StructTag\_static\_extension


 


### StructTag\_static\_extension function get


```haxe
function get( _key:stdgo.GoString):stdgo.GoString
```


Get returns the value associated with key in the tag string.   If there is no such key in the tag, Get returns the empty string.   If the tag does not have the conventional format, the value   returned by Get is unspecified. To determine whether a tag is   explicitly set to the empty string, use Lookup. 


[\(view code\)](<./Reflect.hx#L2902>)


### StructTag\_static\_extension function lookup


```haxe
function lookup( _key:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}
```


Lookup returns the value associated with key in the tag string.   If the key is present in the tag the value \(which may be empty\)   is returned. Otherwise the returned value will be the empty string.   The ok return value reports whether the value was explicitly set in   the tag string. If the tag does not have the conventional format,   the value returned by Lookup is unspecified. 


[\(view code\)](<./Reflect.hx#L2891>)


## class Value


Value is the reflection interface to a Go value.    Not all methods apply to all kinds of values. Restrictions,  if any, are noted in the documentation for each method.  Use the Kind method to find out the kind of value before  calling kind\-specific methods. Calling a method  inappropriate to the kind of type causes a run time panic.    The zero Value represents no value.  Its IsValid method returns false, its Kind method returns Invalid,  its String method returns "\<invalid Value\>", and all other methods panic.  Most functions and methods never return an invalid value.  If one does, its documentation states the conditions explicitly.    A Value can be used concurrently by multiple goroutines provided that  the underlying Go value can be used concurrently for the equivalent  direct operations.    To compare two Values, compare the results of the Interface method.  Using == on two Values does not compare the underlying values  they represent. 


### Value function new


```haxe
function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:Null<stdgo.GoInt>, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool):Void
```


 


[\(view code\)](<./Reflect.hx#L484>)


### Value function addr


```haxe
function addr():stdgo.reflect.Value
```


Addr returns a pointer value representing the address of v.   It panics if CanAddr\(\) returns false.   Addr is typically used to obtain a pointer to a struct field   or slice element in order to call a method that requires a   pointer receiver. 


[\(view code\)](<./Reflect.hx#L2616>)


### Value function bool\_


```haxe
function bool_():Bool
```


Bool returns v's underlying value.   It panics if v's kind is not Bool. 


[\(view code\)](<./Reflect.hx#L2605>)


### Value function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```


Bytes returns v's underlying value.   It panics if v's underlying value is not a slice of bytes or   an addressable array of bytes. 


[\(view code\)](<./Reflect.hx#L2597>)


### Value function call


```haxe
function call( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>
```


Call calls the function v with the input arguments in.   For example, if len\(in\) == 3, v.Call\(in\) represents the Go call v\(in\[0\], in\[1\], in\[2\]\).   Call panics if v's Kind is not Func.   It returns the output results as Values.   As in Go, each input argument must be assignable to the   type of the function's corresponding input parameter.   If v is a variadic function, Call creates the variadic slice parameter   itself, copying in the corresponding values. 


[\(view code\)](<./Reflect.hx#L2566>)


### Value function callSlice


```haxe
function callSlice( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>
```


CallSlice calls the variadic function v with the input arguments in,   assigning the slice in\[len\(in\)\-1\] to v's final variadic argument.   For example, if len\(in\) == 3, v.CallSlice\(in\) represents the Go call v\(in\[0\], in\[1\], in\[2\]...\).   CallSlice panics if v's Kind is not Func or if v is not variadic.   It returns the output results as Values.   As in Go, each input argument must be assignable to the   type of the function's corresponding input parameter. 


[\(view code\)](<./Reflect.hx#L2552>)


### Value function canAddr


```haxe
function canAddr():Bool
```


CanAddr reports whether the value's address can be obtained with Addr.   Such values are called addressable. A value is addressable if it is   an element of a slice, an element of an addressable array,   a field of an addressable struct, or the result of dereferencing a pointer.   If CanAddr returns false, calling Addr will panic. 


[\(view code\)](<./Reflect.hx#L2588>)


### Value function canComplex


```haxe
function canComplex():Bool
```


CanComplex reports whether Complex can be used without panicking. 


[\(view code\)](<./Reflect.hx#L2523>)


### Value function canConvert


```haxe
function canConvert( _t:stdgo.reflect.Type):Bool
```


CanConvert reports whether the value v can be converted to type t.   If v.CanConvert\(t\) returns true then v.Convert\(t\) will not panic. 


[\(view code\)](<./Reflect.hx#L1758>)


### Value function canFloat


```haxe
function canFloat():Bool
```


CanFloat reports whether Float can be used without panicking. 


[\(view code\)](<./Reflect.hx#L2410>)


### Value function canInt


```haxe
function canInt():Bool
```


CanInt reports whether Int can be used without panicking. 


[\(view code\)](<./Reflect.hx#L2362>)


### Value function canInterface


```haxe
function canInterface():Bool
```


CanInterface reports whether Interface can be used without panicking. 


[\(view code\)](<./Reflect.hx#L2347>)


### Value function canSet


```haxe
function canSet():Bool
```


CanSet reports whether the value of v can be changed.   A Value can be changed only if it is addressable and was not   obtained by the use of unexported struct fields.   If CanSet returns false, calling Set or any type\-specific   setter \(e.g., SetBool, SetInt\) will panic. 


[\(view code\)](<./Reflect.hx#L2577>)


### Value function canUint


```haxe
function canUint():Bool
```


CanUint reports whether Uint can be used without panicking. 


[\(view code\)](<./Reflect.hx#L1810>)


### Value function cap


```haxe
function cap():stdgo.GoInt
```


Cap returns v's capacity.   It panics if v's Kind is not Array, Chan, Slice or pointer to Array. 


[\(view code\)](<./Reflect.hx#L2539>)


### Value function close


```haxe
function close():Void
```


Close closes the channel v.   It panics if v's Kind is not Chan. 


[\(view code\)](<./Reflect.hx#L2531>)


### Value function complex


```haxe
function complex():stdgo.GoComplex128
```


Complex returns v's underlying value, as a complex128.   It panics if v's Kind is not Complex64 or Complex128 


[\(view code\)](<./Reflect.hx#L2516>)


### Value function convert


```haxe
function convert( _t:stdgo.reflect.Type):stdgo.reflect.Value
```


Convert returns the value v converted to type t.   If the usual Go conversion rules do not allow conversion   of the value v to type t, or if converting v to type t panics, Convert panics. 


[\(view code\)](<./Reflect.hx#L1767>)


### Value function elem


```haxe
function elem():stdgo.reflect.Value
```


Elem returns the value that the interface v contains   or that the pointer v points to.   It panics if v's Kind is not Interface or Pointer.   It returns the zero Value if v is nil. 


[\(view code\)](<./Reflect.hx#L2478>)


### Value function field


```haxe
function field( _i:stdgo.GoInt):stdgo.reflect.Value
```


Field returns the i'th field of the struct v.   It panics if v's Kind is not Struct or i is out of range. 


[\(view code\)](<./Reflect.hx#L2455>)


### Value function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.Value
```


FieldByIndex returns the nested field corresponding to index.   It panics if evaluation requires stepping through a nil   pointer or a field that is not a struct. 


[\(view code\)](<./Reflect.hx#L2448>)


### Value function fieldByIndexErr


```haxe
function fieldByIndexErr( _index:stdgo.Slice<stdgo.GoInt>):{_1:stdgo.Error, _0:stdgo.reflect.Value}
```


FieldByIndexErr returns the nested field corresponding to index.   It returns an error if evaluation requires stepping through a nil   pointer, but panics if it must step through a field that   is not a struct. 


[\(view code\)](<./Reflect.hx#L2439>)


### Value function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):stdgo.reflect.Value
```


FieldByName returns the struct field with the given name.   It returns the zero Value if no field was found.   It panics if v's Kind is not struct. 


[\(view code\)](<./Reflect.hx#L2429>)


### Value function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):stdgo.reflect.Value
```


FieldByNameFunc returns the struct field with a name   that satisfies the match function.   It panics if v's Kind is not struct.   It returns the zero Value if no field was found. 


[\(view code\)](<./Reflect.hx#L2420>)


### Value function float\_


```haxe
function float_():stdgo.GoFloat64
```


Float returns v's underlying value, as a float64.   It panics if v's Kind is not Float32 or Float64 


[\(view code\)](<./Reflect.hx#L2403>)


### Value function index


```haxe
function index( _i:stdgo.GoInt):stdgo.reflect.Value
```


Index returns v's i'th element.   It panics if v's Kind is not Array, Slice, or String or i is out of range. 


[\(view code\)](<./Reflect.hx#L2369>)


### Value function int\_


```haxe
function int_():stdgo.GoInt64
```


Int returns v's underlying value, as an int64.   It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64. 


[\(view code\)](<./Reflect.hx#L2355>)


### Value function interfaceData


```haxe
function interfaceData():stdgo.GoArray<stdgo.GoUIntptr>
```


InterfaceData returns a pair of unspecified uintptr values.   It panics if v's Kind is not Interface.      In earlier versions of Go, this function returned the interface's   value as a uintptr pair. As of Go 1.4, the implementation of   interface values precludes any defined use of InterfaceData.      Deprecated: The memory representation of interface values is not   compatible with InterfaceData. 


[\(view code\)](<./Reflect.hx#L2327>)


### Value function interface\_


```haxe
function interface_():stdgo.AnyInterface
```


Interface returns v's current value as an interface\{\}.   It is equivalent to:       var i interface\{\} = \(v's underlying value\)      It panics if the Value was obtained by accessing   unexported struct fields. 


[\(view code\)](<./Reflect.hx#L2340>)


### Value function isNil


```haxe
function isNil():Bool
```


IsNil reports whether its argument v is nil. The argument must be   a chan, func, interface, map, pointer, or slice value; if it is   not, IsNil panics. Note that IsNil is not always equivalent to a   regular comparison with nil in Go. For example, if v was created   by calling ValueOf with an uninitialized interface variable i,   i==nil will be true but v.IsNil will panic as v will be the zero   Value. 


[\(view code\)](<./Reflect.hx#L2281>)


### Value function isValid


```haxe
function isValid():Bool
```


IsValid reports whether v represents a value.   It returns false if v is the zero Value.   If IsValid returns false, all other methods except String panic.   Most functions and methods never return an invalid Value.   If one does, its documentation states the conditions explicitly. 


[\(view code\)](<./Reflect.hx#L2269>)


### Value function isZero


```haxe
function isZero():Bool
```


IsZero reports whether v is the zero value for its type.   It panics if the argument is invalid. 


[\(view code\)](<./Reflect.hx#L2258>)


### Value function kind


```haxe
function kind():stdgo.reflect.Kind
```


Kind returns v's Kind.   If v is the zero Value \(IsValid returns false\), Kind returns Invalid. 


[\(view code\)](<./Reflect.hx#L2250>)


### Value function len


```haxe
function len():stdgo.GoInt
```


Len returns v's length.   It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array. 


[\(view code\)](<./Reflect.hx#L2216>)


### Value function mapIndex


```haxe
function mapIndex( _key:stdgo.reflect.Value):stdgo.reflect.Value
```


MapIndex returns the value associated with key in the map v.   It panics if v's Kind is not Map.   It returns the zero Value if key is not found in the map or if v represents a nil map.   As in Go, the key's value must be assignable to the map's key type. 


[\(view code\)](<./Reflect.hx#L2209>)


### Value function mapKeys


```haxe
function mapKeys():stdgo.Slice<stdgo.reflect.Value>
```


MapKeys returns a slice containing all the keys present in the map,   in unspecified order.   It panics if v's Kind is not Map.   It returns an empty slice if v represents a nil map. 


[\(view code\)](<./Reflect.hx#L2199>)


### Value function mapRange


```haxe
function mapRange():stdgo.Ref<stdgo.reflect.MapIter>
```


MapRange returns a range iterator for a map.   It panics if v's Kind is not Map.      Call Next to advance the iterator, and Key/Value to access each entry.   Next returns false when the iterator is exhausted.   MapRange follows the same iteration semantics as a range statement.      Example:       iter := reflect.ValueOf\(m\).MapRange\(\)    for iter.Next\(\) \{     k := iter.Key\(\)     v := iter.Value\(\)     ...    \} 


[\(view code\)](<./Reflect.hx#L2171>)


### Value function method


```haxe
function method( _i:stdgo.GoInt):stdgo.reflect.Value
```


Method returns a function value corresponding to v's i'th method.   The arguments to a Call on the returned function should not include   a receiver; the returned function will always use v as the receiver.   Method panics if i is out of range or if v is a nil interface value. 


[\(view code\)](<./Reflect.hx#L2150>)


### Value function methodByName


```haxe
function methodByName( _name:stdgo.GoString):stdgo.reflect.Value
```


MethodByName returns a function value corresponding to the method   of v with the given name.   The arguments to a Call on the returned function should not include   a receiver; the returned function will always use v as the receiver.   It returns the zero Value if no method was found. 


[\(view code\)](<./Reflect.hx#L2129>)


### Value function numField


```haxe
function numField():stdgo.GoInt
```


NumField returns the number of fields in the struct v.   It panics if v's Kind is not Struct. 


[\(view code\)](<./Reflect.hx#L2118>)


### Value function numMethod


```haxe
function numMethod():stdgo.GoInt
```


NumMethod returns the number of methods in the value's method set.      For a non\-interface type, it returns the number of exported methods.      For an interface type, it returns the number of exported and unexported methods. 


[\(view code\)](<./Reflect.hx#L2140>)


### Value function overflowComplex


```haxe
function overflowComplex( _x:stdgo.GoComplex128):Bool
```


OverflowComplex reports whether the complex128 x cannot be represented by v's type.   It panics if v's Kind is not Complex64 or Complex128. 


[\(view code\)](<./Reflect.hx#L2110>)


### Value function overflowFloat


```haxe
function overflowFloat( _x:stdgo.GoFloat64):Bool
```


OverflowFloat reports whether the float64 x cannot be represented by v's type.   It panics if v's Kind is not Float32 or Float64. 


[\(view code\)](<./Reflect.hx#L2102>)


### Value function overflowInt


```haxe
function overflowInt( _x:stdgo.GoInt64):Bool
```


OverflowInt reports whether the int64 x cannot be represented by v's type.   It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64. 


[\(view code\)](<./Reflect.hx#L2094>)


### Value function overflowUint


```haxe
function overflowUint( _x:stdgo.GoUInt64):Bool
```


OverflowUint reports whether the uint64 x cannot be represented by v's type.   It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64. 


[\(view code\)](<./Reflect.hx#L2086>)


### Value function pointer


```haxe
function pointer():stdgo.GoUIntptr
```


Pointer returns v's value as a uintptr.   It returns uintptr instead of unsafe.Pointer so that   code using reflect cannot obtain unsafe.Pointers   without importing the unsafe package explicitly.   It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.      If v's Kind is Func, the returned pointer is an underlying   code pointer, but not necessarily enough to identify a   single function uniquely. The only guarantee is that the   result is zero if and only if v is a nil func Value.      If v's Kind is Slice, the returned pointer is to the first   element of the slice. If the slice is nil the returned value   is 0.  If the slice is empty but non\-nil the return value is non\-zero.      It's preferred to use uintptr\(Value.UnsafePointer\(\)\) to get the equivalent result. 


[\(view code\)](<./Reflect.hx#L2073>)


### Value function recv


```haxe
function recv():{_1:Bool, _0:stdgo.reflect.Value}
```


Recv receives and returns a value from the channel v.   It panics if v's Kind is not Chan.   The receive blocks until a value is ready.   The boolean value ok is true if the value x corresponds to a send   on the channel, false if it is a zero value received because the channel is closed. 


[\(view code\)](<./Reflect.hx#L2052>)


### Value function send


```haxe
function send( _x:stdgo.reflect.Value):Void
```


Send sends x on the channel v.   It panics if v's kind is not Chan or if x's type is not the same type as v's element type.   As in Go, x's value must be assignable to the channel's element type. 


[\(view code\)](<./Reflect.hx#L2041>)


### Value function set


```haxe
function set( _x:stdgo.reflect.Value):Void
```


Set assigns x to the value v.   It panics if CanSet returns false.   As in Go, x's value must be assignable to v's type. 


[\(view code\)](<./Reflect.hx#L1985>)


### Value function setBool


```haxe
function setBool( _x:Bool):Void
```


SetBool sets v's underlying value.   It panics if v's Kind is not Bool or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1977>)


### Value function setBytes


```haxe
function setBytes( _x:stdgo.Slice<stdgo.GoByte>):Void
```


SetBytes sets v's underlying value.   It panics if v's underlying value is not a slice of bytes. 


[\(view code\)](<./Reflect.hx#L1969>)


### Value function setCap


```haxe
function setCap( _n:stdgo.GoInt):Void
```


SetCap sets v's capacity to n.   It panics if v's Kind is not Slice or if n is smaller than the length or   greater than the capacity of the slice. 


[\(view code\)](<./Reflect.hx#L1928>)


### Value function setComplex


```haxe
function setComplex( _x:stdgo.GoComplex128):Void
```


SetComplex sets v's underlying value to x.   It panics if v's Kind is not Complex64 or Complex128, or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1961>)


### Value function setFloat


```haxe
function setFloat( _x:stdgo.GoFloat64):Void
```


SetFloat sets v's underlying value to x.   It panics if v's Kind is not Float32 or Float64, or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1953>)


### Value function setInt


```haxe
function setInt( _x:stdgo.GoInt64):Void
```


SetInt sets v's underlying value to x.   It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64, or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1945>)


### Value function setIterKey


```haxe
function setIterKey( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void
```


SetIterKey assigns to v the key of iter's current map entry.   It is equivalent to v.Set\(iter.Key\(\)\), but it avoids allocating a new Value.   As in Go, the key must be assignable to v's type. 


[\(view code\)](<./Reflect.hx#L2189>)


### Value function setIterValue


```haxe
function setIterValue( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void
```


SetIterValue assigns to v the value of iter's current map entry.   It is equivalent to v.Set\(iter.Value\(\)\), but it avoids allocating a new Value.   As in Go, the value must be assignable to v's type. 


[\(view code\)](<./Reflect.hx#L2180>)


### Value function setLen


```haxe
function setLen( _n:stdgo.GoInt):Void
```


SetLen sets v's length to n.   It panics if v's Kind is not Slice or if n is negative or   greater than the capacity of the slice. 


[\(view code\)](<./Reflect.hx#L1937>)


### Value function setMapIndex


```haxe
function setMapIndex( _key:stdgo.reflect.Value, _elem:stdgo.reflect.Value):Void
```


SetMapIndex sets the element associated with key in the map v to elem.   It panics if v's Kind is not Map.   If elem is the zero Value, SetMapIndex deletes the key from the map.   Otherwise if v holds a nil map, SetMapIndex will panic.   As in Go, key's elem must be assignable to the map's key type,   and elem's value must be assignable to the map's elem type. 


[\(view code\)](<./Reflect.hx#L1919>)


### Value function setPointer


```haxe
function setPointer( _x:stdgo.unsafe.UnsafePointer):Void
```


SetPointer sets the unsafe.Pointer value v to x.   It panics if v's Kind is not UnsafePointer. 


[\(view code\)](<./Reflect.hx#L1899>)


### Value function setString


```haxe
function setString( _x:stdgo.GoString):Void
```


SetString sets v's underlying value to x.   It panics if v's Kind is not String or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1891>)


### Value function setUint


```haxe
function setUint( _x:stdgo.GoUInt64):Void
```


SetUint sets v's underlying value to x.   It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64, or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1907>)


### Value function slice


```haxe
function slice( _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.reflect.Value
```


Slice returns v\[i:j\].   It panics if v's Kind is not Array, Slice or String, or if v is an unaddressable array,   or if the indexes are out of bounds. 


[\(view code\)](<./Reflect.hx#L1883>)


### Value function slice3


```haxe
function slice3( _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo.reflect.Value
```


Slice3 is the 3\-index form of the slice operation: it returns v\[i:j:k\].   It panics if v's Kind is not Array or Slice, or if v is an unaddressable array,   or if the indexes are out of bounds. 


[\(view code\)](<./Reflect.hx#L1874>)


### Value function string


```haxe
function string():stdgo.GoString
```


String returns the string v's underlying value, as a string.   String is a special case because of Go's String method convention.   Unlike the other getters, it does not panic if v's Kind is not String.   Instead, it returns a string of the form "\<T value\>" where T is v's type.   The fmt package treats Values specially. It does not call their String   method implicitly but instead prints the concrete values they hold. 


[\(view code\)](<./Reflect.hx#L1849>)


### Value function tryRecv


```haxe
function tryRecv():{_1:Bool, _0:stdgo.reflect.Value}
```


TryRecv attempts to receive a value from the channel v but will not block.   It panics if v's Kind is not Chan.   If the receive delivers a value, x is the transferred value and ok is true.   If the receive cannot finish without blocking, x is the zero Value and ok is false.   If the channel is closed, x is the zero value for the channel's element type and ok is false. 


[\(view code\)](<./Reflect.hx#L1838>)


### Value function trySend


```haxe
function trySend( _x:stdgo.reflect.Value):Bool
```


TrySend attempts to send x on the channel v but will not block.   It panics if v's Kind is not Chan.   It reports whether the value was sent.   As in Go, x's value must be assignable to the channel's element type. 


[\(view code\)](<./Reflect.hx#L1827>)


### Value function type


```haxe
function type():stdgo.reflect.Type
```


Type returns v's type. 


[\(view code\)](<./Reflect.hx#L1817>)


### Value function uint


```haxe
function uint():stdgo.GoUInt64
```


Uint returns v's underlying value, as a uint64.   It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64. 


[\(view code\)](<./Reflect.hx#L1803>)


### Value function unsafeAddr


```haxe
function unsafeAddr():stdgo.GoUIntptr
```


UnsafeAddr returns a pointer to v's data, as a uintptr.   It is for advanced clients that also import the "unsafe" package.   It panics if v is not addressable.      It's preferred to use uintptr\(Value.Addr\(\).UnsafePointer\(\)\) to get the equivalent result. 


[\(view code\)](<./Reflect.hx#L1795>)


### Value function unsafePointer


```haxe
function unsafePointer():stdgo.unsafe.UnsafePointer
```


UnsafePointer returns v's value as a unsafe.Pointer.   It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.      If v's Kind is Func, the returned pointer is an underlying   code pointer, but not necessarily enough to identify a   single function uniquely. The only guarantee is that the   result is zero if and only if v is a nil func Value.      If v's Kind is Slice, the returned pointer is to the first   element of the slice. If the slice is nil the returned value   is nil.  If the slice is empty but non\-nil the return value is non\-nil. 


[\(view code\)](<./Reflect.hx#L1784>)


## class ValueError


A ValueError occurs when a Value method is invoked on  a Value that does not support it. Such cases are documented  in the description of each method. 


```haxe
var kind:stdgo.reflect.Kind
```


```haxe
var method:stdgo.GoString
```


### ValueError function new


```haxe
function new(?method:stdgo.GoString, ?kind:Null<stdgo.reflect.Kind>):Void
```


 


[\(view code\)](<./Reflect.hx#L517>)


### ValueError function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L2641>)


## class ValueError\_static\_extension


 


### ValueError\_static\_extension function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L2641>)


## class Value\_static\_extension


 


### Value\_static\_extension function addr


```haxe
function addr():stdgo.reflect.Value
```


Addr returns a pointer value representing the address of v.   It panics if CanAddr\(\) returns false.   Addr is typically used to obtain a pointer to a struct field   or slice element in order to call a method that requires a   pointer receiver. 


[\(view code\)](<./Reflect.hx#L2616>)


### Value\_static\_extension function bool\_


```haxe
function bool_():Bool
```


Bool returns v's underlying value.   It panics if v's kind is not Bool. 


[\(view code\)](<./Reflect.hx#L2605>)


### Value\_static\_extension function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```


Bytes returns v's underlying value.   It panics if v's underlying value is not a slice of bytes or   an addressable array of bytes. 


[\(view code\)](<./Reflect.hx#L2597>)


### Value\_static\_extension function call


```haxe
function call( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>
```


Call calls the function v with the input arguments in.   For example, if len\(in\) == 3, v.Call\(in\) represents the Go call v\(in\[0\], in\[1\], in\[2\]\).   Call panics if v's Kind is not Func.   It returns the output results as Values.   As in Go, each input argument must be assignable to the   type of the function's corresponding input parameter.   If v is a variadic function, Call creates the variadic slice parameter   itself, copying in the corresponding values. 


[\(view code\)](<./Reflect.hx#L2566>)


### Value\_static\_extension function callSlice


```haxe
function callSlice( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>
```


CallSlice calls the variadic function v with the input arguments in,   assigning the slice in\[len\(in\)\-1\] to v's final variadic argument.   For example, if len\(in\) == 3, v.CallSlice\(in\) represents the Go call v\(in\[0\], in\[1\], in\[2\]...\).   CallSlice panics if v's Kind is not Func or if v is not variadic.   It returns the output results as Values.   As in Go, each input argument must be assignable to the   type of the function's corresponding input parameter. 


[\(view code\)](<./Reflect.hx#L2552>)


### Value\_static\_extension function canAddr


```haxe
function canAddr():Bool
```


CanAddr reports whether the value's address can be obtained with Addr.   Such values are called addressable. A value is addressable if it is   an element of a slice, an element of an addressable array,   a field of an addressable struct, or the result of dereferencing a pointer.   If CanAddr returns false, calling Addr will panic. 


[\(view code\)](<./Reflect.hx#L2588>)


### Value\_static\_extension function canComplex


```haxe
function canComplex():Bool
```


CanComplex reports whether Complex can be used without panicking. 


[\(view code\)](<./Reflect.hx#L2523>)


### Value\_static\_extension function canConvert


```haxe
function canConvert( _t:stdgo.reflect.Type):Bool
```


CanConvert reports whether the value v can be converted to type t.   If v.CanConvert\(t\) returns true then v.Convert\(t\) will not panic. 


[\(view code\)](<./Reflect.hx#L1758>)


### Value\_static\_extension function canFloat


```haxe
function canFloat():Bool
```


CanFloat reports whether Float can be used without panicking. 


[\(view code\)](<./Reflect.hx#L2410>)


### Value\_static\_extension function canInt


```haxe
function canInt():Bool
```


CanInt reports whether Int can be used without panicking. 


[\(view code\)](<./Reflect.hx#L2362>)


### Value\_static\_extension function canInterface


```haxe
function canInterface():Bool
```


CanInterface reports whether Interface can be used without panicking. 


[\(view code\)](<./Reflect.hx#L2347>)


### Value\_static\_extension function canSet


```haxe
function canSet():Bool
```


CanSet reports whether the value of v can be changed.   A Value can be changed only if it is addressable and was not   obtained by the use of unexported struct fields.   If CanSet returns false, calling Set or any type\-specific   setter \(e.g., SetBool, SetInt\) will panic. 


[\(view code\)](<./Reflect.hx#L2577>)


### Value\_static\_extension function canUint


```haxe
function canUint():Bool
```


CanUint reports whether Uint can be used without panicking. 


[\(view code\)](<./Reflect.hx#L1810>)


### Value\_static\_extension function cap


```haxe
function cap():stdgo.GoInt
```


Cap returns v's capacity.   It panics if v's Kind is not Array, Chan, Slice or pointer to Array. 


[\(view code\)](<./Reflect.hx#L2539>)


### Value\_static\_extension function close


```haxe
function close():Void
```


Close closes the channel v.   It panics if v's Kind is not Chan. 


[\(view code\)](<./Reflect.hx#L2531>)


### Value\_static\_extension function complex


```haxe
function complex():stdgo.GoComplex128
```


Complex returns v's underlying value, as a complex128.   It panics if v's Kind is not Complex64 or Complex128 


[\(view code\)](<./Reflect.hx#L2516>)


### Value\_static\_extension function convert


```haxe
function convert( _t:stdgo.reflect.Type):stdgo.reflect.Value
```


Convert returns the value v converted to type t.   If the usual Go conversion rules do not allow conversion   of the value v to type t, or if converting v to type t panics, Convert panics. 


[\(view code\)](<./Reflect.hx#L1767>)


### Value\_static\_extension function elem


```haxe
function elem():stdgo.reflect.Value
```


Elem returns the value that the interface v contains   or that the pointer v points to.   It panics if v's Kind is not Interface or Pointer.   It returns the zero Value if v is nil. 


[\(view code\)](<./Reflect.hx#L2478>)


### Value\_static\_extension function field


```haxe
function field( _i:stdgo.GoInt):stdgo.reflect.Value
```


Field returns the i'th field of the struct v.   It panics if v's Kind is not Struct or i is out of range. 


[\(view code\)](<./Reflect.hx#L2455>)


### Value\_static\_extension function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.Value
```


FieldByIndex returns the nested field corresponding to index.   It panics if evaluation requires stepping through a nil   pointer or a field that is not a struct. 


[\(view code\)](<./Reflect.hx#L2448>)


### Value\_static\_extension function fieldByIndexErr


```haxe
function fieldByIndexErr( _index:stdgo.Slice<stdgo.GoInt>):{_1:stdgo.Error, _0:stdgo.reflect.Value}
```


FieldByIndexErr returns the nested field corresponding to index.   It returns an error if evaluation requires stepping through a nil   pointer, but panics if it must step through a field that   is not a struct. 


[\(view code\)](<./Reflect.hx#L2439>)


### Value\_static\_extension function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):stdgo.reflect.Value
```


FieldByName returns the struct field with the given name.   It returns the zero Value if no field was found.   It panics if v's Kind is not struct. 


[\(view code\)](<./Reflect.hx#L2429>)


### Value\_static\_extension function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):stdgo.reflect.Value
```


FieldByNameFunc returns the struct field with a name   that satisfies the match function.   It panics if v's Kind is not struct.   It returns the zero Value if no field was found. 


[\(view code\)](<./Reflect.hx#L2420>)


### Value\_static\_extension function float\_


```haxe
function float_():stdgo.GoFloat64
```


Float returns v's underlying value, as a float64.   It panics if v's Kind is not Float32 or Float64 


[\(view code\)](<./Reflect.hx#L2403>)


### Value\_static\_extension function index


```haxe
function index( _i:stdgo.GoInt):stdgo.reflect.Value
```


Index returns v's i'th element.   It panics if v's Kind is not Array, Slice, or String or i is out of range. 


[\(view code\)](<./Reflect.hx#L2369>)


### Value\_static\_extension function int\_


```haxe
function int_():stdgo.GoInt64
```


Int returns v's underlying value, as an int64.   It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64. 


[\(view code\)](<./Reflect.hx#L2355>)


### Value\_static\_extension function interfaceData


```haxe
function interfaceData():stdgo.GoArray<stdgo.GoUIntptr>
```


InterfaceData returns a pair of unspecified uintptr values.   It panics if v's Kind is not Interface.      In earlier versions of Go, this function returned the interface's   value as a uintptr pair. As of Go 1.4, the implementation of   interface values precludes any defined use of InterfaceData.      Deprecated: The memory representation of interface values is not   compatible with InterfaceData. 


[\(view code\)](<./Reflect.hx#L2327>)


### Value\_static\_extension function interface\_


```haxe
function interface_():stdgo.AnyInterface
```


Interface returns v's current value as an interface\{\}.   It is equivalent to:       var i interface\{\} = \(v's underlying value\)      It panics if the Value was obtained by accessing   unexported struct fields. 


[\(view code\)](<./Reflect.hx#L2340>)


### Value\_static\_extension function isNil


```haxe
function isNil():Bool
```


IsNil reports whether its argument v is nil. The argument must be   a chan, func, interface, map, pointer, or slice value; if it is   not, IsNil panics. Note that IsNil is not always equivalent to a   regular comparison with nil in Go. For example, if v was created   by calling ValueOf with an uninitialized interface variable i,   i==nil will be true but v.IsNil will panic as v will be the zero   Value. 


[\(view code\)](<./Reflect.hx#L2281>)


### Value\_static\_extension function isValid


```haxe
function isValid():Bool
```


IsValid reports whether v represents a value.   It returns false if v is the zero Value.   If IsValid returns false, all other methods except String panic.   Most functions and methods never return an invalid Value.   If one does, its documentation states the conditions explicitly. 


[\(view code\)](<./Reflect.hx#L2269>)


### Value\_static\_extension function isZero


```haxe
function isZero():Bool
```


IsZero reports whether v is the zero value for its type.   It panics if the argument is invalid. 


[\(view code\)](<./Reflect.hx#L2258>)


### Value\_static\_extension function kind


```haxe
function kind():stdgo.reflect.Kind
```


Kind returns v's Kind.   If v is the zero Value \(IsValid returns false\), Kind returns Invalid. 


[\(view code\)](<./Reflect.hx#L2250>)


### Value\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


Len returns v's length.   It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array. 


[\(view code\)](<./Reflect.hx#L2216>)


### Value\_static\_extension function mapIndex


```haxe
function mapIndex( _key:stdgo.reflect.Value):stdgo.reflect.Value
```


MapIndex returns the value associated with key in the map v.   It panics if v's Kind is not Map.   It returns the zero Value if key is not found in the map or if v represents a nil map.   As in Go, the key's value must be assignable to the map's key type. 


[\(view code\)](<./Reflect.hx#L2209>)


### Value\_static\_extension function mapKeys


```haxe
function mapKeys():stdgo.Slice<stdgo.reflect.Value>
```


MapKeys returns a slice containing all the keys present in the map,   in unspecified order.   It panics if v's Kind is not Map.   It returns an empty slice if v represents a nil map. 


[\(view code\)](<./Reflect.hx#L2199>)


### Value\_static\_extension function mapRange


```haxe
function mapRange():stdgo.Ref<stdgo.reflect.MapIter>
```


MapRange returns a range iterator for a map.   It panics if v's Kind is not Map.      Call Next to advance the iterator, and Key/Value to access each entry.   Next returns false when the iterator is exhausted.   MapRange follows the same iteration semantics as a range statement.      Example:       iter := reflect.ValueOf\(m\).MapRange\(\)    for iter.Next\(\) \{     k := iter.Key\(\)     v := iter.Value\(\)     ...    \} 


[\(view code\)](<./Reflect.hx#L2171>)


### Value\_static\_extension function method


```haxe
function method( _i:stdgo.GoInt):stdgo.reflect.Value
```


Method returns a function value corresponding to v's i'th method.   The arguments to a Call on the returned function should not include   a receiver; the returned function will always use v as the receiver.   Method panics if i is out of range or if v is a nil interface value. 


[\(view code\)](<./Reflect.hx#L2150>)


### Value\_static\_extension function methodByName


```haxe
function methodByName( _name:stdgo.GoString):stdgo.reflect.Value
```


MethodByName returns a function value corresponding to the method   of v with the given name.   The arguments to a Call on the returned function should not include   a receiver; the returned function will always use v as the receiver.   It returns the zero Value if no method was found. 


[\(view code\)](<./Reflect.hx#L2129>)


### Value\_static\_extension function numField


```haxe
function numField():stdgo.GoInt
```


NumField returns the number of fields in the struct v.   It panics if v's Kind is not Struct. 


[\(view code\)](<./Reflect.hx#L2118>)


### Value\_static\_extension function numMethod


```haxe
function numMethod():stdgo.GoInt
```


NumMethod returns the number of methods in the value's method set.      For a non\-interface type, it returns the number of exported methods.      For an interface type, it returns the number of exported and unexported methods. 


[\(view code\)](<./Reflect.hx#L2140>)


### Value\_static\_extension function overflowComplex


```haxe
function overflowComplex( _x:stdgo.GoComplex128):Bool
```


OverflowComplex reports whether the complex128 x cannot be represented by v's type.   It panics if v's Kind is not Complex64 or Complex128. 


[\(view code\)](<./Reflect.hx#L2110>)


### Value\_static\_extension function overflowFloat


```haxe
function overflowFloat( _x:stdgo.GoFloat64):Bool
```


OverflowFloat reports whether the float64 x cannot be represented by v's type.   It panics if v's Kind is not Float32 or Float64. 


[\(view code\)](<./Reflect.hx#L2102>)


### Value\_static\_extension function overflowInt


```haxe
function overflowInt( _x:stdgo.GoInt64):Bool
```


OverflowInt reports whether the int64 x cannot be represented by v's type.   It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64. 


[\(view code\)](<./Reflect.hx#L2094>)


### Value\_static\_extension function overflowUint


```haxe
function overflowUint( _x:stdgo.GoUInt64):Bool
```


OverflowUint reports whether the uint64 x cannot be represented by v's type.   It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64. 


[\(view code\)](<./Reflect.hx#L2086>)


### Value\_static\_extension function pointer


```haxe
function pointer():stdgo.GoUIntptr
```


Pointer returns v's value as a uintptr.   It returns uintptr instead of unsafe.Pointer so that   code using reflect cannot obtain unsafe.Pointers   without importing the unsafe package explicitly.   It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.      If v's Kind is Func, the returned pointer is an underlying   code pointer, but not necessarily enough to identify a   single function uniquely. The only guarantee is that the   result is zero if and only if v is a nil func Value.      If v's Kind is Slice, the returned pointer is to the first   element of the slice. If the slice is nil the returned value   is 0.  If the slice is empty but non\-nil the return value is non\-zero.      It's preferred to use uintptr\(Value.UnsafePointer\(\)\) to get the equivalent result. 


[\(view code\)](<./Reflect.hx#L2073>)


### Value\_static\_extension function recv


```haxe
function recv():{_1:Bool, _0:stdgo.reflect.Value}
```


Recv receives and returns a value from the channel v.   It panics if v's Kind is not Chan.   The receive blocks until a value is ready.   The boolean value ok is true if the value x corresponds to a send   on the channel, false if it is a zero value received because the channel is closed. 


[\(view code\)](<./Reflect.hx#L2052>)


### Value\_static\_extension function send


```haxe
function send( _x:stdgo.reflect.Value):Void
```


Send sends x on the channel v.   It panics if v's kind is not Chan or if x's type is not the same type as v's element type.   As in Go, x's value must be assignable to the channel's element type. 


[\(view code\)](<./Reflect.hx#L2041>)


### Value\_static\_extension function set


```haxe
function set( _x:stdgo.reflect.Value):Void
```


Set assigns x to the value v.   It panics if CanSet returns false.   As in Go, x's value must be assignable to v's type. 


[\(view code\)](<./Reflect.hx#L1985>)


### Value\_static\_extension function setBool


```haxe
function setBool( _x:Bool):Void
```


SetBool sets v's underlying value.   It panics if v's Kind is not Bool or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1977>)


### Value\_static\_extension function setBytes


```haxe
function setBytes( _x:stdgo.Slice<stdgo.GoByte>):Void
```


SetBytes sets v's underlying value.   It panics if v's underlying value is not a slice of bytes. 


[\(view code\)](<./Reflect.hx#L1969>)


### Value\_static\_extension function setCap


```haxe
function setCap( _n:stdgo.GoInt):Void
```


SetCap sets v's capacity to n.   It panics if v's Kind is not Slice or if n is smaller than the length or   greater than the capacity of the slice. 


[\(view code\)](<./Reflect.hx#L1928>)


### Value\_static\_extension function setComplex


```haxe
function setComplex( _x:stdgo.GoComplex128):Void
```


SetComplex sets v's underlying value to x.   It panics if v's Kind is not Complex64 or Complex128, or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1961>)


### Value\_static\_extension function setFloat


```haxe
function setFloat( _x:stdgo.GoFloat64):Void
```


SetFloat sets v's underlying value to x.   It panics if v's Kind is not Float32 or Float64, or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1953>)


### Value\_static\_extension function setInt


```haxe
function setInt( _x:stdgo.GoInt64):Void
```


SetInt sets v's underlying value to x.   It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64, or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1945>)


### Value\_static\_extension function setIterKey


```haxe
function setIterKey( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void
```


SetIterKey assigns to v the key of iter's current map entry.   It is equivalent to v.Set\(iter.Key\(\)\), but it avoids allocating a new Value.   As in Go, the key must be assignable to v's type. 


[\(view code\)](<./Reflect.hx#L2189>)


### Value\_static\_extension function setIterValue


```haxe
function setIterValue( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void
```


SetIterValue assigns to v the value of iter's current map entry.   It is equivalent to v.Set\(iter.Value\(\)\), but it avoids allocating a new Value.   As in Go, the value must be assignable to v's type. 


[\(view code\)](<./Reflect.hx#L2180>)


### Value\_static\_extension function setLen


```haxe
function setLen( _n:stdgo.GoInt):Void
```


SetLen sets v's length to n.   It panics if v's Kind is not Slice or if n is negative or   greater than the capacity of the slice. 


[\(view code\)](<./Reflect.hx#L1937>)


### Value\_static\_extension function setMapIndex


```haxe
function setMapIndex( _key:stdgo.reflect.Value, _elem:stdgo.reflect.Value):Void
```


SetMapIndex sets the element associated with key in the map v to elem.   It panics if v's Kind is not Map.   If elem is the zero Value, SetMapIndex deletes the key from the map.   Otherwise if v holds a nil map, SetMapIndex will panic.   As in Go, key's elem must be assignable to the map's key type,   and elem's value must be assignable to the map's elem type. 


[\(view code\)](<./Reflect.hx#L1919>)


### Value\_static\_extension function setPointer


```haxe
function setPointer( _x:stdgo.unsafe.UnsafePointer):Void
```


SetPointer sets the unsafe.Pointer value v to x.   It panics if v's Kind is not UnsafePointer. 


[\(view code\)](<./Reflect.hx#L1899>)


### Value\_static\_extension function setString


```haxe
function setString( _x:stdgo.GoString):Void
```


SetString sets v's underlying value to x.   It panics if v's Kind is not String or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1891>)


### Value\_static\_extension function setUint


```haxe
function setUint( _x:stdgo.GoUInt64):Void
```


SetUint sets v's underlying value to x.   It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64, or if CanSet\(\) is false. 


[\(view code\)](<./Reflect.hx#L1907>)


### Value\_static\_extension function slice


```haxe
function slice( _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.reflect.Value
```


Slice returns v\[i:j\].   It panics if v's Kind is not Array, Slice or String, or if v is an unaddressable array,   or if the indexes are out of bounds. 


[\(view code\)](<./Reflect.hx#L1883>)


### Value\_static\_extension function slice3


```haxe
function slice3( _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo.reflect.Value
```


Slice3 is the 3\-index form of the slice operation: it returns v\[i:j:k\].   It panics if v's Kind is not Array or Slice, or if v is an unaddressable array,   or if the indexes are out of bounds. 


[\(view code\)](<./Reflect.hx#L1874>)


### Value\_static\_extension function string


```haxe
function string():stdgo.GoString
```


String returns the string v's underlying value, as a string.   String is a special case because of Go's String method convention.   Unlike the other getters, it does not panic if v's Kind is not String.   Instead, it returns a string of the form "\<T value\>" where T is v's type.   The fmt package treats Values specially. It does not call their String   method implicitly but instead prints the concrete values they hold. 


[\(view code\)](<./Reflect.hx#L1849>)


### Value\_static\_extension function tryRecv


```haxe
function tryRecv():{_1:Bool, _0:stdgo.reflect.Value}
```


TryRecv attempts to receive a value from the channel v but will not block.   It panics if v's Kind is not Chan.   If the receive delivers a value, x is the transferred value and ok is true.   If the receive cannot finish without blocking, x is the zero Value and ok is false.   If the channel is closed, x is the zero value for the channel's element type and ok is false. 


[\(view code\)](<./Reflect.hx#L1838>)


### Value\_static\_extension function trySend


```haxe
function trySend( _x:stdgo.reflect.Value):Bool
```


TrySend attempts to send x on the channel v but will not block.   It panics if v's Kind is not Chan.   It reports whether the value was sent.   As in Go, x's value must be assignable to the channel's element type. 


[\(view code\)](<./Reflect.hx#L1827>)


### Value\_static\_extension function type


```haxe
function type():stdgo.reflect.Type
```


Type returns v's type. 


[\(view code\)](<./Reflect.hx#L1817>)


### Value\_static\_extension function uint


```haxe
function uint():stdgo.GoUInt64
```


Uint returns v's underlying value, as a uint64.   It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64. 


[\(view code\)](<./Reflect.hx#L1803>)


### Value\_static\_extension function unsafeAddr


```haxe
function unsafeAddr():stdgo.GoUIntptr
```


UnsafeAddr returns a pointer to v's data, as a uintptr.   It is for advanced clients that also import the "unsafe" package.   It panics if v is not addressable.      It's preferred to use uintptr\(Value.Addr\(\).UnsafePointer\(\)\) to get the equivalent result. 


[\(view code\)](<./Reflect.hx#L1795>)


### Value\_static\_extension function unsafePointer


```haxe
function unsafePointer():stdgo.unsafe.UnsafePointer
```


UnsafePointer returns v's value as a unsafe.Pointer.   It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.      If v's Kind is Func, the returned pointer is an underlying   code pointer, but not necessarily enough to identify a   single function uniquely. The only guarantee is that the   result is zero if and only if v is a nil func Value.      If v's Kind is Slice, the returned pointer is to the first   element of the slice. If the slice is nil the returned value   is nil.  If the slice is empty but non\-nil the return value is non\-nil. 


[\(view code\)](<./Reflect.hx#L1784>)


# Typedefs


```haxe
import stdgo.reflect.*
```


## typedef ChanDir


```haxe
typedef ChanDir = var t:{<>}
```


ChanDir represents a channel type's direction. 


### ChanDir function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L2839>)


## typedef Kind


```haxe
typedef Kind = var t:{<>}
```


A Kind represents the specific kind of type that a Type represents.  The zero Kind is not a valid kind. 


### Kind function string


```haxe
function string():stdgo.GoString
```


String returns the name of k. 


[\(view code\)](<./Reflect.hx#L2754>)


## typedef SelectDir


```haxe
typedef SelectDir = var t:{<>}
```


A SelectDir describes the communication direction of a select case. 


## typedef StructTag


```haxe
typedef StructTag = var x:{<>}
```


A StructTag is the tag string in a struct field.    By convention, tag strings are a concatenation of  optionally space\-separated key:"value" pairs.  Each key is a non\-empty string consisting of non\-control  characters other than space \(U\+0020 ' '\), quote \(U\+0022 '"'\),  and colon \(U\+003A ':'\).  Each value is quoted using U\+0022 '"'  characters and Go string literal syntax. 


### StructTag function get


```haxe
function get( _key:stdgo.GoString):stdgo.GoString
```


Get returns the value associated with key in the tag string.   If there is no such key in the tag, Get returns the empty string.   If the tag does not have the conventional format, the value   returned by Get is unspecified. To determine whether a tag is   explicitly set to the empty string, use Lookup. 


[\(view code\)](<./Reflect.hx#L2902>)


### StructTag function lookup


```haxe
function lookup( _key:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}
```


Lookup returns the value associated with key in the tag string.   If the key is present in the tag the value \(which may be empty\)   is returned. Otherwise the returned value will be the empty string.   The ok return value reports whether the value was explicitly set in   the tag string. If the tag does not have the conventional format,   the value returned by Lookup is unspecified. 


[\(view code\)](<./Reflect.hx#L2891>)


## typedef Type


```haxe
typedef Type = var a:{<__underlying__> | ():stdgo.GoString | {<haxe_doc>} | ():stdgo.GoUIntptr | {<haxe_doc>} | ():stdgo.GoString | {<haxe_doc>} | (_i:stdgo.GoInt):stdgo.reflect.Type | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.GoString | {<haxe_doc>} | (_0:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.Method} | {<haxe_doc>} | (_0:stdgo.GoInt):stdgo.reflect.Method | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.reflect.Kind | {<haxe_doc>} | ():stdgo.reflect.Type | {<haxe_doc>} | ():Bool | {<haxe_doc>} | (_i:stdgo.GoInt):stdgo.reflect.Type | {<haxe_doc>} | (_u:stdgo.reflect.Type):Bool | {<haxe_doc>} | (_match:()):{_1:Bool, _0:stdgo.reflect.StructField} | {<haxe_doc>} | (_name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.StructField} | {<haxe_doc>} | (_index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | (_i:stdgo.GoInt):stdgo.reflect.StructField | {<haxe_doc>} | ():stdgo.reflect.Type | {<haxe_doc>} | (_u:stdgo.reflect.Type):Bool | {<haxe_doc>} | ():Bool | {<haxe_doc>} | ():stdgo.reflect.ChanDir | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | (_u:stdgo.reflect.Type):Bool | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.AnyInterface}
```


Type is the representation of a Go type.    Not all methods apply to all kinds of types. Restrictions,  if any, are noted in the documentation for each method.  Use the Kind method to find out the kind of type before  calling kind\-specific methods. Calling a method  inappropriate to the kind of type causes a run\-time panic.    Type values are comparable, such as with the == operator,  so they can be used as map keys.  Two Type values are equal if they represent identical types. 


