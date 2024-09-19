# Module: `stdgo._internal.syscall.js`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo._internal.syscall.js.T_ref):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_copybytestogo>)

- [`function _copyBytesToJS(_dst:stdgo._internal.syscall.js.T_ref, _src:stdgo.Slice<stdgo.GoUInt8>):{
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

- [`function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoUInt8):stdgo._internal.syscall.js.Value`](<#function-_predefvalue>)

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

- [`function _valueLoadString(_v:stdgo._internal.syscall.js.T_ref, _b:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_valueloadstring>)

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

- [`function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo._internal.syscall.js.Value):stdgo.GoInt`](<#function-copybytestogo>)

- [`function copyBytesToJS(_dst:stdgo._internal.syscall.js.Value, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-copybytestojs>)

- [`function funcOf(_fn:(:stdgo._internal.syscall.js.Value, :stdgo.Slice<stdgo._internal.syscall.js.Value>):stdgo.AnyInterface):stdgo._internal.syscall.js.Func`](<#function-funcof>)

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

- [class Value](<#class-value>)

  - [`function new(?__32:stdgo.GoArray<():Void>, ?_ref:stdgo._internal.syscall.js.T_ref, ?_gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.T_ref>):Void`](<#value-function-new>)

- [class ValueError](<#class-valueerror>)

  - [`function new(?method:stdgo.GoString, ?type:stdgo._internal.syscall.js.Type_):Void`](<#valueerror-function-new>)

- [typedef T\_ref](<#typedef-t_ref>)

- [typedef Type\_](<#typedef-type_>)

# Constants


```haxe
import stdgo._internal.syscall.js.Js_valueOf
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
final typeBoolean:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js_Type_.Type_))
```


```haxe
final typeFunction:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js_Type_.Type_))
```


```haxe
final typeNull:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js_Type_.Type_))
```


```haxe
final typeNumber:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js_Type_.Type_))
```


```haxe
final typeObject:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js_Type_.Type_))
```


```haxe
final typeString:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js_Type_.Type_))
```


```haxe
final typeSymbol:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js_Type_.Type_))
```


```haxe
final typeUndefined:stdgo._internal.syscall.js.Type_ = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.js.Js_Type_.Type_))
```


# Variables


```haxe
import stdgo._internal.syscall.js.Js_valueOf
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


```haxe
var jsgo:stdgo._internal.syscall.js.Value
```


# Functions


```haxe
import stdgo._internal.syscall.js.Js_valueOf
```


## function \_copyBytesToGo


```haxe
function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo._internal.syscall.js.T_ref):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_copyBytesToJS


```haxe
function _copyBytesToJS(_dst:stdgo._internal.syscall.js.T_ref, _src:stdgo.Slice<stdgo.GoUInt8>):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_finalizeRef


```haxe
function _finalizeRef(_r:stdgo._internal.syscall.js.T_ref):Void
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_floatValue


```haxe
function _floatValue(_f:stdgo.GoFloat64):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_handleEvent


```haxe
function _handleEvent():Bool
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_jsString


```haxe
function _jsString(_v:stdgo._internal.syscall.js.Value):stdgo.GoString
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_makeArgs


```haxe
function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):{
	_1:stdgo.Slice<stdgo._internal.syscall.js.T_ref>;
	_0:stdgo.Slice<stdgo._internal.syscall.js.Value>;
}
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_makeValue


```haxe
function _makeValue(_r:stdgo._internal.syscall.js.T_ref):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_predefValue


```haxe
function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoUInt8):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_setEventHandler


```haxe
function _setEventHandler(_fn:():Bool):Void
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_stringVal


```haxe
function _stringVal(_x:stdgo.GoString):stdgo._internal.syscall.js.T_ref
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueCall


```haxe
function _valueCall(_v:stdgo._internal.syscall.js.T_ref, _m:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueDelete


```haxe
function _valueDelete(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString):Void
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueGet


```haxe
function _valueGet(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString):stdgo._internal.syscall.js.T_ref
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueIndex


```haxe
function _valueIndex(_v:stdgo._internal.syscall.js.T_ref, _i:stdgo.GoInt):stdgo._internal.syscall.js.T_ref
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueInstanceOf


```haxe
function _valueInstanceOf(_v:stdgo._internal.syscall.js.T_ref, _t:stdgo._internal.syscall.js.T_ref):Bool
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueInvoke


```haxe
function _valueInvoke(_v:stdgo._internal.syscall.js.T_ref, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueLength


```haxe
function _valueLength(_v:stdgo._internal.syscall.js.T_ref):stdgo.GoInt
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueLoadString


```haxe
function _valueLoadString(_v:stdgo._internal.syscall.js.T_ref, _b:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueNew


```haxe
function _valueNew(_v:stdgo._internal.syscall.js.T_ref, _args:stdgo.Slice<stdgo._internal.syscall.js.T_ref>):{
	_1:Bool;
	_0:stdgo._internal.syscall.js.T_ref;
}
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valuePrepareString


```haxe
function _valuePrepareString(_v:stdgo._internal.syscall.js.T_ref):{
	_1:stdgo.GoInt;
	_0:stdgo._internal.syscall.js.T_ref;
}
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueSet


```haxe
function _valueSet(_v:stdgo._internal.syscall.js.T_ref, _p:stdgo.GoString, _x:stdgo._internal.syscall.js.T_ref):Void
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function \_valueSetIndex


```haxe
function _valueSetIndex(_v:stdgo._internal.syscall.js.T_ref, _i:stdgo.GoInt, _x:stdgo._internal.syscall.js.T_ref):Void
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function copyBytesToGo


```haxe
function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo._internal.syscall.js.Value):stdgo.GoInt
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function copyBytesToJS


```haxe
function copyBytesToJS(_dst:stdgo._internal.syscall.js.Value, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function funcOf


```haxe
function funcOf(_fn:(:stdgo._internal.syscall.js.Value, :stdgo.Slice<stdgo._internal.syscall.js.Value>):stdgo.AnyInterface):stdgo._internal.syscall.js.Func
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function global


```haxe
function global():stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function null\_


```haxe
function null_():stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function undefined


```haxe
function undefined():stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_valueOf.hx#L2>)


## function valueOf


```haxe
function valueOf(_x:stdgo.AnyInterface):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_valueOf.hx#L2>)


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


[\(view code\)](<./Js_Error.hx#L50>)


### Error function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js_Error.hx#L52>)


### Error function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js_Error.hx#L10>)


### Error function call


```haxe
function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Error.hx#L12>)


### Error function delete


```haxe
function delete(_p:stdgo.GoString):Void
```


[\(view code\)](<./Js_Error.hx#L14>)


### Error function equal


```haxe
function equal(__0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js_Error.hx#L16>)


### Error function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js_Error.hx#L18>)


### Error function get


```haxe
function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Error.hx#L20>)


### Error function index


```haxe
function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Error.hx#L22>)


### Error function instanceOf


```haxe
function instanceOf(__0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js_Error.hx#L24>)


### Error function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js_Error.hx#L26>)


### Error function invoke


```haxe
function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Error.hx#L28>)


### Error function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js_Error.hx#L30>)


### Error function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js_Error.hx#L32>)


### Error function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js_Error.hx#L34>)


### Error function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js_Error.hx#L36>)


### Error function new


```haxe
function new(?value:stdgo._internal.syscall.js.Value):Void
```


[\(view code\)](<./Js_Error.hx#L5>)


### Error function new\_


```haxe
function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Error.hx#L38>)


### Error function set


```haxe
function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js_Error.hx#L40>)


### Error function setIndex


```haxe
function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js_Error.hx#L42>)


### Error function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js_Error.hx#L44>)


### Error function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js_Error.hx#L46>)


### Error function type


```haxe
function type():stdgo._internal.syscall.js.Type_
```


[\(view code\)](<./Js_Error.hx#L48>)


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


[\(view code\)](<./Js_Func.hx#L52>)


### Func function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js_Func.hx#L54>)


### Func function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js_Func.hx#L12>)


### Func function call


```haxe
function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Func.hx#L14>)


### Func function delete


```haxe
function delete(_p:stdgo.GoString):Void
```


[\(view code\)](<./Js_Func.hx#L16>)


### Func function equal


```haxe
function equal(__0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js_Func.hx#L18>)


### Func function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js_Func.hx#L20>)


### Func function get


```haxe
function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Func.hx#L22>)


### Func function index


```haxe
function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Func.hx#L24>)


### Func function instanceOf


```haxe
function instanceOf(__0:stdgo._internal.syscall.js.Value):Bool
```


[\(view code\)](<./Js_Func.hx#L26>)


### Func function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js_Func.hx#L28>)


### Func function invoke


```haxe
function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Func.hx#L30>)


### Func function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js_Func.hx#L32>)


### Func function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js_Func.hx#L34>)


### Func function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js_Func.hx#L36>)


### Func function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js_Func.hx#L38>)


### Func function new


```haxe
function new(?value:stdgo._internal.syscall.js.Value, ?_id:stdgo.GoUInt32):Void
```


[\(view code\)](<./Js_Func.hx#L6>)


### Func function new\_


```haxe
function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Value
```


[\(view code\)](<./Js_Func.hx#L40>)


### Func function set


```haxe
function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js_Func.hx#L42>)


### Func function setIndex


```haxe
function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js_Func.hx#L44>)


### Func function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js_Func.hx#L46>)


### Func function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js_Func.hx#L48>)


### Func function type


```haxe
function type():stdgo._internal.syscall.js.Type_
```


[\(view code\)](<./Js_Func.hx#L50>)


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
function new(?__32:stdgo.GoArray<():Void>, ?_ref:stdgo._internal.syscall.js.T_ref, ?_gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.T_ref>):Void
```


[\(view code\)](<./Js_Value.hx#L7>)


## class ValueError


```haxe
var method:stdgo.GoString
```


```haxe
var type:stdgo._internal.syscall.js.Type_
```


### ValueError function new


```haxe
function new(?method:stdgo.GoString, ?type:stdgo._internal.syscall.js.Type_):Void
```


[\(view code\)](<./Js_ValueError.hx#L5>)


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


