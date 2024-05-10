# Module: `stdgo._internal.syscall.js`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo._internal.syscall.js.T_ref):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_copybytestogo>)

- [`function _copyBytesToJS(_dst:stdgo._internal.syscall.js.T_ref, _src:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_copybytestojs>)

- [`function _finalizeRef(_r:stdgo._internal.syscall.js.T_ref):Void`](<#function-_finalizeref>)

- [`function _floatValue(_f:stdgo.GoFloat64):stdgo._internal.syscall.js.Value`](<#function-_floatvalue>)

- [`function _handleEvent():Bool`](<#function-_handleevent>)

- [`function _jsString(_v:stdgo._internal.syscall.js.Value):stdgo.GoString`](<#function-_jsstring>)

- [`function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):{
	_1:stdgo.Slice<stdgo._internal.syscall.js.T_ref>;
	_0:stdgo.Slice<stdgo._internal.syscall.js.Value>;
}`](<#function-_makeargs>)

- [`function _makeValue(_r:stdgo._internal.syscall.js.T_ref):stdgo._internal.syscall.js.Value`](<#function-_makevalue>)

- [`function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoByte):stdgo._internal.syscall.js.Value`](<#function-_predefvalue>)

- [`function _setEventHandler(_fn:():Bool):Void`](<#function-_seteventhandler>)

- [`function _stringVal(_x:stdgo.GoString):stdgo._internal.syscall.js.T_ref`](<#function-_stringval>)

- [`function _valueCall(_v:stdgo._internal.syscall.js.T_ref, _m:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}`](<#function-_valuecall>)

- [`function _valueDelete(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString):Void`](<#function-_valuedelete>)

- [`function _valueGet(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString):stdgo._internal.syscall.js.T_ref`](<#function-_valueget>)

- [`function _valueIndex(_v:stdgo._internal.syscall.js.T_ref, _i:stdgo.GoInt):stdgo._internal.syscall.js.T_ref`](<#function-_valueindex>)

- [`function _valueInstanceOf(_v:stdgo._internal.syscall.js.T_ref, _t:stdgo._internal.syscall.js.T_ref):Bool`](<#function-_valueinstanceof>)

- [`function _valueInvoke(_v:stdgo._internal.syscall.js.T_ref, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}`](<#function-_valueinvoke>)

- [`function _valueLength(_v:stdgo._internal.syscall.js.T_ref):stdgo.GoInt`](<#function-_valuelength>)

- [`function _valueLoadString(_v:stdgo._internal.syscall.js.T_ref, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_valueloadstring>)

- [`function _valueNew(_v:stdgo._internal.syscall.js.T_ref, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}`](<#function-_valuenew>)

- [`function _valuePrepareString(_v:stdgo._internal.syscall.js.T_ref):{
	_1:stdgo.GoInt;
	_0:stdgo._internal.syscall.js.T_ref;
}`](<#function-_valuepreparestring>)

- [`function _valueSet(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString, _x:stdgo._internal.syscall.js.T_ref):Void`](<#function-_valueset>)

- [`function _valueSetIndex(_v:stdgo._internal.syscall.js.T_ref, _i:stdgo.GoInt, _x:stdgo._internal.syscall.js.T_ref):Void`](<#function-_valuesetindex>)

- [`function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo._internal.syscall.js.Value):stdgo.GoInt`](<#function-copybytestogo>)

- [`function copyBytesToJS(_dst:stdgo._internal.syscall.js.Value, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-copybytestojs>)

- [`function funcOf(_fn:(_this:stdgo._internal.syscall.js.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Value>):stdgo.AnyInterface):stdgo._internal.syscall.js.Func`](<#function-funcof>)

- [`function global():stdgo._internal.syscall.js.Value`](<#function-global>)

- [`function null_():stdgo._internal.syscall.js.Value`](<#function-null_>)

- [`function undefined():stdgo._internal.syscall.js.Value`](<#function-undefined>)

- [`function valueOf(_x:stdgo.AnyInterface):stdgo._internal.syscall.js.Value`](<#function-valueof>)

- [class Error](<#class-error>)

  - [`function _float(_p:stdgo.GoString):stdgo.GoFloat64`](<#error-function-_float>)

  - [`function _isNumber():Bool`](<#error-function-_isnumber>)

  - [`function bool_():Bool`](<#error-function-bool_>)

  - [`function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#error-function-call>)

  - [`function delete(_p:stdgo.GoString):Void`](<#error-function-delete>)

  - [`function equal(__0:stdgo._internal.syscall.js.Value):Bool`](<#error-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#error-function-float_>)

  - [`function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Value`](<#error-function-get>)

  - [`function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Value`](<#error-function-index>)

  - [`function instanceOf(__0:stdgo._internal.syscall.js.Value):Bool`](<#error-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#error-function-int_>)

  - [`function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#error-function-invoke>)

  - [`function isNaN():Bool`](<#error-function-isnan>)

  - [`function isNull():Bool`](<#error-function-isnull>)

  - [`function isUndefined():Bool`](<#error-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#error-function-length_>)

  - [`function new(?value:stdgo._internal.syscall.js.Value):Void`](<#error-function-new>)

  - [`function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#error-function-new_>)

  - [`function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#error-function-set>)

  - [`function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#error-function-setindex>)

  - [`function string():stdgo.GoString`](<#error-function-string>)

  - [`function truthy():Bool`](<#error-function-truthy>)

  - [`function type():stdgo._internal.syscall.js.Type_`](<#error-function-type>)

  - [`function _float( _p:stdgo.GoString):stdgo.GoFloat64`](<#error-function-_float>)

  - [`function _isNumber():Bool`](<#error-function-_isnumber>)

  - [`function bool_():Bool`](<#error-function-bool_>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#error-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#error-function-delete>)

  - [`function equal( __0:stdgo._internal.syscall.js.Value):Bool`](<#error-function-equal>)

  - [`function error():stdgo.GoString`](<#error-function-error>)

  - [`function float_():stdgo.GoFloat64`](<#error-function-float_>)

  - [`function get( _p:stdgo.GoString):stdgo._internal.syscall.js.Value`](<#error-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo._internal.syscall.js.Value`](<#error-function-index>)

  - [`function instanceOf( __0:stdgo._internal.syscall.js.Value):Bool`](<#error-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#error-function-int_>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#error-function-invoke>)

  - [`function isNaN():Bool`](<#error-function-isnan>)

  - [`function isNull():Bool`](<#error-function-isnull>)

  - [`function isUndefined():Bool`](<#error-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#error-function-length_>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#error-function-new_>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#error-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#error-function-setindex>)

  - [`function string():stdgo.GoString`](<#error-function-string>)

  - [`function truthy():Bool`](<#error-function-truthy>)

  - [`function type():stdgo._internal.syscall.js.Type_`](<#error-function-type>)

- [class Func](<#class-func>)

  - [`function _float(_p:stdgo.GoString):stdgo.GoFloat64`](<#func-function-_float>)

  - [`function _isNumber():Bool`](<#func-function-_isnumber>)

  - [`function bool_():Bool`](<#func-function-bool_>)

  - [`function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#func-function-call>)

  - [`function delete(_p:stdgo.GoString):Void`](<#func-function-delete>)

  - [`function equal(__0:stdgo._internal.syscall.js.Value):Bool`](<#func-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#func-function-float_>)

  - [`function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Value`](<#func-function-get>)

  - [`function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Value`](<#func-function-index>)

  - [`function instanceOf(__0:stdgo._internal.syscall.js.Value):Bool`](<#func-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#func-function-int_>)

  - [`function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#func-function-invoke>)

  - [`function isNaN():Bool`](<#func-function-isnan>)

  - [`function isNull():Bool`](<#func-function-isnull>)

  - [`function isUndefined():Bool`](<#func-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#func-function-length_>)

  - [`function new(?value:stdgo._internal.syscall.js.Value, ?_id:stdgo.GoUInt32):Void`](<#func-function-new>)

  - [`function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#func-function-new_>)

  - [`function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#func-function-set>)

  - [`function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#func-function-setindex>)

  - [`function string():stdgo.GoString`](<#func-function-string>)

  - [`function truthy():Bool`](<#func-function-truthy>)

  - [`function type():stdgo._internal.syscall.js.Type_`](<#func-function-type>)

  - [`function _float( _p:stdgo.GoString):stdgo.GoFloat64`](<#func-function-_float>)

  - [`function _isNumber():Bool`](<#func-function-_isnumber>)

  - [`function bool_():Bool`](<#func-function-bool_>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#func-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#func-function-delete>)

  - [`function equal( __0:stdgo._internal.syscall.js.Value):Bool`](<#func-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#func-function-float_>)

  - [`function get( _p:stdgo.GoString):stdgo._internal.syscall.js.Value`](<#func-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo._internal.syscall.js.Value`](<#func-function-index>)

  - [`function instanceOf( __0:stdgo._internal.syscall.js.Value):Bool`](<#func-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#func-function-int_>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#func-function-invoke>)

  - [`function isNaN():Bool`](<#func-function-isnan>)

  - [`function isNull():Bool`](<#func-function-isnull>)

  - [`function isUndefined():Bool`](<#func-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#func-function-length_>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#func-function-new_>)

  - [`function release():Void`](<#func-function-release>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#func-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#func-function-setindex>)

  - [`function string():stdgo.GoString`](<#func-function-string>)

  - [`function truthy():Bool`](<#func-function-truthy>)

  - [`function type():stdgo._internal.syscall.js.Type_`](<#func-function-type>)

- [class Value](<#class-value>)

  - [`function new(?__32:stdgo.GoArray<():Void>, ?_ref:Null<stdgo._internal.syscall.js.T_ref>, ?_gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.T_ref>):Void`](<#value-function-new>)

  - [`function _float( _method:stdgo.GoString):stdgo.GoFloat64`](<#value-function-_float>)

  - [`function _isNumber():Bool`](<#value-function-_isnumber>)

  - [`function bool_():Bool`](<#value-function-bool_>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#value-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#value-function-delete>)

  - [`function equal( _w:stdgo._internal.syscall.js.Value):Bool`](<#value-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#value-function-float_>)

  - [`function get( _p:stdgo.GoString):stdgo._internal.syscall.js.Value`](<#value-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo._internal.syscall.js.Value`](<#value-function-index>)

  - [`function instanceOf( _t:stdgo._internal.syscall.js.Value):Bool`](<#value-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#value-function-int_>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#value-function-invoke>)

  - [`function isNaN():Bool`](<#value-function-isnan>)

  - [`function isNull():Bool`](<#value-function-isnull>)

  - [`function isUndefined():Bool`](<#value-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#value-function-length_>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value`](<#value-function-new_>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#value-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#value-function-setindex>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function truthy():Bool`](<#value-function-truthy>)

  - [`function type():stdgo._internal.syscall.js.Type_`](<#value-function-type>)

- [class ValueError](<#class-valueerror>)

  - [`function new(?method:stdgo.GoString, ?type:Null<stdgo._internal.syscall.js.Type_>):Void`](<#valueerror-function-new>)

  - [`function error():stdgo.GoString`](<#valueerror-function-error>)

- [typedef T\_ref](<#typedef-t_ref>)

- [typedef Type\_](<#typedef-type_>)

# Constants


```haxe
import stdgo._internal.syscall.js.Js
```


```haxe
final _nanHead:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _typeFlagFunction:Null<Any> = @:invalid_type null
```


```haxe
final _typeFlagNone:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _typeFlagObject:Null<Any> = @:invalid_type null
```


```haxe
final _typeFlagString:Null<Any> = @:invalid_type null
```


```haxe
final _typeFlagSymbol:Null<Any> = @:invalid_type null
```


```haxe
final typeBoolean:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js.Type_))
```


```haxe
final typeFunction:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js.Type_))
```


```haxe
final typeNull:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js.Type_))
```


```haxe
final typeNumber:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js.Type_))
```


```haxe
final typeObject:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js.Type_))
```


```haxe
final typeString:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js.Type_))
```


```haxe
final typeSymbol:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js.Type_))
```


```haxe
final typeUndefined:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js.Type_))
```


# Variables


```haxe
import stdgo._internal.syscall.js.Js
```


```haxe
var _arrayConstructor:stdgo._internal.syscall.js.Value
```


```haxe
var _funcs:stdgo.GoMap<stdgo.GoUInt32, (:stdgo._internal.syscall.js.Value, :stdgo.Slice<stdgo._internal.syscall.js.Value>):stdgo.AnyInterface>
```


```haxe
var _funcsMu:stdgo._internal.sync.Mutex
```


```haxe
var _jsGo:stdgo._internal.syscall.js.Value
```


```haxe
var _nextFuncID:stdgo.GoUInt32
```


```haxe
var _objectConstructor:stdgo._internal.syscall.js.Value
```


```haxe
var _valueFalse:stdgo._internal.syscall.js.Value
```


```haxe
var _valueGlobal:stdgo._internal.syscall.js.Value
```


```haxe
var _valueNaN:stdgo._internal.syscall.js.Value
```


```haxe
var _valueNull:stdgo._internal.syscall.js.Value
```


```haxe
var _valueTrue:stdgo._internal.syscall.js.Value
```


```haxe
var _valueUndefined:stdgo._internal.syscall.js.Value
```


```haxe
var _valueZero:stdgo._internal.syscall.js.Value
```


# Functions


```haxe
import stdgo._internal.syscall.js.Js
```


## function \_copyBytesToGo


```haxe
function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo._internal.syscall.js.T_ref):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Js.hx#L198>)


## function \_copyBytesToJS


```haxe
function _copyBytesToJS(_dst:stdgo._internal.syscall.js.T_ref, _src:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Js.hx#L200>)


## function \_finalizeRef


```haxe
function _finalizeRef(_r:stdgo._internal.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L175>)


## function \_floatValue


```haxe
function _floatValue(_f:stdgo.GoFloat64):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L177>)


## function \_handleEvent


```haxe
function _handleEvent():Bool
```


[\(view code\)](<./Js.hx#L173>)


## function \_jsString


```haxe
function _jsString(_v:stdgo._internal.syscall.js.Value):stdgo.GoString
```


[\(view code\)](<./Js.hx#L193>)


## function \_makeArgs


```haxe
function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):{
	_1:stdgo.Slice<stdgo._internal.syscall.js.T_ref>;
	_0:stdgo.Slice<stdgo._internal.syscall.js.Value>;
}
```


[\(view code\)](<./Js.hx#L188>)


## function \_makeValue


```haxe
function _makeValue(_r:stdgo._internal.syscall.js.T_ref):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L174>)


## function \_predefValue


```haxe
function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoByte):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L176>)


## function \_setEventHandler


```haxe
function _setEventHandler(_fn:():Bool):Void
```


[\(view code\)](<./Js.hx#L172>)


## function \_stringVal


```haxe
function _stringVal(_x:stdgo.GoString):stdgo._internal.syscall.js.T_ref
```


[\(view code\)](<./Js.hx#L182>)


## function \_valueCall


```haxe
function _valueCall(_v:stdgo._internal.syscall.js.T_ref, _m:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}
```


[\(view code\)](<./Js.hx#L190>)


## function \_valueDelete


```haxe
function _valueDelete(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L185>)


## function \_valueGet


```haxe
function _valueGet(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString):stdgo._internal.syscall.js.T_ref
```


[\(view code\)](<./Js.hx#L183>)


## function \_valueIndex


```haxe
function _valueIndex(_v:stdgo._internal.syscall.js.T_ref, _i:stdgo.GoInt):stdgo._internal.syscall.js.T_ref
```


[\(view code\)](<./Js.hx#L186>)


## function \_valueInstanceOf


```haxe
function _valueInstanceOf(_v:stdgo._internal.syscall.js.T_ref, _t:stdgo._internal.syscall.js.T_ref):Bool
```


[\(view code\)](<./Js.hx#L196>)


## function \_valueInvoke


```haxe
function _valueInvoke(_v:stdgo._internal.syscall.js.T_ref, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}
```


[\(view code\)](<./Js.hx#L191>)


## function \_valueLength


```haxe
function _valueLength(_v:stdgo._internal.syscall.js.T_ref):stdgo.GoInt
```


[\(view code\)](<./Js.hx#L189>)


## function \_valueLoadString


```haxe
function _valueLoadString(_v:stdgo._internal.syscall.js.T_ref, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Js.hx#L195>)


## function \_valueNew


```haxe
function _valueNew(_v:stdgo._internal.syscall.js.T_ref, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}
```


[\(view code\)](<./Js.hx#L192>)


## function \_valuePrepareString


```haxe
function _valuePrepareString(_v:stdgo._internal.syscall.js.T_ref):{
	_1:stdgo.GoInt;
	_0:stdgo._internal.syscall.js.T_ref;
}
```


[\(view code\)](<./Js.hx#L194>)


## function \_valueSet


```haxe
function _valueSet(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString, _x:stdgo._internal.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L184>)


## function \_valueSetIndex


```haxe
function _valueSetIndex(_v:stdgo._internal.syscall.js.T_ref, _i:stdgo.GoInt, _x:stdgo._internal.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L187>)


## function copyBytesToGo


```haxe
function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo._internal.syscall.js.Value):stdgo.GoInt
```


[\(view code\)](<./Js.hx#L197>)


## function copyBytesToJS


```haxe
function copyBytesToJS(_dst:stdgo._internal.syscall.js.Value, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


[\(view code\)](<./Js.hx#L199>)


## function funcOf


```haxe
function funcOf(_fn:(_this:stdgo._internal.syscall.js.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Value>):stdgo.AnyInterface):stdgo._internal.syscall.js.Func
```


[\(view code\)](<./Js.hx#L171>)


## function global


```haxe
function global():stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L180>)


## function null\_


```haxe
function null_():stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L179>)


## function undefined


```haxe
function undefined():stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L178>)


## function valueOf


```haxe
function valueOf(_x:stdgo.AnyInterface):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L181>)


# Classes


```haxe
import stdgo._internal.syscall.js.*
```


## class Error


```haxe
var value:stdgo._internal.syscall.js.Value
```


### Error function \_float


```haxe
function _float(_p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L150>)


### Error function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L152>)


### Error function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L110>)


### Error function call


```haxe
function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L112>)


### Error function delete


```haxe
function delete(_p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L114>)


### Error function equal


```haxe
function equal(__0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L116>)


### Error function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L118>)


### Error function get


```haxe
function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L120>)


### Error function index


```haxe
function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L122>)


### Error function instanceOf


```haxe
function instanceOf(__0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L124>)


### Error function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L126>)


### Error function invoke


```haxe
function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L128>)


### Error function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L130>)


### Error function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L132>)


### Error function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L134>)


### Error function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L136>)


### Error function new


```haxe
function new(?value:stdgo._internal.syscall.js.Value):Void
```


[\(view code\)](<./Js.hx#L105>)


### Error function new\_


```haxe
function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L138>)


### Error function set


```haxe
function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L140>)


### Error function setIndex


```haxe
function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L142>)


### Error function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L144>)


### Error function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L146>)


### Error function type


```haxe
function type():stdgo._internal.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L148>)


### Error function \_float


```haxe
function _float( _p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L464>)


### Error function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L462>)


### Error function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L504>)


### Error function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L502>)


### Error function delete


```haxe
function delete( _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L500>)


### Error function equal


```haxe
function equal( __0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L498>)


### Error function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Js.hx#L460>)


### Error function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L496>)


### Error function get


```haxe
function get( _p:stdgo.GoString):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L494>)


### Error function index


```haxe
function index( _i:stdgo.GoInt):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L492>)


### Error function instanceOf


```haxe
function instanceOf( __0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L490>)


### Error function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L488>)


### Error function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L486>)


### Error function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L484>)


### Error function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L482>)


### Error function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L480>)


### Error function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L478>)


### Error function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L476>)


### Error function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L474>)


### Error function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L472>)


### Error function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L470>)


### Error function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L468>)


### Error function type


```haxe
function type():stdgo._internal.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L466>)


## class Func


```haxe
var _id:stdgo.GoUInt32
```


```haxe
var value:stdgo._internal.syscall.js.Value
```


### Func function \_float


```haxe
function _float(_p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L80>)


### Func function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L82>)


### Func function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L40>)


### Func function call


```haxe
function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L42>)


### Func function delete


```haxe
function delete(_p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L44>)


### Func function equal


```haxe
function equal(__0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L46>)


### Func function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L48>)


### Func function get


```haxe
function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L50>)


### Func function index


```haxe
function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L52>)


### Func function instanceOf


```haxe
function instanceOf(__0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L54>)


### Func function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L56>)


### Func function invoke


```haxe
function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L58>)


### Func function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L60>)


### Func function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L62>)


### Func function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L64>)


### Func function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L66>)


### Func function new


```haxe
function new(?value:stdgo._internal.syscall.js.Value, ?_id:stdgo.GoUInt32):Void
```


[\(view code\)](<./Js.hx#L34>)


### Func function new\_


```haxe
function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L68>)


### Func function set


```haxe
function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L70>)


### Func function setIndex


```haxe
function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L72>)


### Func function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L74>)


### Func function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L76>)


### Func function type


```haxe
function type():stdgo._internal.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L78>)


### Func function \_float


```haxe
function _float( _p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L262>)


### Func function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L260>)


### Func function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L302>)


### Func function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L300>)


### Func function delete


```haxe
function delete( _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L298>)


### Func function equal


```haxe
function equal( __0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L296>)


### Func function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L294>)


### Func function get


```haxe
function get( _p:stdgo.GoString):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L292>)


### Func function index


```haxe
function index( _i:stdgo.GoInt):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L290>)


### Func function instanceOf


```haxe
function instanceOf( __0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L288>)


### Func function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L286>)


### Func function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L284>)


### Func function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L282>)


### Func function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L280>)


### Func function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L278>)


### Func function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L276>)


### Func function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L274>)


### Func function release


```haxe
function release():Void
```


[\(view code\)](<./Js.hx#L258>)


### Func function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L272>)


### Func function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L270>)


### Func function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L268>)


### Func function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L266>)


### Func function type


```haxe
function type():stdgo._internal.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L264>)


## class Value


```haxe
var __32:stdgo.GoArray<():Void>
```


```haxe
var _gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.T_ref>
```


```haxe
var _ref:stdgo._internal.syscall.js.T_ref
```


### Value function new


```haxe
function new(?__32:stdgo.GoArray<():Void>, ?_ref:Null<stdgo._internal.syscall.js.T_ref>, ?_gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.T_ref>):Void
```


[\(view code\)](<./Js.hx#L92>)


### Value function \_float


```haxe
function _float( _method:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L371>)


### Value function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L373>)


### Value function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L365>)


### Value function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L379>)


### Value function delete


```haxe
function delete( _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L387>)


### Value function equal


```haxe
function equal( _w:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L401>)


### Value function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L369>)


### Value function get


```haxe
function get( _p:stdgo.GoString):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L391>)


### Value function index


```haxe
function index( _i:stdgo.GoInt):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L385>)


### Value function instanceOf


```haxe
function instanceOf( _t:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L359>)


### Value function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L367>)


### Value function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L377>)


### Value function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L395>)


### Value function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L397>)


### Value function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L399>)


### Value function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L381>)


### Value function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js.hx#L375>)


### Value function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L389>)


### Value function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L383>)


### Value function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L361>)


### Value function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L363>)


### Value function type


```haxe
function type():stdgo._internal.syscall.js.Type_
```


[\(view code\)](<./Js.hx#L393>)


## class ValueError


```haxe
var method:stdgo.GoString
```


```haxe
var type:stdgo._internal.syscall.js.Type_
```


### ValueError function new


```haxe
function new(?method:stdgo.GoString, ?type:Null<stdgo._internal.syscall.js.Type_>):Void
```


[\(view code\)](<./Js.hx#L160>)


### ValueError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Js.hx#L519>)


# Typedefs


```haxe
import stdgo._internal.syscall.js.*
```


## typedef T\_ref


```haxe
typedef T_ref = stdgo.GoUInt64;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo.GoInt;
```


