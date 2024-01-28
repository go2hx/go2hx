package stdgo.runtime;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var memProfileRate : Dynamic;
@:invalid var compiler : Dynamic;
@:invalid var goos : Dynamic;
@:invalid var goarch : Dynamic;
typedef Error = stdgo._internal.runtime.Runtime.Error;
@:invalid typedef TypeAssertionError = Dynamic;
@:invalid typedef StackRecord = Dynamic;
@:invalid typedef MemProfileRecord = Dynamic;
@:invalid typedef BlockProfileRecord = Dynamic;
@:invalid typedef MemStats = Dynamic;
@:invalid typedef PanicNilError = Dynamic;
@:invalid typedef Pinner = Dynamic;
@:invalid typedef Frames = Dynamic;
@:invalid typedef Frame = Dynamic;
@:invalid typedef Func = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.runtime.Runtime.T__struct_0;
function setCPUProfileRate(_hz:stdgo.GoInt):Void {}
function cpuprofile():Void {}
function gomaxprocs(_n:stdgo.GoInt):Void {}
function numCPU():Void {}
function numCgoCall():Void {}
function numGoroutine():Void {}
function caller(_skip:stdgo.GoInt):Void {}
function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):Void {}
function goroot():Void {}
function version():Void {}
function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void {}
function keepAlive(_x:stdgo.AnyInterface):Void {}
function gc():Void {}
function setBlockProfileRate(_rate:stdgo.GoInt):Void {}
function setMutexProfileFraction(_rate:stdgo.GoInt):Void {}
function memProfile(_p:stdgo.Slice<MemProfileRecord>, _inuseZero:Bool):Void {}
function blockProfile(_p:stdgo.Slice<BlockProfileRecord>):Void {}
function mutexProfile(_p:stdgo.Slice<BlockProfileRecord>):Void {}
function threadCreateProfile(_p:stdgo.Slice<StackRecord>):Void {}
function goroutineProfile(_p:stdgo.Slice<StackRecord>):Void {}
function stack(_buf:stdgo.Slice<stdgo.GoByte>, _all:Bool):Void {}
function readMemStats(_m:stdgo.Ref<MemStats>):Void {}
function goexit():Void {}
function gosched():Void {}
function breakpoint():Void {}
function lockOSThread():Void {}
function unlockOSThread():Void {}
function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):Void {}
function funcForPC(_pc:stdgo.GoUIntptr):Void {}
function startTrace():Void {}
function stopTrace():Void {}
function readTrace():Void {}
function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo._internal.unsafe.Unsafe.UnsafePointer, _context:stdgo._internal.unsafe.Unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {}
@:invalid typedef TypeAssertionError_asInterface = Dynamic;
@:invalid typedef TypeAssertionError_static_extension = Dynamic;
@:invalid typedef StackRecord_asInterface = Dynamic;
@:invalid typedef StackRecord_static_extension = Dynamic;
@:invalid typedef MemProfileRecord_asInterface = Dynamic;
@:invalid typedef MemProfileRecord_static_extension = Dynamic;
@:invalid typedef BlockProfileRecord_asInterface = Dynamic;
@:invalid typedef BlockProfileRecord_static_extension = Dynamic;
@:invalid typedef PanicNilError_asInterface = Dynamic;
@:invalid typedef PanicNilError_static_extension = Dynamic;
@:invalid typedef Pinner_asInterface = Dynamic;
@:invalid typedef Pinner_static_extension = Dynamic;
@:invalid typedef Frames_asInterface = Dynamic;
@:invalid typedef Frames_static_extension = Dynamic;
@:invalid typedef Func_asInterface = Dynamic;
@:invalid typedef Func_static_extension = Dynamic;
