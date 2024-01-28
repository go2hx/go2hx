# Module: `stdgo.syscall.js`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.T_ref):Void`](<#function-_copybytestogo>)

- [`function _copyBytesToJS(_dst:stdgo.syscall.js.T_ref, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_copybytestojs>)

- [`function _finalizeRef(_r:stdgo.syscall.js.T_ref):Void`](<#function-_finalizeref>)

- [`function _floatValue(_f:stdgo.GoFloat64):Void`](<#function-_floatvalue>)

- [`function _handleEvent():Void`](<#function-_handleevent>)

- [`function _jsString(_v:stdgo.syscall.js.Value):Void`](<#function-_jsstring>)

- [`function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):Void`](<#function-_makeargs>)

- [`function _makeValue(_r:stdgo.syscall.js.T_ref):Void`](<#function-_makevalue>)

- [`function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoByte):Void`](<#function-_predefvalue>)

- [`function _setEventHandler(_fn:():Bool):Void`](<#function-_seteventhandler>)

- [`function _stringVal(_x:stdgo.GoString):Void`](<#function-_stringval>)

- [`function _valueCall(_v:stdgo.syscall.js.T_ref, _m:stdgo.GoString, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):Void`](<#function-_valuecall>)

- [`function _valueDelete(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString):Void`](<#function-_valuedelete>)

- [`function _valueGet(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString):Void`](<#function-_valueget>)

- [`function _valueIndex(_v:stdgo.syscall.js.T_ref, _i:stdgo.GoInt):Void`](<#function-_valueindex>)

- [`function _valueInstanceOf(_v:stdgo.syscall.js.T_ref, _t:stdgo.syscall.js.T_ref):Void`](<#function-_valueinstanceof>)

- [`function _valueInvoke(_v:stdgo.syscall.js.T_ref, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):Void`](<#function-_valueinvoke>)

- [`function _valueLength(_v:stdgo.syscall.js.T_ref):Void`](<#function-_valuelength>)

- [`function _valueLoadString(_v:stdgo.syscall.js.T_ref, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_valueloadstring>)

- [`function _valueNew(_v:stdgo.syscall.js.T_ref, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):Void`](<#function-_valuenew>)

- [`function _valuePrepareString(_v:stdgo.syscall.js.T_ref):Void`](<#function-_valuepreparestring>)

- [`function _valueSet(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString, _x:stdgo.syscall.js.T_ref):Void`](<#function-_valueset>)

- [`function _valueSetIndex(_v:stdgo.syscall.js.T_ref, _i:stdgo.GoInt, _x:stdgo.syscall.js.T_ref):Void`](<#function-_valuesetindex>)

- [`function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.Value):Void`](<#function-copybytestogo>)

- [`function copyBytesToJS(_dst:stdgo.syscall.js.Value, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#function-copybytestojs>)

- [`function funcOf(_fn:(_this:stdgo.syscall.js.Value, _args:stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface):Void`](<#function-funcof>)

- [`function global():Void`](<#function-global>)

- [`function null_():Void`](<#function-null_>)

- [`function undefined():Void`](<#function-undefined>)

- [`function valueOf(_x:stdgo.AnyInterface):Void`](<#function-valueof>)

- [typedef Error](<#typedef-error>)

- [typedef Error\_asInterface](<#typedef-error_asinterface>)

- [typedef Error\_static\_extension](<#typedef-error_static_extension>)

- [typedef Func](<#typedef-func>)

- [typedef Func\_asInterface](<#typedef-func_asinterface>)

- [typedef Func\_static\_extension](<#typedef-func_static_extension>)

- [typedef T\_ref](<#typedef-t_ref>)

- [typedef Type\_](<#typedef-type_>)

- [typedef Type\_\_asInterface](<#typedef-type__asinterface>)

- [typedef Type\_\_static\_extension](<#typedef-type__static_extension>)

- [typedef Value](<#typedef-value>)

- [typedef ValueError](<#typedef-valueerror>)

- [typedef ValueError\_asInterface](<#typedef-valueerror_asinterface>)

- [typedef ValueError\_static\_extension](<#typedef-valueerror_static_extension>)

- [typedef Value\_asInterface](<#typedef-value_asinterface>)

- [typedef Value\_static\_extension](<#typedef-value_static_extension>)

# Variables


```haxe
import stdgo.syscall.js.Js
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _arrayConstructor:Dynamic
```


```haxe
var _funcs:Dynamic
```


```haxe
var _funcsMu:Dynamic
```


```haxe
var _jsGo:Dynamic
```


```haxe
var _nanHead:Dynamic
```


```haxe
var _nextFuncID:Dynamic
```


```haxe
var _objectConstructor:Dynamic
```


```haxe
var _typeFlagFunction:Dynamic
```


```haxe
var _typeFlagNone:Dynamic
```


```haxe
var _typeFlagObject:Dynamic
```


```haxe
var _typeFlagString:Dynamic
```


```haxe
var _typeFlagSymbol:Dynamic
```


```haxe
var _valueFalse:Dynamic
```


```haxe
var _valueGlobal:Dynamic
```


```haxe
var _valueNaN:Dynamic
```


```haxe
var _valueNull:Dynamic
```


```haxe
var _valueTrue:Dynamic
```


```haxe
var _valueUndefined:Dynamic
```


```haxe
var _valueZero:Dynamic
```


```haxe
var typeBoolean:Dynamic
```


```haxe
var typeFunction:Dynamic
```


```haxe
var typeNull:Dynamic
```


```haxe
var typeNumber:Dynamic
```


```haxe
var typeObject:Dynamic
```


```haxe
var typeString:Dynamic
```


```haxe
var typeSymbol:Dynamic
```


```haxe
var typeUndefined:Dynamic
```


# Functions


```haxe
import stdgo.syscall.js.Js
```


## function \_copyBytesToGo


```haxe
function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L63>)


## function \_copyBytesToJS


```haxe
function _copyBytesToJS(_dst:stdgo.syscall.js.T_ref, _src:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Js.hx#L65>)


## function \_finalizeRef


```haxe
function _finalizeRef(_r:stdgo.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L40>)


## function \_floatValue


```haxe
function _floatValue(_f:stdgo.GoFloat64):Void
```


[\(view code\)](<./Js.hx#L42>)


## function \_handleEvent


```haxe
function _handleEvent():Void
```


[\(view code\)](<./Js.hx#L38>)


## function \_jsString


```haxe
function _jsString(_v:stdgo.syscall.js.Value):Void
```


[\(view code\)](<./Js.hx#L58>)


## function \_makeArgs


```haxe
function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Js.hx#L53>)


## function \_makeValue


```haxe
function _makeValue(_r:stdgo.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L39>)


## function \_predefValue


```haxe
function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoByte):Void
```


[\(view code\)](<./Js.hx#L41>)


## function \_setEventHandler


```haxe
function _setEventHandler(_fn:():Bool):Void
```


[\(view code\)](<./Js.hx#L37>)


## function \_stringVal


```haxe
function _stringVal(_x:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L47>)


## function \_valueCall


```haxe
function _valueCall(_v:stdgo.syscall.js.T_ref, _m:stdgo.GoString, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):Void
```


[\(view code\)](<./Js.hx#L55>)


## function \_valueDelete


```haxe
function _valueDelete(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L50>)


## function \_valueGet


```haxe
function _valueGet(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L48>)


## function \_valueIndex


```haxe
function _valueIndex(_v:stdgo.syscall.js.T_ref, _i:stdgo.GoInt):Void
```


[\(view code\)](<./Js.hx#L51>)


## function \_valueInstanceOf


```haxe
function _valueInstanceOf(_v:stdgo.syscall.js.T_ref, _t:stdgo.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L61>)


## function \_valueInvoke


```haxe
function _valueInvoke(_v:stdgo.syscall.js.T_ref, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):Void
```


[\(view code\)](<./Js.hx#L56>)


## function \_valueLength


```haxe
function _valueLength(_v:stdgo.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L54>)


## function \_valueLoadString


```haxe
function _valueLoadString(_v:stdgo.syscall.js.T_ref, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Js.hx#L60>)


## function \_valueNew


```haxe
function _valueNew(_v:stdgo.syscall.js.T_ref, _args:stdgo.Slice<stdgo.syscall.js.T_ref>):Void
```


[\(view code\)](<./Js.hx#L57>)


## function \_valuePrepareString


```haxe
function _valuePrepareString(_v:stdgo.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L59>)


## function \_valueSet


```haxe
function _valueSet(_v:stdgo.syscall.js.T_ref, _p:stdgo.GoString, _x:stdgo.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L49>)


## function \_valueSetIndex


```haxe
function _valueSetIndex(_v:stdgo.syscall.js.T_ref, _i:stdgo.GoInt, _x:stdgo.syscall.js.T_ref):Void
```


[\(view code\)](<./Js.hx#L52>)


## function copyBytesToGo


```haxe
function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.Value):Void
```


[\(view code\)](<./Js.hx#L62>)


## function copyBytesToJS


```haxe
function copyBytesToJS(_dst:stdgo.syscall.js.Value, _src:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Js.hx#L64>)


## function funcOf


```haxe
function funcOf(_fn:(_this:stdgo.syscall.js.Value, _args:stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L36>)


## function global


```haxe
function global():Void
```


[\(view code\)](<./Js.hx#L45>)


## function null\_


```haxe
function null_():Void
```


[\(view code\)](<./Js.hx#L44>)


## function undefined


```haxe
function undefined():Void
```


[\(view code\)](<./Js.hx#L43>)


## function valueOf


```haxe
function valueOf(_x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L46>)


# Typedefs


```haxe
import stdgo.syscall.js.*
```


## typedef Error


```haxe
typedef Error = Dynamic;
```


## typedef Error\_asInterface


```haxe
typedef Error_asInterface = Dynamic;
```


## typedef Error\_static\_extension


```haxe
typedef Error_static_extension = Dynamic;
```


## typedef Func


```haxe
typedef Func = Dynamic;
```


## typedef Func\_asInterface


```haxe
typedef Func_asInterface = Dynamic;
```


## typedef Func\_static\_extension


```haxe
typedef Func_static_extension = Dynamic;
```


## typedef T\_ref


```haxe
typedef T_ref = stdgo._internal.syscall.js.T_ref;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.syscall.js.Type_;
```


## typedef Type\_\_asInterface


```haxe
typedef Type__asInterface = Dynamic;
```


## typedef Type\_\_static\_extension


```haxe
typedef Type__static_extension = Dynamic;
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


