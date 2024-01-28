package stdgo.flag;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errHelp : Dynamic;
@:invalid var _errParse : Dynamic;
@:invalid var _errRange : Dynamic;
@:invalid var commandLine : Dynamic;
@:invalid var usage : Dynamic;
@:invalid var defaultUsage : Dynamic;
@:invalid var continueOnError : Dynamic;
@:invalid var exitOnError : Dynamic;
@:invalid var panicOnError : Dynamic;
typedef T_boolFlag = stdgo._internal.flag.Flag.T_boolFlag;
typedef Value = stdgo._internal.flag.Flag.Value;
typedef Getter = stdgo._internal.flag.Flag.Getter;
@:invalid typedef T_textValue = Dynamic;
@:invalid typedef FlagSet = Dynamic;
@:invalid typedef Flag = Dynamic;
typedef T_boolValue = stdgo._internal.flag.Flag.T_boolValue;
typedef T_intValue = stdgo._internal.flag.Flag.T_intValue;
typedef T_int64Value = stdgo._internal.flag.Flag.T_int64Value;
typedef T_uintValue = stdgo._internal.flag.Flag.T_uintValue;
typedef T_uint64Value = stdgo._internal.flag.Flag.T_uint64Value;
typedef T_stringValue = stdgo._internal.flag.Flag.T_stringValue;
typedef T_float64Value = stdgo._internal.flag.Flag.T_float64Value;
typedef T_durationValue = stdgo._internal.flag.Flag.T_durationValue;
typedef T_funcValue = stdgo._internal.flag.Flag.T_funcValue;
typedef T_boolFuncValue = stdgo._internal.flag.Flag.T_boolFuncValue;
typedef ErrorHandling = stdgo._internal.flag.Flag.ErrorHandling;
function resetForTesting(_usage:() -> Void):Void {}
function _numError(_err:stdgo.Error):Void {}
function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):Void {}
function _newIntValue(_val:stdgo.GoInt, _p:stdgo.Pointer<stdgo.GoInt>):Void {}
function _newInt64Value(_val:stdgo.GoInt64, _p:stdgo.Pointer<stdgo.GoInt64>):Void {}
function _newUintValue(_val:stdgo.GoUInt, _p:stdgo.Pointer<stdgo.GoUInt>):Void {}
function _newUint64Value(_val:stdgo.GoUInt64, _p:stdgo.Pointer<stdgo.GoUInt64>):Void {}
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):Void {}
function _newFloat64Value(_val:stdgo.GoFloat64, _p:stdgo.Pointer<stdgo.GoFloat64>):Void {}
function _newDurationValue(_val:stdgo._internal.time.Time.Duration, _p:stdgo.Pointer<stdgo._internal.time.Time.Duration>):Void {}
function _newTextValue(_val:stdgo._internal.encoding.Encoding.TextMarshaler, _p:stdgo._internal.encoding.Encoding.TextUnmarshaler):Void {}
function _sortFlags(_flags:stdgo.GoMap<stdgo.GoString, stdgo.Ref<Flag>>):Void {}
function visitAll(_fn:stdgo.Ref<Flag> -> Void):Void {}
function visit(_fn:stdgo.Ref<Flag> -> Void):Void {}
function lookup(_name:stdgo.GoString):Void {}
function set(_name:stdgo.GoString, _value:stdgo.GoString):Void {}
function _isZeroValue(_flag:stdgo.Ref<Flag>, _value:stdgo.GoString):Void {}
function unquoteUsage(_flag:stdgo.Ref<Flag>):Void {}
function printDefaults():Void {}
function nflag():Void {}
function arg(_i:stdgo.GoInt):Void {}
function narg():Void {}
function args():Void {}
function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {}
function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {}
function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {}
function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {}
function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void {}
function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void {}
function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void {}
function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void {}
function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {}
function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {}
function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {}
function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {}
function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void {}
function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void {}
function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Time.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time.Duration, _usage:stdgo.GoString):Void {}
function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Time.Duration, _usage:stdgo.GoString):Void {}
function textVar(_p:stdgo._internal.encoding.Encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding.TextMarshaler, _usage:stdgo.GoString):Void {}
function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {}
function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {}
function var_(_value:Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void {}
function parse():Void {}
function parsed():Void {}
function _commandLineUsage():Void {}
function newFlagSet(_name:stdgo.GoString, _errorHandling:ErrorHandling):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef T_textValue_asInterface = Dynamic;
@:invalid typedef T_textValue_static_extension = Dynamic;
@:invalid typedef FlagSet_asInterface = Dynamic;
@:invalid typedef FlagSet_static_extension = Dynamic;
@:invalid typedef T_boolValue_asInterface = Dynamic;
@:invalid typedef T_boolValue_static_extension = Dynamic;
@:invalid typedef T_intValue_asInterface = Dynamic;
@:invalid typedef T_intValue_static_extension = Dynamic;
@:invalid typedef T_int64Value_asInterface = Dynamic;
@:invalid typedef T_int64Value_static_extension = Dynamic;
@:invalid typedef T_uintValue_asInterface = Dynamic;
@:invalid typedef T_uintValue_static_extension = Dynamic;
@:invalid typedef T_uint64Value_asInterface = Dynamic;
@:invalid typedef T_uint64Value_static_extension = Dynamic;
@:invalid typedef T_stringValue_asInterface = Dynamic;
@:invalid typedef T_stringValue_static_extension = Dynamic;
@:invalid typedef T_float64Value_asInterface = Dynamic;
@:invalid typedef T_float64Value_static_extension = Dynamic;
@:invalid typedef T_durationValue_asInterface = Dynamic;
@:invalid typedef T_durationValue_static_extension = Dynamic;
@:invalid typedef T_funcValue_asInterface = Dynamic;
@:invalid typedef T_funcValue_static_extension = Dynamic;
@:invalid typedef T_boolFuncValue_asInterface = Dynamic;
@:invalid typedef T_boolFuncValue_static_extension = Dynamic;
