package stdgo.internal.bisect;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _offset64 : Dynamic;
@:invalid var _prime64 : Dynamic;
typedef Writer = stdgo._internal.internal.bisect.Bisect.Writer;
@:invalid typedef Matcher = Dynamic;
@:invalid typedef T_atomicPointerDedup = Dynamic;
@:invalid typedef T_cond = Dynamic;
@:invalid typedef T_parseError = Dynamic;
@:invalid typedef T_dedup = Dynamic;
function new_(_pattern:stdgo.GoString):Void {}
function _printFileLine(_w:Writer, _h:stdgo.GoUInt64, _file:stdgo.GoString, _line:stdgo.GoInt):Void {}
function _appendFileLine(_dst:stdgo.Slice<stdgo.GoByte>, _file:stdgo.GoString, _line:stdgo.GoInt):Void {}
function printMarker(_w:Writer, _h:stdgo.GoUInt64):Void {}
function _printStack(_w:Writer, _h:stdgo.GoUInt64, _stk:stdgo.Slice<stdgo.GoUIntptr>):Void {}
function marker(_id:stdgo.GoUInt64):Void {}
function appendMarker(_dst:stdgo.Slice<stdgo.GoByte>, _id:stdgo.GoUInt64):Void {}
function cutMarker(_line:stdgo.GoString):Void {}
function hash(_data:haxe.Rest<stdgo.AnyInterface>):Void {}
function _fnv(_h:stdgo.GoUInt64, _x:stdgo.GoByte):Void {}
function _fnvString(_h:stdgo.GoUInt64, _x:stdgo.GoString):Void {}
function _fnvUint64(_h:stdgo.GoUInt64, _x:stdgo.GoUInt64):Void {}
function _fnvUint32(_h:stdgo.GoUInt64, _x:stdgo.GoUInt32):Void {}
@:invalid typedef Matcher_asInterface = Dynamic;
@:invalid typedef Matcher_static_extension = Dynamic;
@:invalid typedef T_atomicPointerDedup_asInterface = Dynamic;
@:invalid typedef T_atomicPointerDedup_static_extension = Dynamic;
@:invalid typedef T_parseError_asInterface = Dynamic;
@:invalid typedef T_parseError_static_extension = Dynamic;
@:invalid typedef T_dedup_asInterface = Dynamic;
@:invalid typedef T_dedup_static_extension = Dynamic;
