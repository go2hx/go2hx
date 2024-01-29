# Module: `stdgo.flag`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _commandLineUsage():Void`](<#function-_commandlineusage>)

- [`function _isZeroValue(_flag:stdgo.Ref<stdgo.flag.Flag>, _value:stdgo.GoString):Void`](<#function-_iszerovalue>)

- [`function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):Void`](<#function-_newboolvalue>)

- [`function _newDurationValue(_val:stdgo._internal.time.Duration, _p:stdgo.Pointer<stdgo._internal.time.Duration>):Void`](<#function-_newdurationvalue>)

- [`function _newFloat64Value(_val:stdgo.GoFloat64, _p:stdgo.Pointer<stdgo.GoFloat64>):Void`](<#function-_newfloat64value>)

- [`function _newInt64Value(_val:stdgo.GoInt64, _p:stdgo.Pointer<stdgo.GoInt64>):Void`](<#function-_newint64value>)

- [`function _newIntValue(_val:stdgo.GoInt, _p:stdgo.Pointer<stdgo.GoInt>):Void`](<#function-_newintvalue>)

- [`function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):Void`](<#function-_newstringvalue>)

- [`function _newTextValue(_val:stdgo._internal.encoding.TextMarshaler, _p:stdgo._internal.encoding.TextUnmarshaler):Void`](<#function-_newtextvalue>)

- [`function _newUint64Value(_val:stdgo.GoUInt64, _p:stdgo.Pointer<stdgo.GoUInt64>):Void`](<#function-_newuint64value>)

- [`function _newUintValue(_val:stdgo.GoUInt, _p:stdgo.Pointer<stdgo.GoUInt>):Void`](<#function-_newuintvalue>)

- [`function _numError(_err:stdgo.Error):Void`](<#function-_numerror>)

- [`function _sortFlags(_flags:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.flag.Flag>>):Void`](<#function-_sortflags>)

- [`function arg(_i:stdgo.GoInt):Void`](<#function-arg>)

- [`function args():Void`](<#function-args>)

- [`function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:()):Void`](<#function-boolfunc>)

- [`function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void`](<#function-boolvar>)

- [`function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void`](<#function-bool_>)

- [`function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Duration, _usage:stdgo.GoString):Void`](<#function-duration>)

- [`function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Duration, _usage:stdgo.GoString):Void`](<#function-durationvar>)

- [`function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void`](<#function-float64>)

- [`function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void`](<#function-float64var>)

- [`function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:()):Void`](<#function-func>)

- [`function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void`](<#function-int64>)

- [`function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void`](<#function-int64var>)

- [`function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void`](<#function-intvar>)

- [`function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void`](<#function-int_>)

- [`function lookup(_name:stdgo.GoString):Void`](<#function-lookup>)

- [`function narg():Void`](<#function-narg>)

- [`function newFlagSet(_name:stdgo.GoString, _errorHandling:stdgo.flag.ErrorHandling):Void`](<#function-newflagset>)

- [`function nflag():Void`](<#function-nflag>)

- [`function parse():Void`](<#function-parse>)

- [`function parsed():Void`](<#function-parsed>)

- [`function printDefaults():Void`](<#function-printdefaults>)

- [`function resetForTesting(_usage:():Void):Void`](<#function-resetfortesting>)

- [`function set(_name:stdgo.GoString, _value:stdgo.GoString):Void`](<#function-set>)

- [`function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void`](<#function-string>)

- [`function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void`](<#function-stringvar>)

- [`function textVar(_p:stdgo._internal.encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.TextMarshaler, _usage:stdgo.GoString):Void`](<#function-textvar>)

- [`function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void`](<#function-uint>)

- [`function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void`](<#function-uint64>)

- [`function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void`](<#function-uint64var>)

- [`function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void`](<#function-uintvar>)

- [`function unquoteUsage(_flag:stdgo.Ref<stdgo.flag.Flag>):Void`](<#function-unquoteusage>)

- [`function var_(_value:stdgo.flag.Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void`](<#function-var_>)

- [`function visit(_fn:()):Void`](<#function-visit>)

- [`function visitAll(_fn:()):Void`](<#function-visitall>)

- [typedef ErrorHandling](<#typedef-errorhandling>)

- [typedef Flag](<#typedef-flag>)

- [typedef FlagSet](<#typedef-flagset>)

- [typedef FlagSet\_asInterface](<#typedef-flagset_asinterface>)

- [typedef FlagSet\_static\_extension](<#typedef-flagset_static_extension>)

- [typedef Getter](<#typedef-getter>)

- [typedef T\_boolFlag](<#typedef-t_boolflag>)

- [typedef T\_boolFuncValue](<#typedef-t_boolfuncvalue>)

- [typedef T\_boolFuncValue\_asInterface](<#typedef-t_boolfuncvalue_asinterface>)

- [typedef T\_boolFuncValue\_static\_extension](<#typedef-t_boolfuncvalue_static_extension>)

- [typedef T\_boolValue](<#typedef-t_boolvalue>)

- [typedef T\_boolValue\_asInterface](<#typedef-t_boolvalue_asinterface>)

- [typedef T\_boolValue\_static\_extension](<#typedef-t_boolvalue_static_extension>)

- [typedef T\_durationValue](<#typedef-t_durationvalue>)

- [typedef T\_durationValue\_asInterface](<#typedef-t_durationvalue_asinterface>)

- [typedef T\_durationValue\_static\_extension](<#typedef-t_durationvalue_static_extension>)

- [typedef T\_float64Value](<#typedef-t_float64value>)

- [typedef T\_float64Value\_asInterface](<#typedef-t_float64value_asinterface>)

- [typedef T\_float64Value\_static\_extension](<#typedef-t_float64value_static_extension>)

- [typedef T\_funcValue](<#typedef-t_funcvalue>)

- [typedef T\_funcValue\_asInterface](<#typedef-t_funcvalue_asinterface>)

- [typedef T\_funcValue\_static\_extension](<#typedef-t_funcvalue_static_extension>)

- [typedef T\_int64Value](<#typedef-t_int64value>)

- [typedef T\_int64Value\_asInterface](<#typedef-t_int64value_asinterface>)

- [typedef T\_int64Value\_static\_extension](<#typedef-t_int64value_static_extension>)

- [typedef T\_intValue](<#typedef-t_intvalue>)

- [typedef T\_intValue\_asInterface](<#typedef-t_intvalue_asinterface>)

- [typedef T\_intValue\_static\_extension](<#typedef-t_intvalue_static_extension>)

- [typedef T\_stringValue](<#typedef-t_stringvalue>)

- [typedef T\_stringValue\_asInterface](<#typedef-t_stringvalue_asinterface>)

- [typedef T\_stringValue\_static\_extension](<#typedef-t_stringvalue_static_extension>)

- [typedef T\_textValue](<#typedef-t_textvalue>)

- [typedef T\_textValue\_asInterface](<#typedef-t_textvalue_asinterface>)

- [typedef T\_textValue\_static\_extension](<#typedef-t_textvalue_static_extension>)

- [typedef T\_uint64Value](<#typedef-t_uint64value>)

- [typedef T\_uint64Value\_asInterface](<#typedef-t_uint64value_asinterface>)

- [typedef T\_uint64Value\_static\_extension](<#typedef-t_uint64value_static_extension>)

- [typedef T\_uintValue](<#typedef-t_uintvalue>)

- [typedef T\_uintValue\_asInterface](<#typedef-t_uintvalue_asinterface>)

- [typedef T\_uintValue\_static\_extension](<#typedef-t_uintvalue_static_extension>)

- [typedef Value](<#typedef-value>)

# Variables


```haxe
import stdgo.flag.Flag
```


```haxe
var _:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _errParse:Dynamic
```


```haxe
var _errRange:Dynamic
```


```haxe
var commandLine:Dynamic
```


```haxe
var continueOnError:Dynamic
```


```haxe
var defaultUsage:Dynamic
```


```haxe
var errHelp:Dynamic
```


```haxe
var exitOnError:Dynamic
```


```haxe
var panicOnError:Dynamic
```


```haxe
var usage:Dynamic
```


# Functions


```haxe
import stdgo.flag.Flag
```


## function \_commandLineUsage


```haxe
function _commandLineUsage():Void
```


[\(view code\)](<./Flag.hx#L74>)


## function \_isZeroValue


```haxe
function _isZeroValue(_flag:stdgo.Ref<stdgo.flag.Flag>, _value:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L45>)


## function \_newBoolValue


```haxe
function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):Void
```


[\(view code\)](<./Flag.hx#L31>)


## function \_newDurationValue


```haxe
function _newDurationValue(_val:stdgo._internal.time.Duration, _p:stdgo.Pointer<stdgo._internal.time.Duration>):Void
```


[\(view code\)](<./Flag.hx#L38>)


## function \_newFloat64Value


```haxe
function _newFloat64Value(_val:stdgo.GoFloat64, _p:stdgo.Pointer<stdgo.GoFloat64>):Void
```


[\(view code\)](<./Flag.hx#L37>)


## function \_newInt64Value


```haxe
function _newInt64Value(_val:stdgo.GoInt64, _p:stdgo.Pointer<stdgo.GoInt64>):Void
```


[\(view code\)](<./Flag.hx#L33>)


## function \_newIntValue


```haxe
function _newIntValue(_val:stdgo.GoInt, _p:stdgo.Pointer<stdgo.GoInt>):Void
```


[\(view code\)](<./Flag.hx#L32>)


## function \_newStringValue


```haxe
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):Void
```


[\(view code\)](<./Flag.hx#L36>)


## function \_newTextValue


```haxe
function _newTextValue(_val:stdgo._internal.encoding.TextMarshaler, _p:stdgo._internal.encoding.TextUnmarshaler):Void
```


[\(view code\)](<./Flag.hx#L39>)


## function \_newUint64Value


```haxe
function _newUint64Value(_val:stdgo.GoUInt64, _p:stdgo.Pointer<stdgo.GoUInt64>):Void
```


[\(view code\)](<./Flag.hx#L35>)


## function \_newUintValue


```haxe
function _newUintValue(_val:stdgo.GoUInt, _p:stdgo.Pointer<stdgo.GoUInt>):Void
```


[\(view code\)](<./Flag.hx#L34>)


## function \_numError


```haxe
function _numError(_err:stdgo.Error):Void
```


[\(view code\)](<./Flag.hx#L30>)


## function \_sortFlags


```haxe
function _sortFlags(_flags:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.flag.Flag>>):Void
```


[\(view code\)](<./Flag.hx#L40>)


## function arg


```haxe
function arg(_i:stdgo.GoInt):Void
```


[\(view code\)](<./Flag.hx#L49>)


## function args


```haxe
function args():Void
```


[\(view code\)](<./Flag.hx#L51>)


## function boolFunc


```haxe
function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:()):Void
```


[\(view code\)](<./Flag.hx#L70>)


## function boolVar


```haxe
function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L52>)


## function bool\_


```haxe
function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L53>)


## function duration


```haxe
function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Duration, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L67>)


## function durationVar


```haxe
function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Duration, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L66>)


## function float64


```haxe
function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L65>)


## function float64Var


```haxe
function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L64>)


## function func


```haxe
function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:()):Void
```


[\(view code\)](<./Flag.hx#L69>)


## function int64


```haxe
function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L57>)


## function int64Var


```haxe
function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L56>)


## function intVar


```haxe
function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L54>)


## function int\_


```haxe
function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L55>)


## function lookup


```haxe
function lookup(_name:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L43>)


## function narg


```haxe
function narg():Void
```


[\(view code\)](<./Flag.hx#L50>)


## function newFlagSet


```haxe
function newFlagSet(_name:stdgo.GoString, _errorHandling:stdgo.flag.ErrorHandling):Void
```


[\(view code\)](<./Flag.hx#L75>)


## function nflag


```haxe
function nflag():Void
```


[\(view code\)](<./Flag.hx#L48>)


## function parse


```haxe
function parse():Void
```


[\(view code\)](<./Flag.hx#L72>)


## function parsed


```haxe
function parsed():Void
```


[\(view code\)](<./Flag.hx#L73>)


## function printDefaults


```haxe
function printDefaults():Void
```


[\(view code\)](<./Flag.hx#L47>)


## function resetForTesting


```haxe
function resetForTesting(_usage:():Void):Void
```


[\(view code\)](<./Flag.hx#L29>)


## function set


```haxe
function set(_name:stdgo.GoString, _value:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L44>)


## function string


```haxe
function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L63>)


## function stringVar


```haxe
function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L62>)


## function textVar


```haxe
function textVar(_p:stdgo._internal.encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.TextMarshaler, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L68>)


## function uint


```haxe
function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L59>)


## function uint64


```haxe
function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L61>)


## function uint64Var


```haxe
function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L60>)


## function uintVar


```haxe
function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L58>)


## function unquoteUsage


```haxe
function unquoteUsage(_flag:stdgo.Ref<stdgo.flag.Flag>):Void
```


[\(view code\)](<./Flag.hx#L46>)


## function var\_


```haxe
function var_(_value:stdgo.flag.Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag.hx#L71>)


## function visit


```haxe
function visit(_fn:()):Void
```


[\(view code\)](<./Flag.hx#L42>)


## function visitAll


```haxe
function visitAll(_fn:()):Void
```


[\(view code\)](<./Flag.hx#L41>)


# Typedefs


```haxe
import stdgo.flag.*
```


## typedef ErrorHandling


```haxe
typedef ErrorHandling = stdgo._internal.flag.ErrorHandling;
```


## typedef Flag


```haxe
typedef Flag = Dynamic;
```


## typedef FlagSet


```haxe
typedef FlagSet = Dynamic;
```


## typedef FlagSet\_asInterface


```haxe
typedef FlagSet_asInterface = Dynamic;
```


## typedef FlagSet\_static\_extension


```haxe
typedef FlagSet_static_extension = Dynamic;
```


## typedef Getter


```haxe
typedef Getter = stdgo._internal.flag.Getter;
```


## typedef T\_boolFlag


```haxe
typedef T_boolFlag = stdgo._internal.flag.T_boolFlag;
```


## typedef T\_boolFuncValue


```haxe
typedef T_boolFuncValue = stdgo._internal.flag.T_boolFuncValue;
```


## typedef T\_boolFuncValue\_asInterface


```haxe
typedef T_boolFuncValue_asInterface = Dynamic;
```


## typedef T\_boolFuncValue\_static\_extension


```haxe
typedef T_boolFuncValue_static_extension = Dynamic;
```


## typedef T\_boolValue


```haxe
typedef T_boolValue = stdgo._internal.flag.T_boolValue;
```


## typedef T\_boolValue\_asInterface


```haxe
typedef T_boolValue_asInterface = Dynamic;
```


## typedef T\_boolValue\_static\_extension


```haxe
typedef T_boolValue_static_extension = Dynamic;
```


## typedef T\_durationValue


```haxe
typedef T_durationValue = stdgo._internal.flag.T_durationValue;
```


## typedef T\_durationValue\_asInterface


```haxe
typedef T_durationValue_asInterface = Dynamic;
```


## typedef T\_durationValue\_static\_extension


```haxe
typedef T_durationValue_static_extension = Dynamic;
```


## typedef T\_float64Value


```haxe
typedef T_float64Value = stdgo._internal.flag.T_float64Value;
```


## typedef T\_float64Value\_asInterface


```haxe
typedef T_float64Value_asInterface = Dynamic;
```


## typedef T\_float64Value\_static\_extension


```haxe
typedef T_float64Value_static_extension = Dynamic;
```


## typedef T\_funcValue


```haxe
typedef T_funcValue = stdgo._internal.flag.T_funcValue;
```


## typedef T\_funcValue\_asInterface


```haxe
typedef T_funcValue_asInterface = Dynamic;
```


## typedef T\_funcValue\_static\_extension


```haxe
typedef T_funcValue_static_extension = Dynamic;
```


## typedef T\_int64Value


```haxe
typedef T_int64Value = stdgo._internal.flag.T_int64Value;
```


## typedef T\_int64Value\_asInterface


```haxe
typedef T_int64Value_asInterface = Dynamic;
```


## typedef T\_int64Value\_static\_extension


```haxe
typedef T_int64Value_static_extension = Dynamic;
```


## typedef T\_intValue


```haxe
typedef T_intValue = stdgo._internal.flag.T_intValue;
```


## typedef T\_intValue\_asInterface


```haxe
typedef T_intValue_asInterface = Dynamic;
```


## typedef T\_intValue\_static\_extension


```haxe
typedef T_intValue_static_extension = Dynamic;
```


## typedef T\_stringValue


```haxe
typedef T_stringValue = stdgo._internal.flag.T_stringValue;
```


## typedef T\_stringValue\_asInterface


```haxe
typedef T_stringValue_asInterface = Dynamic;
```


## typedef T\_stringValue\_static\_extension


```haxe
typedef T_stringValue_static_extension = Dynamic;
```


## typedef T\_textValue


```haxe
typedef T_textValue = Dynamic;
```


## typedef T\_textValue\_asInterface


```haxe
typedef T_textValue_asInterface = Dynamic;
```


## typedef T\_textValue\_static\_extension


```haxe
typedef T_textValue_static_extension = Dynamic;
```


## typedef T\_uint64Value


```haxe
typedef T_uint64Value = stdgo._internal.flag.T_uint64Value;
```


## typedef T\_uint64Value\_asInterface


```haxe
typedef T_uint64Value_asInterface = Dynamic;
```


## typedef T\_uint64Value\_static\_extension


```haxe
typedef T_uint64Value_static_extension = Dynamic;
```


## typedef T\_uintValue


```haxe
typedef T_uintValue = stdgo._internal.flag.T_uintValue;
```


## typedef T\_uintValue\_asInterface


```haxe
typedef T_uintValue_asInterface = Dynamic;
```


## typedef T\_uintValue\_static\_extension


```haxe
typedef T_uintValue_static_extension = Dynamic;
```


## typedef Value


```haxe
typedef Value = stdgo._internal.flag.Value;
```


