package stdgo.errors;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errUnsupported : Dynamic;
@:invalid var _errorType : Dynamic;
typedef T__interface_0 = stdgo._internal.errors.Errors.T__interface_0;
typedef T__interface_1 = stdgo._internal.errors.Errors.T__interface_1;
typedef T__interface_2 = stdgo._internal.errors.Errors.T__interface_2;
typedef T__interface_3 = stdgo._internal.errors.Errors.T__interface_3;
@:invalid typedef T_errorString = Dynamic;
@:invalid typedef T_joinError = Dynamic;
function new_(_text:stdgo.GoString):Void {}
function join(_errs:haxe.Rest<stdgo.Error>):Void {}
function unwrap(_err:stdgo.Error):Void {}
function is_(_err:stdgo.Error, _target:stdgo.Error):Void {}
function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Void {}
@:invalid typedef T_errorString_asInterface = Dynamic;
@:invalid typedef T_errorString_static_extension = Dynamic;
@:invalid typedef T_joinError_asInterface = Dynamic;
@:invalid typedef T_joinError_static_extension = Dynamic;
