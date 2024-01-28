package stdgo.runtime.debug;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid typedef GCStats = Dynamic;
@:invalid typedef BuildInfo = Dynamic;
@:invalid typedef Module = Dynamic;
@:invalid typedef BuildSetting = Dynamic;
function readGCStats(_stats:stdgo.Ref<GCStats>):Void {}
function setGCPercent(_percent:stdgo.GoInt):Void {}
function freeOSMemory():Void {}
function setMaxStack(_bytes:stdgo.GoInt):Void {}
function setMaxThreads(_threads:stdgo.GoInt):Void {}
function setPanicOnFault(_enabled:Bool):Void {}
function writeHeapDump(_fd:stdgo.GoUIntptr):Void {}
function setTraceback(_level:stdgo.GoString):Void {}
function setMemoryLimit(_limit:stdgo.GoInt64):Void {}
function readBuildInfo():Void {}
function parseBuildInfo(_data:stdgo.GoString):Void {}
function printStack():Void {}
function stack():Void {}
@:invalid typedef BuildInfo_asInterface = Dynamic;
@:invalid typedef BuildInfo_static_extension = Dynamic;
