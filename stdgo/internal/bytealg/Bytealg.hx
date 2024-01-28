package stdgo.internal.bytealg;
@:invalid var _offsetX86HasSSE42 : Dynamic;
@:invalid var _offsetX86HasAVX2 : Dynamic;
@:invalid var _offsetX86HasPOPCNT : Dynamic;
@:invalid var _offsetS390xHasVX : Dynamic;
@:invalid var _offsetPPC64HasPOWER9 : Dynamic;
@:invalid var maxLen : Dynamic;
@:invalid var primeRK : Dynamic;
@:invalid var maxBruteForce : Dynamic;
function hashStrBytes(_sep:stdgo.Slice<stdgo.GoByte>):Void {}
function hashStr(_sep:stdgo.GoString):Void {}
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoByte>):Void {}
function hashStrRev(_sep:stdgo.GoString):Void {}
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void {}
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):Void {}
function makeNoZero(_n:stdgo.GoInt):Void {}
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):Void {}
function count(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void {}
function countString(_s:stdgo.GoString, _c:stdgo.GoByte):Void {}
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function _abigen_runtime_memequal(_a:stdgo._internal.unsafe.Unsafe.UnsafePointer, _b:stdgo._internal.unsafe.Unsafe.UnsafePointer, _size:stdgo.GoUIntptr):Void {}
function _abigen_runtime_memequal_varlen(_a:stdgo._internal.unsafe.Unsafe.UnsafePointer, _b:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {}
function index(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):Void {}
function cutover(_n:stdgo.GoInt):Void {}
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void {}
function indexByteString(_s:stdgo.GoString, _c:stdgo.GoByte):Void {}
