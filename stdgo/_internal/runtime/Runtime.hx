package stdgo._internal.runtime;
private var __go2hxdoc__package : Bool;
final compiler : stdgo.GoString = "go2hx";
final goos : stdgo.GoString = ("" : stdgo.GoString);
final goarch : stdgo.GoString = ("" : stdgo.GoString);
var memProfileRate : stdgo.GoInt = (0 : stdgo.GoInt);
@:keep class Error_static_extension {
    static public function runtimeError(t:Error):Void t.runtimeError();
}
typedef Error = stdgo.StructType & {
    > stdgo.Error,
    /**
        RuntimeError is a no-op function but
        serves to distinguish types that are run time
        errors from ordinary errors: a type is a
        run time error if it has a RuntimeError method.
        
        
    **/
    public dynamic function runtimeError():Void;
};
@:structInit @:using(stdgo._internal.runtime.Runtime.TypeAssertionError_static_extension) class TypeAssertionError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeAssertionError();
    }
}
@:structInit @:using(stdgo._internal.runtime.Runtime.StackRecord_static_extension) class StackRecord {
    public var stack0 : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUIntptr)]);
    public function new(?stack0:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (stack0 != null) this.stack0 = stack0;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StackRecord(stack0);
    }
}
@:structInit @:using(stdgo._internal.runtime.Runtime.MemProfileRecord_static_extension) class MemProfileRecord {
    public var allocBytes : stdgo.GoInt64 = 0;
    public var freeBytes : stdgo.GoInt64 = 0;
    public var allocObjects : stdgo.GoInt64 = 0;
    public var freeObjects : stdgo.GoInt64 = 0;
    public var stack0 : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUIntptr)]);
    public function new(?allocBytes:stdgo.GoInt64, ?freeBytes:stdgo.GoInt64, ?allocObjects:stdgo.GoInt64, ?freeObjects:stdgo.GoInt64, ?stack0:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (allocBytes != null) this.allocBytes = allocBytes;
        if (freeBytes != null) this.freeBytes = freeBytes;
        if (allocObjects != null) this.allocObjects = allocObjects;
        if (freeObjects != null) this.freeObjects = freeObjects;
        if (stack0 != null) this.stack0 = stack0;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MemProfileRecord(allocBytes, freeBytes, allocObjects, freeObjects, stack0);
    }
}
@:structInit @:using(stdgo._internal.runtime.Runtime.BlockProfileRecord_static_extension) class BlockProfileRecord {
    public var count : stdgo.GoInt64 = 0;
    public var cycles : stdgo.GoInt64 = 0;
    @:embedded
    public var stackRecord : stdgo._internal.runtime.Runtime.StackRecord = ({} : stdgo._internal.runtime.Runtime.StackRecord);
    public function new(?count:stdgo.GoInt64, ?cycles:stdgo.GoInt64, ?stackRecord:stdgo._internal.runtime.Runtime.StackRecord) {
        if (count != null) this.count = count;
        if (cycles != null) this.cycles = cycles;
        if (stackRecord != null) this.stackRecord = stackRecord;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function stack():stdgo.Slice<stdgo.GoUIntptr> return (null : stdgo.Slice<stdgo.GoUIntptr>);
    public function __copy__() {
        return new BlockProfileRecord(count, cycles, stackRecord);
    }
}
@:structInit class MemStats {
    public var alloc : stdgo.GoUInt64 = 0;
    public var totalAlloc : stdgo.GoUInt64 = 0;
    public var sys : stdgo.GoUInt64 = 0;
    public var lookups : stdgo.GoUInt64 = 0;
    public var mallocs : stdgo.GoUInt64 = 0;
    public var frees : stdgo.GoUInt64 = 0;
    public var heapAlloc : stdgo.GoUInt64 = 0;
    public var heapSys : stdgo.GoUInt64 = 0;
    public var heapIdle : stdgo.GoUInt64 = 0;
    public var heapInuse : stdgo.GoUInt64 = 0;
    public var heapReleased : stdgo.GoUInt64 = 0;
    public var heapObjects : stdgo.GoUInt64 = 0;
    public var stackInuse : stdgo.GoUInt64 = 0;
    public var stackSys : stdgo.GoUInt64 = 0;
    public var mspanInuse : stdgo.GoUInt64 = 0;
    public var mspanSys : stdgo.GoUInt64 = 0;
    public var mcacheInuse : stdgo.GoUInt64 = 0;
    public var mcacheSys : stdgo.GoUInt64 = 0;
    public var buckHashSys : stdgo.GoUInt64 = 0;
    public var gcsys : stdgo.GoUInt64 = 0;
    public var otherSys : stdgo.GoUInt64 = 0;
    public var nextGC : stdgo.GoUInt64 = 0;
    public var lastGC : stdgo.GoUInt64 = 0;
    public var pauseTotalNs : stdgo.GoUInt64 = 0;
    public var pauseNs : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt64)]);
    public var pauseEnd : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt64)]);
    public var numGC : stdgo.GoUInt32 = 0;
    public var numForcedGC : stdgo.GoUInt32 = 0;
    public var gccpufraction : stdgo.GoFloat64 = 0;
    public var enableGC : Bool = false;
    public var debugGC : Bool = false;
    public var bySize : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }> = new stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>(61, 61, ...[for (i in 0 ... 61) { size : (0 : stdgo.GoUInt32), mallocs : (0 : stdgo.GoUInt64), frees : (0 : stdgo.GoUInt64) }]);
    public function new(?alloc:stdgo.GoUInt64, ?totalAlloc:stdgo.GoUInt64, ?sys:stdgo.GoUInt64, ?lookups:stdgo.GoUInt64, ?mallocs:stdgo.GoUInt64, ?frees:stdgo.GoUInt64, ?heapAlloc:stdgo.GoUInt64, ?heapSys:stdgo.GoUInt64, ?heapIdle:stdgo.GoUInt64, ?heapInuse:stdgo.GoUInt64, ?heapReleased:stdgo.GoUInt64, ?heapObjects:stdgo.GoUInt64, ?stackInuse:stdgo.GoUInt64, ?stackSys:stdgo.GoUInt64, ?mspanInuse:stdgo.GoUInt64, ?mspanSys:stdgo.GoUInt64, ?mcacheInuse:stdgo.GoUInt64, ?mcacheSys:stdgo.GoUInt64, ?buckHashSys:stdgo.GoUInt64, ?gcsys:stdgo.GoUInt64, ?otherSys:stdgo.GoUInt64, ?nextGC:stdgo.GoUInt64, ?lastGC:stdgo.GoUInt64, ?pauseTotalNs:stdgo.GoUInt64, ?pauseNs:stdgo.GoArray<stdgo.GoUInt64>, ?pauseEnd:stdgo.GoArray<stdgo.GoUInt64>, ?numGC:stdgo.GoUInt32, ?numForcedGC:stdgo.GoUInt32, ?gccpufraction:stdgo.GoFloat64, ?enableGC:Bool, ?debugGC:Bool, ?bySize:stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>) {
        if (alloc != null) this.alloc = alloc;
        if (totalAlloc != null) this.totalAlloc = totalAlloc;
        if (sys != null) this.sys = sys;
        if (lookups != null) this.lookups = lookups;
        if (mallocs != null) this.mallocs = mallocs;
        if (frees != null) this.frees = frees;
        if (heapAlloc != null) this.heapAlloc = heapAlloc;
        if (heapSys != null) this.heapSys = heapSys;
        if (heapIdle != null) this.heapIdle = heapIdle;
        if (heapInuse != null) this.heapInuse = heapInuse;
        if (heapReleased != null) this.heapReleased = heapReleased;
        if (heapObjects != null) this.heapObjects = heapObjects;
        if (stackInuse != null) this.stackInuse = stackInuse;
        if (stackSys != null) this.stackSys = stackSys;
        if (mspanInuse != null) this.mspanInuse = mspanInuse;
        if (mspanSys != null) this.mspanSys = mspanSys;
        if (mcacheInuse != null) this.mcacheInuse = mcacheInuse;
        if (mcacheSys != null) this.mcacheSys = mcacheSys;
        if (buckHashSys != null) this.buckHashSys = buckHashSys;
        if (gcsys != null) this.gcsys = gcsys;
        if (otherSys != null) this.otherSys = otherSys;
        if (nextGC != null) this.nextGC = nextGC;
        if (lastGC != null) this.lastGC = lastGC;
        if (pauseTotalNs != null) this.pauseTotalNs = pauseTotalNs;
        if (pauseNs != null) this.pauseNs = pauseNs;
        if (pauseEnd != null) this.pauseEnd = pauseEnd;
        if (numGC != null) this.numGC = numGC;
        if (numForcedGC != null) this.numForcedGC = numForcedGC;
        if (gccpufraction != null) this.gccpufraction = gccpufraction;
        if (enableGC != null) this.enableGC = enableGC;
        if (debugGC != null) this.debugGC = debugGC;
        if (bySize != null) this.bySize = bySize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MemStats(
alloc,
totalAlloc,
sys,
lookups,
mallocs,
frees,
heapAlloc,
heapSys,
heapIdle,
heapInuse,
heapReleased,
heapObjects,
stackInuse,
stackSys,
mspanInuse,
mspanSys,
mcacheInuse,
mcacheSys,
buckHashSys,
gcsys,
otherSys,
nextGC,
lastGC,
pauseTotalNs,
pauseNs,
pauseEnd,
numGC,
numForcedGC,
gccpufraction,
enableGC,
debugGC,
bySize);
    }
}
@:structInit @:using(stdgo._internal.runtime.Runtime.PanicNilError_static_extension) class PanicNilError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PanicNilError();
    }
}
@:structInit @:using(stdgo._internal.runtime.Runtime.Pinner_static_extension) class Pinner {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _unpin() @:typeType null;
    public function __copy__() {
        return new Pinner();
    }
}
@:structInit @:using(stdgo._internal.runtime.Runtime.Frames_static_extension) class Frames {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Frames();
    }
}
@:structInit class Frame {
    public var pc : stdgo.GoUIntptr = 0;
    public var func : stdgo.Ref<stdgo._internal.runtime.Runtime.Func> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime.Func>);
    public var function_ : stdgo.GoString = "";
    public var file : stdgo.GoString = "";
    public var line : stdgo.GoInt = 0;
    public var entry : stdgo.GoUIntptr = 0;
    public function new(?pc:stdgo.GoUIntptr, ?func:stdgo.Ref<stdgo._internal.runtime.Runtime.Func>, ?function_:stdgo.GoString, ?file:stdgo.GoString, ?line:stdgo.GoInt, ?entry:stdgo.GoUIntptr) {
        if (pc != null) this.pc = pc;
        if (func != null) this.func = func;
        if (function_ != null) this.function_ = function_;
        if (file != null) this.file = file;
        if (line != null) this.line = line;
        if (entry != null) this.entry = entry;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Frame(pc, func, function_, file, line, entry);
    }
}
@:structInit @:using(stdgo._internal.runtime.Runtime.Func_static_extension) class Func {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Func();
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.runtime.Runtime.T__struct_0_static_extension) typedef T__struct_0 = {
    /**
        Size is the maximum byte size of an object in this
        size class.
    **/
    public var size : stdgo.GoUInt32;
    /**
        Mallocs is the cumulative count of heap objects
        allocated in this size class. The cumulative bytes
        of allocation is Size*Mallocs. The number of live
        objects in this size class is Mallocs - Frees.
    **/
    public var mallocs : stdgo.GoUInt64;
    /**
        Frees is the cumulative count of heap objects freed
        in this size class.
    **/
    public var frees : stdgo.GoUInt64;
};
function setCPUProfileRate(_hz:stdgo.GoInt):Void throw ":runtime.setCPUProfileRate is not yet implemented";
function cpuprofile():stdgo.Slice<stdgo.GoByte> throw ":runtime.cpuprofile is not yet implemented";
function gomaxprocs(_n:stdgo.GoInt):stdgo.GoInt return 1;
function numCPU():stdgo.GoInt throw ":runtime.numCPU is not yet implemented";
function numCgoCall():stdgo.GoInt64 throw ":runtime.numCgoCall is not yet implemented";
function numGoroutine():stdgo.GoInt throw ":runtime.numGoroutine is not yet implemented";
function caller(_skip:stdgo.GoInt):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoString; var _2 : stdgo.GoInt; var _3 : Bool; } throw ":runtime.caller is not yet implemented";
function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt throw ":runtime.callers is not yet implemented";
function goroot():stdgo.GoString throw ":runtime.goroot is not yet implemented";
function version():stdgo.GoString throw ":runtime.version is not yet implemented";
function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void throw ":runtime.setFinalizer is not yet implemented";
function keepAlive(_x:stdgo.AnyInterface):Void throw ":runtime.keepAlive is not yet implemented";
function gc():Void throw ":runtime.gc is not yet implemented";
function setBlockProfileRate(_rate:stdgo.GoInt):Void throw ":runtime.setBlockProfileRate is not yet implemented";
function setMutexProfileFraction(_rate:stdgo.GoInt):stdgo.GoInt throw ":runtime.setMutexProfileFraction is not yet implemented";
function memProfile(_p:stdgo.Slice<MemProfileRecord>, _inuseZero:Bool):{ var _0 : stdgo.GoInt; var _1 : Bool; } throw ":runtime.memProfile is not yet implemented";
function blockProfile(_p:stdgo.Slice<BlockProfileRecord>):{ var _0 : stdgo.GoInt; var _1 : Bool; } throw ":runtime.blockProfile is not yet implemented";
function mutexProfile(_p:stdgo.Slice<BlockProfileRecord>):{ var _0 : stdgo.GoInt; var _1 : Bool; } throw ":runtime.mutexProfile is not yet implemented";
function threadCreateProfile(_p:stdgo.Slice<StackRecord>):{ var _0 : stdgo.GoInt; var _1 : Bool; } throw ":runtime.threadCreateProfile is not yet implemented";
function goroutineProfile(_p:stdgo.Slice<StackRecord>):{ var _0 : stdgo.GoInt; var _1 : Bool; } throw ":runtime.goroutineProfile is not yet implemented";
function stack(_buf:stdgo.Slice<stdgo.GoByte>, _all:Bool):stdgo.GoInt throw ":runtime.stack is not yet implemented";
function readMemStats(_m:stdgo.Ref<MemStats>):Void throw ":runtime.readMemStats is not yet implemented";
function goexit():Void throw ":runtime.goexit is not yet implemented";
function gosched():Void throw ":runtime.gosched is not yet implemented";
function breakpoint():Void throw ":runtime.breakpoint is not yet implemented";
function lockOSThread():Void throw ":runtime.lockOSThread is not yet implemented";
function unlockOSThread():Void throw ":runtime.unlockOSThread is not yet implemented";
function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Ref<Frames> throw ":runtime.callersFrames is not yet implemented";
function funcForPC(_pc:stdgo.GoUIntptr):stdgo.Ref<Func> throw ":runtime.funcForPC is not yet implemented";
function startTrace():stdgo.Error throw ":runtime.startTrace is not yet implemented";
function stopTrace():Void throw ":runtime.stopTrace is not yet implemented";
function readTrace():stdgo.Slice<stdgo.GoByte> throw ":runtime.readTrace is not yet implemented";
function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo._internal.unsafe.Unsafe.UnsafePointer, _context:stdgo._internal.unsafe.Unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw ":runtime.setCgoTraceback is not yet implemented";
class TypeAssertionError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    @:keep
    public dynamic function runtimeError():Void __self__.value.runtimeError();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TypeAssertionError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.TypeAssertionError_asInterface) class TypeAssertionError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<TypeAssertionError>):stdgo.GoString throw "TypeAssertionError:runtime.error is not yet implemented";
    @:keep
    static public function runtimeError( _:stdgo.Ref<TypeAssertionError>):Void throw "TypeAssertionError:runtime.runtimeError is not yet implemented";
}
class StackRecord_asInterface {
    @:keep
    public dynamic function stack():stdgo.Slice<stdgo.GoUIntptr> return __self__.value.stack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StackRecord>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.StackRecord_asInterface) class StackRecord_static_extension {
    @:keep
    static public function stack( _r:stdgo.Ref<StackRecord>):stdgo.Slice<stdgo.GoUIntptr> throw "StackRecord:runtime.stack is not yet implemented";
}
class MemProfileRecord_asInterface {
    @:keep
    public dynamic function stack():stdgo.Slice<stdgo.GoUIntptr> return __self__.value.stack();
    @:keep
    public dynamic function inUseObjects():stdgo.GoInt64 return __self__.value.inUseObjects();
    @:keep
    public dynamic function inUseBytes():stdgo.GoInt64 return __self__.value.inUseBytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MemProfileRecord>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.MemProfileRecord_asInterface) class MemProfileRecord_static_extension {
    @:keep
    static public function stack( _r:stdgo.Ref<MemProfileRecord>):stdgo.Slice<stdgo.GoUIntptr> throw "MemProfileRecord:runtime.stack is not yet implemented";
    @:keep
    static public function inUseObjects( _r:stdgo.Ref<MemProfileRecord>):stdgo.GoInt64 throw "MemProfileRecord:runtime.inUseObjects is not yet implemented";
    @:keep
    static public function inUseBytes( _r:stdgo.Ref<MemProfileRecord>):stdgo.GoInt64 throw "MemProfileRecord:runtime.inUseBytes is not yet implemented";
}
class BlockProfileRecord_asInterface {
    @:embedded
    public dynamic function stack():stdgo.Slice<stdgo.GoUIntptr> return __self__.value.stack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BlockProfileRecord>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.BlockProfileRecord_asInterface) class BlockProfileRecord_static_extension {
    @:embedded
    public static function stack( __self__:BlockProfileRecord):stdgo.Slice<stdgo.GoUIntptr> return __self__.stack();
}
class PanicNilError_asInterface {
    @:keep
    public dynamic function runtimeError():Void __self__.value.runtimeError();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PanicNilError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.PanicNilError_asInterface) class PanicNilError_static_extension {
    @:keep
    static public function runtimeError( _:stdgo.Ref<PanicNilError>):Void throw "PanicNilError:runtime.runtimeError is not yet implemented";
    @:keep
    static public function error( _:stdgo.Ref<PanicNilError>):stdgo.GoString throw "PanicNilError:runtime.error is not yet implemented";
}
class Pinner_asInterface {
    @:keep
    public dynamic function unpin():Void __self__.value.unpin();
    @:keep
    public dynamic function pin(_pointer:stdgo.AnyInterface):Void __self__.value.pin(_pointer);
    @:embedded
    public dynamic function _unpin():Void __self__.value._unpin();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Pinner>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.Pinner_asInterface) class Pinner_static_extension {
    @:keep
    static public function unpin( _p:stdgo.Ref<Pinner>):Void throw "Pinner:runtime.unpin is not yet implemented";
    @:keep
    static public function pin( _p:stdgo.Ref<Pinner>, _pointer:stdgo.AnyInterface):Void throw "Pinner:runtime.pin is not yet implemented";
    @:embedded
    public static function _unpin( __self__:Pinner) __self__._unpin();
}
class Frames_asInterface {
    @:keep
    public dynamic function next():{ var _0 : Frame; var _1 : Bool; } return __self__.value.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Frames>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.Frames_asInterface) class Frames_static_extension {
    @:keep
    static public function next( _ci:stdgo.Ref<Frames>):{ var _0 : Frame; var _1 : Bool; } throw "Frames:runtime.next is not yet implemented";
}
class Func_asInterface {
    @:keep
    public dynamic function fileLine(_pc:stdgo.GoUIntptr):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } return __self__.value.fileLine(_pc);
    @:keep
    public dynamic function entry():stdgo.GoUIntptr return __self__.value.entry();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Func>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.Runtime.Func_asInterface) class Func_static_extension {
    @:keep
    static public function fileLine( _f:stdgo.Ref<Func>, _pc:stdgo.GoUIntptr):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } throw "Func:runtime.fileLine is not yet implemented";
    @:keep
    static public function entry( _f:stdgo.Ref<Func>):stdgo.GoUIntptr throw "Func:runtime.entry is not yet implemented";
    @:keep
    static public function name( _f:stdgo.Ref<Func>):stdgo.GoString throw "Func:runtime.name is not yet implemented";
}
