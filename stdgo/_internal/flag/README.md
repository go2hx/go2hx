# Module: `stdgo._internal.flag`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function newFlagSet(_name:stdgo.GoString, _errorHandling:stdgo._internal.flag.ErrorHandling):stdgo.Ref<stdgo._internal.flag.FlagSet>`](<#function-newflagset>)

- [`function _sortFlags(_flags:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag>>):stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag>>`](<#function-_sortflags>)

- [`function unquoteUsage(_flag:stdgo.Ref<stdgo._internal.flag.Flag>):{
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}`](<#function-unquoteusage>)

- [`function _isZeroValue(_flag:stdgo.Ref<stdgo._internal.flag.Flag>, _value:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-_iszerovalue>)

- [`function usage():Void`](<#function-usage>)

- [`function printDefaults():Void`](<#function-printdefaults>)

- [`function defaultUsage():Void`](<#function-defaultusage>)

- [`function _commandLineUsage():Void`](<#function-_commandlineusage>)

- [`function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):stdgo.Pointer<stdgo._internal.flag.T_boolValue>`](<#function-_newboolvalue>)

- [`function _newDurationValue(_val:stdgo._internal.time.Duration, _p:stdgo.Pointer<stdgo._internal.time.Duration>):stdgo.Pointer<stdgo._internal.flag.T_durationValue>`](<#function-_newdurationvalue>)

- [`function _newFloat64Value(_val:stdgo.GoFloat64, _p:stdgo.Pointer<stdgo.GoFloat64>):stdgo.Pointer<stdgo._internal.flag.T_float64Value>`](<#function-_newfloat64value>)

- [`function _newInt64Value(_val:stdgo.GoInt64, _p:stdgo.Pointer<stdgo.GoInt64>):stdgo.Pointer<stdgo._internal.flag.T_int64Value>`](<#function-_newint64value>)

- [`function _newIntValue(_val:stdgo.GoInt, _p:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo._internal.flag.T_intValue>`](<#function-_newintvalue>)

- [`function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):stdgo.Pointer<stdgo._internal.flag.T_stringValue>`](<#function-_newstringvalue>)

- [`function _newTextValue(_val:stdgo._internal.encoding.TextMarshaler, _p:stdgo._internal.encoding.TextUnmarshaler):stdgo._internal.flag.T_textValue`](<#function-_newtextvalue>)

- [`function _newUint64Value(_val:stdgo.GoUInt64, _p:stdgo.Pointer<stdgo.GoUInt64>):stdgo.Pointer<stdgo._internal.flag.T_uint64Value>`](<#function-_newuint64value>)

- [`function _newUintValue(_val:stdgo.GoUInt, _p:stdgo.Pointer<stdgo.GoUInt>):stdgo.Pointer<stdgo._internal.flag.T_uintValue>`](<#function-_newuintvalue>)

- [`function _numError(_err:stdgo.Error):stdgo.Error`](<#function-_numerror>)

- [`function arg(_i:stdgo.GoInt):stdgo.GoString`](<#function-arg>)

- [`function args():stdgo.Slice<stdgo.GoString>`](<#function-args>)

- [`function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:()):Void`](<#function-boolfunc>)

- [`function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void`](<#function-boolvar>)

- [`function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool>`](<#function-bool_>)

- [`function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Duration>`](<#function-duration>)

- [`function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Duration, _usage:stdgo.GoString):Void`](<#function-durationvar>)

- [`function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64>`](<#function-float64>)

- [`function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void`](<#function-float64var>)

- [`function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:()):Void`](<#function-func>)

- [`function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64>`](<#function-int64>)

- [`function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void`](<#function-int64var>)

- [`function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void`](<#function-intvar>)

- [`function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt>`](<#function-int_>)

- [`function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag>`](<#function-lookup>)

- [`function narg():stdgo.GoInt`](<#function-narg>)

- [`function nflag():stdgo.GoInt`](<#function-nflag>)

- [`function parse():Void`](<#function-parse>)

- [`function parsed():Bool`](<#function-parsed>)

- [`function resetForTesting(_usage:():Void):Void`](<#function-resetfortesting>)

- [`function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error`](<#function-set>)

- [`function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString>`](<#function-string>)

- [`function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void`](<#function-stringvar>)

- [`function textVar(_p:stdgo._internal.encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.TextMarshaler, _usage:stdgo.GoString):Void`](<#function-textvar>)

- [`function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt>`](<#function-uint>)

- [`function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64>`](<#function-uint64>)

- [`function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void`](<#function-uint64var>)

- [`function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void`](<#function-uintvar>)

- [`function var_(_value:stdgo._internal.flag.Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void`](<#function-var_>)

- [`function visit(_fn:()):Void`](<#function-visit>)

- [`function visitAll(_fn:()):Void`](<#function-visitall>)

- [class Flag](<#class-flag>)

  - [`function new(?name:stdgo.GoString, ?usage:stdgo.GoString, ?value:stdgo._internal.flag.Value, ?defValue:stdgo.GoString):Void`](<#flag-function-new>)

- [class FlagSet](<#class-flagset>)

  - [`function new(?usage:():Void, ?_name:stdgo.GoString, ?_parsed:Bool, ?_actual:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag>>, ?_formal:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag>>, ?_args:stdgo.Slice<stdgo.GoString>, ?_errorHandling:stdgo._internal.flag.ErrorHandling, ?_output:stdgo._internal.io.Writer, ?_undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):Void`](<#flagset-function-new>)

  - [`function usage():Void`](<#flagset-function-usage>)

- [class T\_textValue](<#class-t_textvalue>)

  - [`function new(?_p:stdgo._internal.encoding.TextUnmarshaler):Void`](<#t_textvalue-function-new>)

- [typedef ErrorHandling](<#typedef-errorhandling>)

- [typedef Getter](<#typedef-getter>)

- [typedef T\_boolFlag](<#typedef-t_boolflag>)

- [typedef T\_boolFuncValue](<#typedef-t_boolfuncvalue>)

- [typedef T\_boolValue](<#typedef-t_boolvalue>)

- [typedef T\_durationValue](<#typedef-t_durationvalue>)

- [typedef T\_float64Value](<#typedef-t_float64value>)

- [typedef T\_funcValue](<#typedef-t_funcvalue>)

- [typedef T\_int64Value](<#typedef-t_int64value>)

- [typedef T\_intValue](<#typedef-t_intvalue>)

- [typedef T\_stringValue](<#typedef-t_stringvalue>)

- [typedef T\_uint64Value](<#typedef-t_uint64value>)

- [typedef T\_uintValue](<#typedef-t_uintvalue>)

- [typedef Value](<#typedef-value>)

# Constants


```haxe
import stdgo._internal.flag.Flag_visitAll
```


```haxe
final continueOnError:stdgo._internal.flag.ErrorHandling = ((2 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling))
```


```haxe
final exitOnError:stdgo._internal.flag.ErrorHandling = ((2 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling))
```


```haxe
final panicOnError:stdgo._internal.flag.ErrorHandling = ((2 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling))
```


# Variables


```haxe
import stdgo._internal.flag.Flag_visitAll
```


```haxe
var errHelp:stdgo.Error
```


```haxe
var _errParse:stdgo.Error
```


```haxe
var _errRange:stdgo.Error
```


```haxe
var commandLine:stdgo.Ref<stdgo._internal.flag.FlagSet>
```


# Functions


```haxe
import stdgo._internal.flag.Flag_visitAll
```


## function newFlagSet


```haxe
function newFlagSet(_name:stdgo.GoString, _errorHandling:stdgo._internal.flag.ErrorHandling):stdgo.Ref<stdgo._internal.flag.FlagSet>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_sortFlags


```haxe
function _sortFlags(_flags:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag>>):stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag>>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function unquoteUsage


```haxe
function unquoteUsage(_flag:stdgo.Ref<stdgo._internal.flag.Flag>):{
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_isZeroValue


```haxe
function _isZeroValue(_flag:stdgo.Ref<stdgo._internal.flag.Flag>, _value:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function usage


```haxe
function usage():Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function printDefaults


```haxe
function printDefaults():Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function defaultUsage


```haxe
function defaultUsage():Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_commandLineUsage


```haxe
function _commandLineUsage():Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newBoolValue


```haxe
function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):stdgo.Pointer<stdgo._internal.flag.T_boolValue>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newDurationValue


```haxe
function _newDurationValue(_val:stdgo._internal.time.Duration, _p:stdgo.Pointer<stdgo._internal.time.Duration>):stdgo.Pointer<stdgo._internal.flag.T_durationValue>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newFloat64Value


```haxe
function _newFloat64Value(_val:stdgo.GoFloat64, _p:stdgo.Pointer<stdgo.GoFloat64>):stdgo.Pointer<stdgo._internal.flag.T_float64Value>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newInt64Value


```haxe
function _newInt64Value(_val:stdgo.GoInt64, _p:stdgo.Pointer<stdgo.GoInt64>):stdgo.Pointer<stdgo._internal.flag.T_int64Value>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newIntValue


```haxe
function _newIntValue(_val:stdgo.GoInt, _p:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo._internal.flag.T_intValue>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newStringValue


```haxe
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):stdgo.Pointer<stdgo._internal.flag.T_stringValue>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newTextValue


```haxe
function _newTextValue(_val:stdgo._internal.encoding.TextMarshaler, _p:stdgo._internal.encoding.TextUnmarshaler):stdgo._internal.flag.T_textValue
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newUint64Value


```haxe
function _newUint64Value(_val:stdgo.GoUInt64, _p:stdgo.Pointer<stdgo.GoUInt64>):stdgo.Pointer<stdgo._internal.flag.T_uint64Value>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_newUintValue


```haxe
function _newUintValue(_val:stdgo.GoUInt, _p:stdgo.Pointer<stdgo.GoUInt>):stdgo.Pointer<stdgo._internal.flag.T_uintValue>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function \_numError


```haxe
function _numError(_err:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function arg


```haxe
function arg(_i:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function args


```haxe
function args():stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function boolFunc


```haxe
function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:()):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function boolVar


```haxe
function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function bool\_


```haxe
function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function duration


```haxe
function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Duration>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function durationVar


```haxe
function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Duration, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function float64


```haxe
function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function float64Var


```haxe
function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function func


```haxe
function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:()):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function int64


```haxe
function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function int64Var


```haxe
function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function intVar


```haxe
function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function int\_


```haxe
function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function lookup


```haxe
function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function narg


```haxe
function narg():stdgo.GoInt
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function nflag


```haxe
function nflag():stdgo.GoInt
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function parse


```haxe
function parse():Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function parsed


```haxe
function parsed():Bool
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function resetForTesting


```haxe
function resetForTesting(_usage:():Void):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function set


```haxe
function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function string


```haxe
function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function stringVar


```haxe
function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function textVar


```haxe
function textVar(_p:stdgo._internal.encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.TextMarshaler, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function uint


```haxe
function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function uint64


```haxe
function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64>
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function uint64Var


```haxe
function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function uintVar


```haxe
function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function var\_


```haxe
function var_(_value:stdgo._internal.flag.Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function visit


```haxe
function visit(_fn:()):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


## function visitAll


```haxe
function visitAll(_fn:()):Void
```


[\(view code\)](<./Flag_visitAll.hx#L2>)


# Classes


```haxe
import stdgo._internal.flag.*
```


## class Flag


```haxe
var defValue:stdgo.GoString
```


```haxe
var name:stdgo.GoString
```


```haxe
var usage:stdgo.GoString
```


```haxe
var value:stdgo._internal.flag.Value
```


### Flag function new


```haxe
function new(?name:stdgo.GoString, ?usage:stdgo.GoString, ?value:stdgo._internal.flag.Value, ?defValue:stdgo.GoString):Void
```


[\(view code\)](<./Flag_Flag.hx#L7>)


## class FlagSet


```haxe
var _actual:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag>>
```


```haxe
var _args:stdgo.Slice<stdgo.GoString>
```


```haxe
var _errorHandling:stdgo._internal.flag.ErrorHandling
```


```haxe
var _formal:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag>>
```


```haxe
var _name:stdgo.GoString
```


```haxe
var _output:stdgo._internal.io.Writer
```


```haxe
var _parsed:Bool
```


```haxe
var _undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>
```


### FlagSet function new


```haxe
function new(?usage:():Void, ?_name:stdgo.GoString, ?_parsed:Bool, ?_actual:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag>>, ?_formal:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag>>, ?_args:stdgo.Slice<stdgo.GoString>, ?_errorHandling:stdgo._internal.flag.ErrorHandling, ?_output:stdgo._internal.io.Writer, ?_undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):Void
```


[\(view code\)](<./Flag_FlagSet.hx#L12>)


### FlagSet function usage


```haxe
function usage():Void
```


## class T\_textValue


```haxe
var _p:stdgo._internal.encoding.TextUnmarshaler
```


### T\_textValue function new


```haxe
function new(?_p:stdgo._internal.encoding.TextUnmarshaler):Void
```


[\(view code\)](<./Flag_T_textValue.hx#L4>)


# Typedefs


```haxe
import stdgo._internal.flag.*
```


## typedef ErrorHandling


```haxe
typedef ErrorHandling = stdgo.GoInt;
```


## typedef Getter


```haxe
typedef Getter = {
	public function string():stdgo.GoString;
	public function set(_0:stdgo.GoString):stdgo.Error;
	public function get():stdgo.AnyInterface;
};
```


## typedef T\_boolFlag


```haxe
typedef T_boolFlag = {
	public function string():stdgo.GoString;
	public function set(_0:stdgo.GoString):stdgo.Error;
	public function isBoolFlag():Bool;
};
```


## typedef T\_boolFuncValue


```haxe
typedef T_boolFuncValue = ();
```


## typedef T\_boolValue


```haxe
typedef T_boolValue = Bool;
```


## typedef T\_durationValue


```haxe
typedef T_durationValue = stdgo._internal.time.Duration;
```


## typedef T\_float64Value


```haxe
typedef T_float64Value = stdgo.GoFloat64;
```


## typedef T\_funcValue


```haxe
typedef T_funcValue = ();
```


## typedef T\_int64Value


```haxe
typedef T_int64Value = stdgo.GoInt64;
```


## typedef T\_intValue


```haxe
typedef T_intValue = stdgo.GoInt;
```


## typedef T\_stringValue


```haxe
typedef T_stringValue = stdgo.GoString;
```


## typedef T\_uint64Value


```haxe
typedef T_uint64Value = stdgo.GoUInt64;
```


## typedef T\_uintValue


```haxe
typedef T_uintValue = stdgo.GoUInt;
```


## typedef Value


```haxe
typedef Value = {
	public function string():stdgo.GoString;
	public function set(_0:stdgo.GoString):stdgo.Error;
};
```


