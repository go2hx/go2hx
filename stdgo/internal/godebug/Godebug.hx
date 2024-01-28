package stdgo.internal.godebug;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _cache : Dynamic;
@:invalid var _empty : Dynamic;
@:invalid var _updateMu : Dynamic;
@:invalid var _stderr : Dynamic;
@:invalid typedef Setting = Dynamic;
@:invalid typedef T_setting = Dynamic;
@:invalid typedef T_value = Dynamic;
@:invalid typedef T_runtimeStderr = Dynamic;
function new_(_name:stdgo.GoString):Void {}
function _lookup(_name:stdgo.GoString):Void {}
function _setUpdate(_update:(stdgo.GoString, stdgo.GoString) -> Void):Void {}
function _registerMetric(_name:stdgo.GoString, _read:() -> stdgo.GoUInt64):Void {}
function _setNewIncNonDefault(_newIncNonDefault:stdgo.GoString -> (() -> Void)):Void {}
function _newIncNonDefault(_name:stdgo.GoString):Void {}
function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void {}
function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void {}
function _write(_fd:stdgo.GoUIntptr, _p:stdgo._internal.unsafe.Unsafe.UnsafePointer, _n:stdgo.GoInt32):Void {}
@:invalid typedef Setting_asInterface = Dynamic;
@:invalid typedef Setting_static_extension = Dynamic;
@:invalid typedef T_runtimeStderr_asInterface = Dynamic;
@:invalid typedef T_runtimeStderr_static_extension = Dynamic;
