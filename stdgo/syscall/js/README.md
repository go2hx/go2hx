# Module: `stdgo.syscall.js`

[(view library index)](../../stdgo.md)


# Overview



Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
Its API is based on JavaScript semantics.  


This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
comprehensive API for users. It is exempt from the Go compatibility promise.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.T_ref):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_copybytestogo>)

- [`function _copyBytesToJS(_dst:stdgo.syscall.js.T_ref, _src:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_copybytestojs>)

- [`function _finalizeRef(_r:stdgo.syscall.js.T_ref):Void`](<#function-_finalizeref>)

- [`function _floatValue(_f:stdgo.GoFloat64):stdgo.syscall.js.Value`](<#function-_floatvalue>)

- [`function _handleEvent():Bool`](<#function-_handleevent>)

- [`function _jsString(_v:stdgo.syscall.js.Value):stdgo.GoString`](<#function-_jsstring>)

- [`function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):{
	_1:stdgo.Slice<stdgo.syscall.js.T_ref>;
	_0:stdgo.Slice<stdgo.syscall.js.Value>;
}`](<#function-_makeargs>)

- [`function _makeValue(_r:stdgo.syscall.js.T_ref):stdgo.syscall.js.Value`](<#function-_makevalue>)

- [`function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoByte):stdgo.syscall.js.Value`](<#function-_predefvalue>)

- [`function _setEventHandler(_fn:():Bool):Void`](<#function-_seteventhandler>)

- [`function _stringVal(_x:stdgo.GoString):stdgo.syscall.js.T_ref`](<#function-_stringval>)

- [`function _valueCall(_v:stdgo.syscall.js.T_ref, _m:stdgo.GoString, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo.syscall.js.T_ref;
}`](<#function-_valuecall>)

- [`function _valueDelete(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString):Void`](<#function-_valuedelete>)

- [`function _valueGet(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString):stdgo.syscall.js.T_ref`](<#function-_valueget>)

- [`function _valueIndex(_v:stdgo.syscall.js.T_ref, _i:stdgo.GoInt):stdgo.syscall.js.T_ref`](<#function-_valueindex>)

- [`function _valueInstanceOf(_v:stdgo.syscall.js.T_ref, _t:stdgo.syscall.js.T_ref):Bool`](<#function-_valueinstanceof>)

- [`function _valueInvoke(_v:stdgo.syscall.js.T_ref, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo.syscall.js.T_ref;
}`](<#function-_valueinvoke>)

- [`function _valueLength(_v:stdgo.syscall.js.T_ref):stdgo.GoInt`](<#function-_valuelength>)

- [`function _valueLoadString(_v:stdgo.syscall.js.T_ref, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_valueloadstring>)

- [`function _valueNew(_v:stdgo.syscall.js.T_ref, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo.syscall.js.T_ref;
}`](<#function-_valuenew>)

- [`function _valuePrepareString(_v:stdgo.syscall.js.T_ref):{
	_1:stdgo.GoInt;
	_0:stdgo.syscall.js.T_ref;
}`](<#function-_valuepreparestring>)

- [`function _valueSet(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString, _x:stdgo.syscall.js.T_ref):Void`](<#function-_valueset>)

- [`function _valueSetIndex(_v:stdgo.syscall.js.T_ref, _i:stdgo.GoInt, _x:stdgo.syscall.js.T_ref):Void`](<#function-_valuesetindex>)

- [`function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.Value):stdgo.GoInt`](<#function-copybytestogo>)

- [`function copyBytesToJS(_dst:stdgo.syscall.js.Value, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-copybytestojs>)

- [`function funcOf(_fn:(_this:stdgo.syscall.js.Value, _args:stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface):stdgo.syscall.js.Func`](<#function-funcof>)

- [`function global():stdgo.syscall.js.Value`](<#function-global>)

- [`function null_():stdgo.syscall.js.Value`](<#function-null_>)

- [`function undefined():stdgo.syscall.js.Value`](<#function-undefined>)

- [`function valueOf(_x:stdgo.AnyInterface):stdgo.syscall.js.Value`](<#function-valueof>)

- [class Func](<#class-func>)

  - [`function _float(_p:stdgo.GoString):stdgo.GoFloat64`](<#func-function-_float>)

  - [`function _isNumber():Bool`](<#func-function-_isnumber>)

  - [`function bool_():Bool`](<#func-function-bool_>)

  - [`function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-call>)

  - [`function delete(_p:stdgo.GoString):Void`](<#func-function-delete>)

  - [`function equal(__0:stdgo.syscall.js.Value):Bool`](<#func-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#func-function-float_>)

  - [`function get(_p:stdgo.GoString):stdgo.syscall.js.Value`](<#func-function-get>)

  - [`function index(_i:stdgo.GoInt):stdgo.syscall.js.Value`](<#func-function-index>)

  - [`function instanceOf(__0:stdgo.syscall.js.Value):Bool`](<#func-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#func-function-int_>)

  - [`function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-invoke>)

  - [`function isNaN():Bool`](<#func-function-isnan>)

  - [`function isNull():Bool`](<#func-function-isnull>)

  - [`function isUndefined():Bool`](<#func-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#func-function-length_>)

  - [`function new(?value:stdgo.syscall.js.Value, ?_id:stdgo.GoUInt32):Void`](<#func-function-new>)

  - [`function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-new_>)

  - [`function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#func-function-set>)

  - [`function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#func-function-setindex>)

  - [`function string():stdgo.GoString`](<#func-function-string>)

  - [`function truthy():Bool`](<#func-function-truthy>)

  - [`function type():stdgo.syscall.js.Type_`](<#func-function-type>)

  - [`function _float( _p:stdgo.GoString):stdgo.GoFloat64`](<#func-function-_float>)

  - [`function _isNumber():Bool`](<#func-function-_isnumber>)

  - [`function bool_():Bool`](<#func-function-bool_>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#func-function-delete>)

  - [`function equal( __0:stdgo.syscall.js.Value):Bool`](<#func-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#func-function-float_>)

  - [`function get( _p:stdgo.GoString):stdgo.syscall.js.Value`](<#func-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo.syscall.js.Value`](<#func-function-index>)

  - [`function instanceOf( __0:stdgo.syscall.js.Value):Bool`](<#func-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#func-function-int_>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-invoke>)

  - [`function isNaN():Bool`](<#func-function-isnan>)

  - [`function isNull():Bool`](<#func-function-isnull>)

  - [`function isUndefined():Bool`](<#func-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#func-function-length_>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-new_>)

  - [`function release():Void`](<#func-function-release>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#func-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#func-function-setindex>)

  - [`function string():stdgo.GoString`](<#func-function-string>)

  - [`function truthy():Bool`](<#func-function-truthy>)

  - [`function type():stdgo.syscall.js.Type_`](<#func-function-type>)

- [class T\_error](<#class-t_error>)

  - [`function _float(_p:stdgo.GoString):stdgo.GoFloat64`](<#t_error-function-_float>)

  - [`function _isNumber():Bool`](<#t_error-function-_isnumber>)

  - [`function bool_():Bool`](<#terror-function-bool>)

  - [`function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#t_error-function-call>)

  - [`function delete(_p:stdgo.GoString):Void`](<#t_error-function-delete>)

  - [`function equal(__0:stdgo.syscall.js.Value):Bool`](<#t_error-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#terror-function-float>)

  - [`function get(_p:stdgo.GoString):stdgo.syscall.js.Value`](<#t_error-function-get>)

  - [`function index(_i:stdgo.GoInt):stdgo.syscall.js.Value`](<#t_error-function-index>)

  - [`function instanceOf(__0:stdgo.syscall.js.Value):Bool`](<#t_error-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#terror-function-int>)

  - [`function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#t_error-function-invoke>)

  - [`function isNaN():Bool`](<#t_error-function-isnan>)

  - [`function isNull():Bool`](<#t_error-function-isnull>)

  - [`function isUndefined():Bool`](<#t_error-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#terror-function-length>)

  - [`function new(?value:stdgo.syscall.js.Value):Void`](<#t_error-function-new>)

  - [`function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#terror-function-new>)

  - [`function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#t_error-function-set>)

  - [`function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#t_error-function-setindex>)

  - [`function string():stdgo.GoString`](<#t_error-function-string>)

  - [`function truthy():Bool`](<#t_error-function-truthy>)

  - [`function type():stdgo.syscall.js.Type_`](<#t_error-function-type>)

  - [`function _float( _p:stdgo.GoString):stdgo.GoFloat64`](<#t_error-function-_float>)

  - [`function _isNumber():Bool`](<#t_error-function-_isnumber>)

  - [`function bool_():Bool`](<#terror-function-bool>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#t_error-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#t_error-function-delete>)

  - [`function equal( __0:stdgo.syscall.js.Value):Bool`](<#t_error-function-equal>)

  - [`function error():stdgo.GoString`](<#t_error-function-error>)

  - [`function float_():stdgo.GoFloat64`](<#terror-function-float>)

  - [`function get( _p:stdgo.GoString):stdgo.syscall.js.Value`](<#t_error-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo.syscall.js.Value`](<#t_error-function-index>)

  - [`function instanceOf( __0:stdgo.syscall.js.Value):Bool`](<#t_error-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#terror-function-int>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#t_error-function-invoke>)

  - [`function isNaN():Bool`](<#t_error-function-isnan>)

  - [`function isNull():Bool`](<#t_error-function-isnull>)

  - [`function isUndefined():Bool`](<#t_error-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#terror-function-length>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#terror-function-new>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#t_error-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#t_error-function-setindex>)

  - [`function string():stdgo.GoString`](<#t_error-function-string>)

  - [`function truthy():Bool`](<#t_error-function-truthy>)

  - [`function type():stdgo.syscall.js.Type_`](<#t_error-function-type>)

- [class Value](<#class-value>)

  - [`function new(?__26:stdgo.GoArray<():Void>, ?_ref:Null<stdgo.syscall.js.T_ref>, ?_gcPtr:stdgo.Pointer<stdgo.syscall.js.T_ref>):Void`](<#value-function-new>)

  - [`function _float( _method:stdgo.GoString):stdgo.GoFloat64`](<#value-function-_float>)

  - [`function _isNumber():Bool`](<#value-function-_isnumber>)

  - [`function bool_():Bool`](<#value-function-bool_>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#value-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#value-function-delete>)

  - [`function equal( _w:stdgo.syscall.js.Value):Bool`](<#value-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#value-function-float_>)

  - [`function get( _p:stdgo.GoString):stdgo.syscall.js.Value`](<#value-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo.syscall.js.Value`](<#value-function-index>)

  - [`function instanceOf( _t:stdgo.syscall.js.Value):Bool`](<#value-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#value-function-int_>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#value-function-invoke>)

  - [`function isNaN():Bool`](<#value-function-isnan>)

  - [`function isNull():Bool`](<#value-function-isnull>)

  - [`function isUndefined():Bool`](<#value-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#value-function-length_>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#value-function-new_>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#value-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#value-function-setindex>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function truthy():Bool`](<#value-function-truthy>)

  - [`function type():stdgo.syscall.js.Type_`](<#value-function-type>)

- [class ValueError](<#class-valueerror>)

  - [`function new(?method:stdgo.GoString, ?type:Null<stdgo.syscall.js.Type_>):Void`](<#valueerror-function-new>)

  - [`function error():stdgo.GoString`](<#valueerror-function-error>)

- [typedef T\_ref](<#typedef-t_ref>)

- [typedef Type\_](<#typedef-type_>)

# Constants


```haxe
import stdgo.syscall.js.Js
```


```haxe
final _nanHead:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



nanHead are the upper 32 bits of a ref which are set if the value is not encoded as an IEEE 754 number \(see above\).  

```haxe
final _typeFlagFunction:Null<Dynamic> = @:invalid_type null
```


```haxe
final _typeFlagNone:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



the type flags need to be in sync with wasm\_exec.js  

```haxe
final _typeFlagObject:Null<Dynamic> = @:invalid_type null
```


```haxe
final _typeFlagString:Null<Dynamic> = @:invalid_type null
```


```haxe
final _typeFlagSymbol:Null<Dynamic> = @:invalid_type null
```


```haxe
final typeBoolean:stdgo.syscall.js.Type_ = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.syscall.js.Js.Type_))
```


```haxe
final typeFunction:stdgo.syscall.js.Type_ = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.syscall.js.Js.Type_))
```


```haxe
final typeNull:stdgo.syscall.js.Type_ = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.syscall.js.Js.Type_))
```


```haxe
final typeNumber:stdgo.syscall.js.Type_ = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.syscall.js.Js.Type_))
```


```haxe
final typeObject:stdgo.syscall.js.Type_ = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.syscall.js.Js.Type_))
```


```haxe
final typeString:stdgo.syscall.js.Type_ = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.syscall.js.Js.Type_))
```


```haxe
final typeSymbol:stdgo.syscall.js.Type_ = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.syscall.js.Js.Type_))
```


```haxe
final typeUndefined:stdgo.syscall.js.Type_ = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.syscall.js.Js.Type_))
```


# Variables


```haxe
import stdgo.syscall.js.Js
```


```haxe
var _arrayConstructor:stdgo.syscall.js.Value
```


```haxe
var _funcs:stdgo.GoMap<stdgo.GoUInt32, (:stdgo.syscall.js.Value, :stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface>
```


```haxe
var _funcsMu:stdgo.sync.Mutex
```


```haxe
var _jsGo:stdgo.syscall.js.Value
```



instance of the Go class in JavaScript  

```haxe
var _nextFuncID:stdgo.GoUInt32
```


```haxe
var _objectConstructor:stdgo.syscall.js.Value
```


```haxe
var _valueFalse:stdgo.syscall.js.Value
```


```haxe
var _valueGlobal:stdgo.syscall.js.Value
```


```haxe
var _valueNaN:stdgo.syscall.js.Value
```


```haxe
var _valueNull:stdgo.syscall.js.Value
```


```haxe
var _valueTrue:stdgo.syscall.js.Value
```


```haxe
var _valueUndefined:stdgo.syscall.js.Value
```


```haxe
var _valueZero:stdgo.syscall.js.Value
```


# Functions


```haxe
import stdgo.syscall.js.Js
```


## function \_copyBytesToGo


```haxe
function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.T_ref):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```



go:wasmimport gojs syscall/js.copyBytesToGo  

[\(view code\)](<./Js.hx#L480>)


## function \_copyBytesToJS


```haxe
function _copyBytesToJS(_dst:stdgo.syscall.js.T_ref, _src:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```



go:wasmimport gojs syscall/js.copyBytesToJS  

[\(view code\)](<./Js.hx#L490>)


## function \_finalizeRef


```haxe
function _finalizeRef(_r:stdgo.syscall.js.T_ref):Void
```



go:wasmimport gojs syscall/js.finalizeRef  

[\(view code\)](<./Js.hx#L384>)


## function \_floatValue


```haxe
function _floatValue(_f:stdgo.GoFloat64):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L386>)


## function \_handleEvent


```haxe
function _handleEvent():Bool
```



handleEvent retrieves the pending event \(window.\_pendingEvent\) and calls the js.Func on it.
It returns true if an event was handled.  

[\(view code\)](<./Js.hx#L379>)


## function \_jsString


```haxe
function _jsString(_v:stdgo.syscall.js.Value):stdgo.GoString
```


[\(view code\)](<./Js.hx#L458>)


## function \_makeArgs


```haxe
function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):{
	_1:stdgo.Slice<stdgo.syscall.js.T_ref>;
	_0:stdgo.Slice<stdgo.syscall.js.Value>;
}
```


[\(view code\)](<./Js.hx#L440>)


## function \_makeValue


```haxe
function _makeValue(_r:stdgo.syscall.js.T_ref):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L380>)


## function \_predefValue


```haxe
function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoByte):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L385>)


## function \_setEventHandler


```haxe
function _setEventHandler(_fn:():Bool):Void
```



setEventHandler is defined in the runtime package.  

[\(view code\)](<./Js.hx#L374>)


## function \_stringVal


```haxe
function _stringVal(_x:stdgo.GoString):stdgo.syscall.js.T_ref
```



go:wasmimport gojs syscall/js.stringVal  

[\(view code\)](<./Js.hx#L419>)


## function \_valueCall


```haxe
function _valueCall(_v:stdgo.syscall.js.T_ref, _m:stdgo.GoString, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo.syscall.js.T_ref;
}
```



go:wasmimport gojs syscall/js.valueCall
go:nosplit  

[\(view code\)](<./Js.hx#L449>)


## function \_valueDelete


```haxe
function _valueDelete(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString):Void
```



go:wasmimport gojs syscall/js.valueDelete  

[\(view code\)](<./Js.hx#L431>)


## function \_valueGet


```haxe
function _valueGet(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString):stdgo.syscall.js.T_ref
```



go:wasmimport gojs syscall/js.valueGet  

[\(view code\)](<./Js.hx#L423>)


## function \_valueIndex


```haxe
function _valueIndex(_v:stdgo.syscall.js.T_ref, _i:stdgo.GoInt):stdgo.syscall.js.T_ref
```



go:wasmimport gojs syscall/js.valueIndex  

[\(view code\)](<./Js.hx#L435>)


## function \_valueInstanceOf


```haxe
function _valueInstanceOf(_v:stdgo.syscall.js.T_ref, _t:stdgo.syscall.js.T_ref):Bool
```



go:wasmimport gojs syscall/js.valueInstanceOf  

[\(view code\)](<./Js.hx#L470>)


## function \_valueInvoke


```haxe
function _valueInvoke(_v:stdgo.syscall.js.T_ref, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo.syscall.js.T_ref;
}
```



go:wasmimport gojs syscall/js.valueInvoke  

[\(view code\)](<./Js.hx#L453>)


## function \_valueLength


```haxe
function _valueLength(_v:stdgo.syscall.js.T_ref):stdgo.GoInt
```



go:wasmimport gojs syscall/js.valueLength  

[\(view code\)](<./Js.hx#L444>)


## function \_valueLoadString


```haxe
function _valueLoadString(_v:stdgo.syscall.js.T_ref, _b:stdgo.Slice<stdgo.GoByte>):Void
```



go:wasmimport gojs syscall/js.valueLoadString  

[\(view code\)](<./Js.hx#L466>)


## function \_valueNew


```haxe
function _valueNew(_v:stdgo.syscall.js.T_ref, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo.syscall.js.T_ref;
}
```



go:wasmimport gojs syscall/js.valueNew  

[\(view code\)](<./Js.hx#L457>)


## function \_valuePrepareString


```haxe
function _valuePrepareString(_v:stdgo.syscall.js.T_ref):{
	_1:stdgo.GoInt;
	_0:stdgo.syscall.js.T_ref;
}
```



go:wasmimport gojs syscall/js.valuePrepareString  

[\(view code\)](<./Js.hx#L462>)


## function \_valueSet


```haxe
function _valueSet(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString, _x:stdgo.syscall.js.T_ref):Void
```



go:wasmimport gojs syscall/js.valueSet  

[\(view code\)](<./Js.hx#L427>)


## function \_valueSetIndex


```haxe
function _valueSetIndex(_v:stdgo.syscall.js.T_ref, _i:stdgo.GoInt, _x:stdgo.syscall.js.T_ref):Void
```



go:wasmimport gojs syscall/js.valueSetIndex  

[\(view code\)](<./Js.hx#L439>)


## function copyBytesToGo


```haxe
function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.Value):stdgo.GoInt
```



CopyBytesToGo copies bytes from src to dst.
It panics if src is not a Uint8Array or Uint8ClampedArray.
It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.  

[\(view code\)](<./Js.hx#L476>)


## function copyBytesToJS


```haxe
function copyBytesToJS(_dst:stdgo.syscall.js.Value, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



CopyBytesToJS copies bytes from src to dst.
It panics if dst is not a Uint8Array or Uint8ClampedArray.
It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.  

[\(view code\)](<./Js.hx#L486>)


## function funcOf


```haxe
function funcOf(_fn:(_this:stdgo.syscall.js.Value, _args:stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface):stdgo.syscall.js.Func
```



FuncOf returns a function to be used by JavaScript.  


The Go function fn is called with the value of JavaScript's "this" keyword and the
arguments of the invocation. The return value of the invocation is
the result of the Go function mapped back to JavaScript according to ValueOf.  


Invoking the wrapped Go function from JavaScript will
pause the event loop and spawn a new goroutine.
Other wrapped functions which are triggered during a call from Go to JavaScript
get executed on the same goroutine.  


As a consequence, if one wrapped function blocks, JavaScript's event loop
is blocked until that function returns. Hence, calling any async JavaScript
API, which requires the event loop, like fetch \(http.Client\), will cause an
immediate deadlock. Therefore a blocking function should explicitly start a
new goroutine.  


Func.Release must be called to free up resources when the function will not be invoked any more.  

[\(view code\)](<./Js.hx#L370>)


## function global


```haxe
function global():stdgo.syscall.js.Value
```



Global returns the JavaScript global object, usually "window" or "global".  

[\(view code\)](<./Js.hx#L398>)


## function null\_


```haxe
function null_():stdgo.syscall.js.Value
```



Null returns the JavaScript value "null".  

[\(view code\)](<./Js.hx#L394>)


## function undefined


```haxe
function undefined():stdgo.syscall.js.Value
```



Undefined returns the JavaScript value "undefined".  

[\(view code\)](<./Js.hx#L390>)


## function valueOf


```haxe
function valueOf(_x:stdgo.AnyInterface):stdgo.syscall.js.Value
```



ValueOf returns x as a JavaScript value:  

```
	| Go                     | JavaScript             |
	| ---------------------- | ---------------------- |
	| js.Value               | [its value]            |
	| js.Func                | function               |
	| nil                    | null                   |
	| bool                   | boolean                |
	| integers and floats    | number                 |
	| string                 | string                 |
	| []interface{}          | new array              |
	| map[string]interface{} | new object             |
```

Panics if x is not one of the expected types.  

[\(view code\)](<./Js.hx#L415>)


# Classes


```haxe
import stdgo.syscall.js.*
```


## class Func



Func is a wrapped Go function to be called by JavaScript.  

```haxe
var _id:stdgo.GoUInt32
```


```haxe
var value:stdgo.syscall.js.Value
```


### Func function \_float


```haxe
function _float(_p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L227>)


### Func function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L229>)


### Func function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L187>)


### Func function call


```haxe
function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L189>)


### Func function delete


```haxe
function delete(_p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L191>)


### Func function equal


```haxe
function equal(__0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L193>)


### Func function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L195>)


### Func function get


```haxe
function get(_p:stdgo.GoString):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L197>)


### Func function index


```haxe
function index(_i:stdgo.GoInt):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L199>)


### Func function instanceOf


```haxe
function instanceOf(__0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L201>)


### Func function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L203>)


### Func function invoke


```haxe
function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L205>)


### Func function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L207>)


### Func function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L209>)


### Func function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L211>)


### Func function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L213>)


### Func function new


```haxe
function new(?value:stdgo.syscall.js.Value, ?_id:stdgo.GoUInt32):Void
```


[\(view code\)](<./Js.hx#L181>)


### Func function new\_


```haxe
function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L215>)


### Func function set


```haxe
function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L217>)


### Func function setIndex


```haxe
function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L219>)


### Func function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L221>)


### Func function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L223>)


### Func function type


```haxe
function type():stdgo.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L225>)


### Func function \_float


```haxe
function _float( _p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L562>)


### Func function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L560>)


### Func function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L602>)


### Func function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L600>)


### Func function delete


```haxe
function delete( _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L598>)


### Func function equal


```haxe
function equal( __0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L596>)


### Func function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L594>)


### Func function get


```haxe
function get( _p:stdgo.GoString):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L592>)


### Func function index


```haxe
function index( _i:stdgo.GoInt):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L590>)


### Func function instanceOf


```haxe
function instanceOf( __0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L588>)


### Func function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L586>)


### Func function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L584>)


### Func function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L582>)


### Func function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L580>)


### Func function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L578>)


### Func function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L576>)


### Func function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L574>)


### Func function release


```haxe
function release():Void
```



Release frees up resources allocated for the function.
The function must not be invoked after calling Release.
It is allowed to call Release while the function is still running.  

[\(view code\)](<./Js.hx#L558>)


### Func function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L572>)


### Func function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L570>)


### Func function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L568>)


### Func function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L566>)


### Func function type


```haxe
function type():stdgo.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L564>)


## class T\_error



Error wraps a JavaScript error.  

```haxe
var value:stdgo.syscall.js.Value
```



Value is the underlying JavaScript error value.  

### T\_error function \_float


```haxe
function _float(_p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L311>)


### T\_error function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L313>)


### T\_error function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L271>)


### T\_error function call


```haxe
function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L273>)


### T\_error function delete


```haxe
function delete(_p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L275>)


### T\_error function equal


```haxe
function equal(__0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L277>)


### T\_error function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L279>)


### T\_error function get


```haxe
function get(_p:stdgo.GoString):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L281>)


### T\_error function index


```haxe
function index(_i:stdgo.GoInt):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L283>)


### T\_error function instanceOf


```haxe
function instanceOf(__0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L285>)


### T\_error function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L287>)


### T\_error function invoke


```haxe
function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L289>)


### T\_error function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L291>)


### T\_error function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L293>)


### T\_error function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L295>)


### T\_error function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L297>)


### T\_error function new


```haxe
function new(?value:stdgo.syscall.js.Value):Void
```


[\(view code\)](<./Js.hx#L266>)


### T\_error function new\_


```haxe
function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L299>)


### T\_error function set


```haxe
function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L301>)


### T\_error function setIndex


```haxe
function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L303>)


### T\_error function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L305>)


### T\_error function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L307>)


### T\_error function type


```haxe
function type():stdgo.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L309>)


### T\_error function \_float


```haxe
function _float( _p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L932>)


### T\_error function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L930>)


### T\_error function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L972>)


### T\_error function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L970>)


### T\_error function delete


```haxe
function delete( _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L968>)


### T\_error function equal


```haxe
function equal( __0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L966>)


### T\_error function error


```haxe
function error():stdgo.GoString
```



Error implements the error interface.  

[\(view code\)](<./Js.hx#L928>)


### T\_error function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L964>)


### T\_error function get


```haxe
function get( _p:stdgo.GoString):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L962>)


### T\_error function index


```haxe
function index( _i:stdgo.GoInt):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L960>)


### T\_error function instanceOf


```haxe
function instanceOf( __0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L958>)


### T\_error function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L956>)


### T\_error function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L954>)


### T\_error function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L952>)


### T\_error function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L950>)


### T\_error function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L948>)


### T\_error function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L946>)


### T\_error function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L944>)


### T\_error function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L942>)


### T\_error function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L940>)


### T\_error function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L938>)


### T\_error function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L936>)


### T\_error function type


```haxe
function type():stdgo.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L934>)


## class Value



Value represents a JavaScript value. The zero value is the JavaScript value "undefined".
Values can be checked for equality with the Equal method.  

```haxe
var __26:stdgo.GoArray<():Void>
```


```haxe
var _gcPtr:stdgo.Pointer<stdgo.syscall.js.T_ref>
```


```haxe
var _ref:stdgo.syscall.js.T_ref
```


### Value function new


```haxe
function new(?__26:stdgo.GoArray<():Void>, ?_ref:Null<stdgo.syscall.js.T_ref>, ?_gcPtr:stdgo.Pointer<stdgo.syscall.js.T_ref>):Void
```


[\(view code\)](<./Js.hx#L245>)


### Value function \_float


```haxe
function _float( _method:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L778>)


### Value function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L780>)


### Value function bool\_


```haxe
function bool_():Bool
```



Bool returns the value v as a bool.
It panics if v is not a JavaScript boolean.  

[\(view code\)](<./Js.hx#L764>)


### Value function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```



Call does a JavaScript call to the method m of value v with the given arguments.
It panics if v has no method m.
The arguments get mapped to JavaScript values according to the ValueOf function.  

[\(view code\)](<./Js.hx#L801>)


### Value function delete


```haxe
function delete( _p:stdgo.GoString):Void
```



Delete deletes the JavaScript property p of value v.
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L825>)


### Value function equal


```haxe
function equal( _w:stdgo.syscall.js.Value):Bool
```



Equal reports whether v and w are equal according to JavaScript's === operator.  

[\(view code\)](<./Js.hx#L863>)


### Value function float\_


```haxe
function float_():stdgo.GoFloat64
```



Float returns the value v as a float64.
It panics if v is not a JavaScript number.  

[\(view code\)](<./Js.hx#L776>)


### Value function get


```haxe
function get( _p:stdgo.GoString):stdgo.syscall.js.Value
```



Get returns the JavaScript property p of value v.
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L837>)


### Value function index


```haxe
function index( _i:stdgo.GoInt):stdgo.syscall.js.Value
```



Index returns JavaScript index i of value v.
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L819>)


### Value function instanceOf


```haxe
function instanceOf( _t:stdgo.syscall.js.Value):Bool
```



InstanceOf reports whether v is an instance of type t according to JavaScript's instanceof operator.  

[\(view code\)](<./Js.hx#L743>)


### Value function int\_


```haxe
function int_():stdgo.GoInt
```



Int returns the value v truncated to an int.
It panics if v is not a JavaScript number.  

[\(view code\)](<./Js.hx#L770>)


### Value function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```



Invoke does a JavaScript call of the value v with the given arguments.
It panics if v is not a JavaScript function.
The arguments get mapped to JavaScript values according to the ValueOf function.  

[\(view code\)](<./Js.hx#L794>)


### Value function isNaN


```haxe
function isNaN():Bool
```



IsNaN reports whether v is the JavaScript value "NaN".  

[\(view code\)](<./Js.hx#L848>)


### Value function isNull


```haxe
function isNull():Bool
```



IsNull reports whether v is the JavaScript value "null".  

[\(view code\)](<./Js.hx#L853>)


### Value function isUndefined


```haxe
function isUndefined():Bool
```



IsUndefined reports whether v is the JavaScript value "undefined".  

[\(view code\)](<./Js.hx#L858>)


### Value function length\_


```haxe
function length_():stdgo.GoInt
```



Length returns the JavaScript property "length" of v.
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L807>)


### Value function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```



New uses JavaScript's "new" operator with value v as constructor and the given arguments.
It panics if v is not a JavaScript function.
The arguments get mapped to JavaScript values according to the ValueOf function.  

[\(view code\)](<./Js.hx#L787>)


### Value function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```



Set sets the JavaScript property p of value v to ValueOf\(x\).
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L831>)


### Value function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```



SetIndex sets the JavaScript index i of value v to ValueOf\(x\).
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L813>)


### Value function string


```haxe
function string():stdgo.GoString
```



String returns the value v as a string.
String is a special case because of Go's String method convention. Unlike the other getters,
it does not panic if v's Type is not TypeString. Instead, it returns a string of the form "\<T\>"
or "\<T: V\>" where T is v's type and V is a string representation of v's value.  

[\(view code\)](<./Js.hx#L751>)


### Value function truthy


```haxe
function truthy():Bool
```



Truthy returns the JavaScript "truthiness" of the value v. In JavaScript,
false, 0, "", null, undefined, and NaN are "falsy", and everything else is
"truthy". See https://developer.mozilla.org/en-US/docs/Glossary/Truthy.  

[\(view code\)](<./Js.hx#L758>)


### Value function type


```haxe
function type():stdgo.syscall.js.Type_
```



Type returns the JavaScript type of the value v. It is similar to JavaScript's typeof operator,
except that it returns TypeNull instead of TypeObject for null.  

[\(view code\)](<./Js.hx#L843>)


## class ValueError



A ValueError occurs when a Value method is invoked on
a Value that does not support it. Such cases are documented
in the description of each method.  

```haxe
var method:stdgo.GoString
```


```haxe
var type:stdgo.syscall.js.Type_
```


### ValueError function new


```haxe
function new(?method:stdgo.GoString, ?type:Null<stdgo.syscall.js.Type_>):Void
```


[\(view code\)](<./Js.hx#L328>)


### ValueError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Js.hx#L987>)


# Typedefs


```haxe
import stdgo.syscall.js.*
```


## typedef T\_ref


```haxe
typedef T_ref = stdgo.GoUInt64;
```



ref is used to identify a JavaScript value, since the value itself can not be passed to WebAssembly.  


The JavaScript value "undefined" is represented by the value 0.
A JavaScript number \(64\-bit float, except 0 and NaN\) is represented by its IEEE 754 binary representation.
All other values are represented as an IEEE 754 binary representation of NaN with bits 0\-31 used as
an ID and bits 32\-34 used to differentiate between string, symbol, function and object.  

## typedef Type\_


```haxe
typedef Type_ = stdgo.GoInt;
```



Type represents the JavaScript type of a Value.  

