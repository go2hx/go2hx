package stdgo.runtime;
final compiler : String = stdgo._internal.runtime.Runtime.compiler;
final goos : String = stdgo._internal.runtime.Runtime.goos;
final goarch : String = stdgo._internal.runtime.Runtime.goarch;
var memProfileRate(get, set) : StdTypes.Int;
private function get_memProfileRate():StdTypes.Int return stdgo._internal.runtime.Runtime.memProfileRate;
private function set_memProfileRate(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.runtime.Runtime.memProfileRate = v;
        return v;
    }
class Error_static_extension {
    static public function runtimeError(t:Error):Void {
        stdgo._internal.runtime.Runtime.Error_static_extension.runtimeError(t);
    }
}
typedef Error = stdgo._internal.runtime.Runtime.Error;
@:structInit @:using(stdgo.runtime.Runtime.TypeAssertionError_static_extension) abstract TypeAssertionError(stdgo._internal.runtime.Runtime.TypeAssertionError) from stdgo._internal.runtime.Runtime.TypeAssertionError to stdgo._internal.runtime.Runtime.TypeAssertionError {
    public function new() this = new stdgo._internal.runtime.Runtime.TypeAssertionError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.StackRecord_static_extension) abstract StackRecord(stdgo._internal.runtime.Runtime.StackRecord) from stdgo._internal.runtime.Runtime.StackRecord to stdgo._internal.runtime.Runtime.StackRecord {
    public var stack0(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_stack0():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.stack0) i]);
    function set_stack0(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.stack0 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?stack0:haxe.ds.Vector<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.Runtime.StackRecord(([for (i in stack0) i] : stdgo.GoArray<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.MemProfileRecord_static_extension) abstract MemProfileRecord(stdgo._internal.runtime.Runtime.MemProfileRecord) from stdgo._internal.runtime.Runtime.MemProfileRecord to stdgo._internal.runtime.Runtime.MemProfileRecord {
    public var allocBytes(get, set) : haxe.Int64;
    function get_allocBytes():haxe.Int64 return this.allocBytes;
    function set_allocBytes(v:haxe.Int64):haxe.Int64 {
        this.allocBytes = v;
        return v;
    }
    public var freeBytes(get, set) : haxe.Int64;
    function get_freeBytes():haxe.Int64 return this.freeBytes;
    function set_freeBytes(v:haxe.Int64):haxe.Int64 {
        this.freeBytes = v;
        return v;
    }
    public var allocObjects(get, set) : haxe.Int64;
    function get_allocObjects():haxe.Int64 return this.allocObjects;
    function set_allocObjects(v:haxe.Int64):haxe.Int64 {
        this.allocObjects = v;
        return v;
    }
    public var freeObjects(get, set) : haxe.Int64;
    function get_freeObjects():haxe.Int64 return this.freeObjects;
    function set_freeObjects(v:haxe.Int64):haxe.Int64 {
        this.freeObjects = v;
        return v;
    }
    public var stack0(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_stack0():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.stack0) i]);
    function set_stack0(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.stack0 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?allocBytes:haxe.Int64, ?freeBytes:haxe.Int64, ?allocObjects:haxe.Int64, ?freeObjects:haxe.Int64, ?stack0:haxe.ds.Vector<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.Runtime.MemProfileRecord(allocBytes, freeBytes, allocObjects, freeObjects, ([for (i in stack0) i] : stdgo.GoArray<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.BlockProfileRecord_static_extension) abstract BlockProfileRecord(stdgo._internal.runtime.Runtime.BlockProfileRecord) from stdgo._internal.runtime.Runtime.BlockProfileRecord to stdgo._internal.runtime.Runtime.BlockProfileRecord {
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = v;
        return v;
    }
    public var cycles(get, set) : haxe.Int64;
    function get_cycles():haxe.Int64 return this.cycles;
    function set_cycles(v:haxe.Int64):haxe.Int64 {
        this.cycles = v;
        return v;
    }
    public var stackRecord(get, set) : stdgo._internal.runtime.Runtime.StackRecord;
    function get_stackRecord():stdgo._internal.runtime.Runtime.StackRecord return this.stackRecord;
    function set_stackRecord(v:stdgo._internal.runtime.Runtime.StackRecord):stdgo._internal.runtime.Runtime.StackRecord {
        this.stackRecord = v;
        return v;
    }
    public function new(?count:haxe.Int64, ?cycles:haxe.Int64, ?stackRecord:stdgo._internal.runtime.Runtime.StackRecord) this = new stdgo._internal.runtime.Runtime.BlockProfileRecord(count, cycles, stackRecord);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract MemStats(stdgo._internal.runtime.Runtime.MemStats) from stdgo._internal.runtime.Runtime.MemStats to stdgo._internal.runtime.Runtime.MemStats {
    public var alloc(get, set) : haxe.UInt64;
    function get_alloc():haxe.UInt64 return this.alloc;
    function set_alloc(v:haxe.UInt64):haxe.UInt64 {
        this.alloc = v;
        return v;
    }
    public var totalAlloc(get, set) : haxe.UInt64;
    function get_totalAlloc():haxe.UInt64 return this.totalAlloc;
    function set_totalAlloc(v:haxe.UInt64):haxe.UInt64 {
        this.totalAlloc = v;
        return v;
    }
    public var sys(get, set) : haxe.UInt64;
    function get_sys():haxe.UInt64 return this.sys;
    function set_sys(v:haxe.UInt64):haxe.UInt64 {
        this.sys = v;
        return v;
    }
    public var lookups(get, set) : haxe.UInt64;
    function get_lookups():haxe.UInt64 return this.lookups;
    function set_lookups(v:haxe.UInt64):haxe.UInt64 {
        this.lookups = v;
        return v;
    }
    public var mallocs(get, set) : haxe.UInt64;
    function get_mallocs():haxe.UInt64 return this.mallocs;
    function set_mallocs(v:haxe.UInt64):haxe.UInt64 {
        this.mallocs = v;
        return v;
    }
    public var frees(get, set) : haxe.UInt64;
    function get_frees():haxe.UInt64 return this.frees;
    function set_frees(v:haxe.UInt64):haxe.UInt64 {
        this.frees = v;
        return v;
    }
    public var heapAlloc(get, set) : haxe.UInt64;
    function get_heapAlloc():haxe.UInt64 return this.heapAlloc;
    function set_heapAlloc(v:haxe.UInt64):haxe.UInt64 {
        this.heapAlloc = v;
        return v;
    }
    public var heapSys(get, set) : haxe.UInt64;
    function get_heapSys():haxe.UInt64 return this.heapSys;
    function set_heapSys(v:haxe.UInt64):haxe.UInt64 {
        this.heapSys = v;
        return v;
    }
    public var heapIdle(get, set) : haxe.UInt64;
    function get_heapIdle():haxe.UInt64 return this.heapIdle;
    function set_heapIdle(v:haxe.UInt64):haxe.UInt64 {
        this.heapIdle = v;
        return v;
    }
    public var heapInuse(get, set) : haxe.UInt64;
    function get_heapInuse():haxe.UInt64 return this.heapInuse;
    function set_heapInuse(v:haxe.UInt64):haxe.UInt64 {
        this.heapInuse = v;
        return v;
    }
    public var heapReleased(get, set) : haxe.UInt64;
    function get_heapReleased():haxe.UInt64 return this.heapReleased;
    function set_heapReleased(v:haxe.UInt64):haxe.UInt64 {
        this.heapReleased = v;
        return v;
    }
    public var heapObjects(get, set) : haxe.UInt64;
    function get_heapObjects():haxe.UInt64 return this.heapObjects;
    function set_heapObjects(v:haxe.UInt64):haxe.UInt64 {
        this.heapObjects = v;
        return v;
    }
    public var stackInuse(get, set) : haxe.UInt64;
    function get_stackInuse():haxe.UInt64 return this.stackInuse;
    function set_stackInuse(v:haxe.UInt64):haxe.UInt64 {
        this.stackInuse = v;
        return v;
    }
    public var stackSys(get, set) : haxe.UInt64;
    function get_stackSys():haxe.UInt64 return this.stackSys;
    function set_stackSys(v:haxe.UInt64):haxe.UInt64 {
        this.stackSys = v;
        return v;
    }
    public var mspanInuse(get, set) : haxe.UInt64;
    function get_mspanInuse():haxe.UInt64 return this.mspanInuse;
    function set_mspanInuse(v:haxe.UInt64):haxe.UInt64 {
        this.mspanInuse = v;
        return v;
    }
    public var mspanSys(get, set) : haxe.UInt64;
    function get_mspanSys():haxe.UInt64 return this.mspanSys;
    function set_mspanSys(v:haxe.UInt64):haxe.UInt64 {
        this.mspanSys = v;
        return v;
    }
    public var mcacheInuse(get, set) : haxe.UInt64;
    function get_mcacheInuse():haxe.UInt64 return this.mcacheInuse;
    function set_mcacheInuse(v:haxe.UInt64):haxe.UInt64 {
        this.mcacheInuse = v;
        return v;
    }
    public var mcacheSys(get, set) : haxe.UInt64;
    function get_mcacheSys():haxe.UInt64 return this.mcacheSys;
    function set_mcacheSys(v:haxe.UInt64):haxe.UInt64 {
        this.mcacheSys = v;
        return v;
    }
    public var buckHashSys(get, set) : haxe.UInt64;
    function get_buckHashSys():haxe.UInt64 return this.buckHashSys;
    function set_buckHashSys(v:haxe.UInt64):haxe.UInt64 {
        this.buckHashSys = v;
        return v;
    }
    public var gcsys(get, set) : haxe.UInt64;
    function get_gcsys():haxe.UInt64 return this.gcsys;
    function set_gcsys(v:haxe.UInt64):haxe.UInt64 {
        this.gcsys = v;
        return v;
    }
    public var otherSys(get, set) : haxe.UInt64;
    function get_otherSys():haxe.UInt64 return this.otherSys;
    function set_otherSys(v:haxe.UInt64):haxe.UInt64 {
        this.otherSys = v;
        return v;
    }
    public var nextGC(get, set) : haxe.UInt64;
    function get_nextGC():haxe.UInt64 return this.nextGC;
    function set_nextGC(v:haxe.UInt64):haxe.UInt64 {
        this.nextGC = v;
        return v;
    }
    public var lastGC(get, set) : haxe.UInt64;
    function get_lastGC():haxe.UInt64 return this.lastGC;
    function set_lastGC(v:haxe.UInt64):haxe.UInt64 {
        this.lastGC = v;
        return v;
    }
    public var pauseTotalNs(get, set) : haxe.UInt64;
    function get_pauseTotalNs():haxe.UInt64 return this.pauseTotalNs;
    function set_pauseTotalNs(v:haxe.UInt64):haxe.UInt64 {
        this.pauseTotalNs = v;
        return v;
    }
    public var pauseNs(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_pauseNs():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.pauseNs) i]);
    function set_pauseNs(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.pauseNs = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var pauseEnd(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_pauseEnd():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.pauseEnd) i]);
    function set_pauseEnd(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.pauseEnd = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var numGC(get, set) : std.UInt;
    function get_numGC():std.UInt return this.numGC;
    function set_numGC(v:std.UInt):std.UInt {
        this.numGC = v;
        return v;
    }
    public var numForcedGC(get, set) : std.UInt;
    function get_numForcedGC():std.UInt return this.numForcedGC;
    function set_numForcedGC(v:std.UInt):std.UInt {
        this.numForcedGC = v;
        return v;
    }
    public var gccpufraction(get, set) : StdTypes.Float;
    function get_gccpufraction():StdTypes.Float return this.gccpufraction;
    function set_gccpufraction(v:StdTypes.Float):StdTypes.Float {
        this.gccpufraction = v;
        return v;
    }
    public var enableGC(get, set) : Bool;
    function get_enableGC():Bool return this.enableGC;
    function set_enableGC(v:Bool):Bool {
        this.enableGC = v;
        return v;
    }
    public var debugGC(get, set) : Bool;
    function get_debugGC():Bool return this.debugGC;
    function set_debugGC(v:Bool):Bool {
        this.debugGC = v;
        return v;
    }
    public var bySize(get, set) : haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>>;
    function get_bySize():haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>> return haxe.ds.Vector.fromArrayCopy([for (i in this.bySize) {
        final obj = i;
        { size : obj.size, mallocs : obj.mallocs, frees : obj.frees };
    }]);
    function set_bySize(v:haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>>):haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>> {
        this.bySize = ([for (i in v) {
            final obj = i;
            { size : obj.size, mallocs : obj.mallocs, frees : obj.frees };
        }] : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>);
        return v;
    }
    public function new(?alloc:haxe.UInt64, ?totalAlloc:haxe.UInt64, ?sys:haxe.UInt64, ?lookups:haxe.UInt64, ?mallocs:haxe.UInt64, ?frees:haxe.UInt64, ?heapAlloc:haxe.UInt64, ?heapSys:haxe.UInt64, ?heapIdle:haxe.UInt64, ?heapInuse:haxe.UInt64, ?heapReleased:haxe.UInt64, ?heapObjects:haxe.UInt64, ?stackInuse:haxe.UInt64, ?stackSys:haxe.UInt64, ?mspanInuse:haxe.UInt64, ?mspanSys:haxe.UInt64, ?mcacheInuse:haxe.UInt64, ?mcacheSys:haxe.UInt64, ?buckHashSys:haxe.UInt64, ?gcsys:haxe.UInt64, ?otherSys:haxe.UInt64, ?nextGC:haxe.UInt64, ?lastGC:haxe.UInt64, ?pauseTotalNs:haxe.UInt64, ?pauseNs:haxe.ds.Vector<haxe.UInt64>, ?pauseEnd:haxe.ds.Vector<haxe.UInt64>, ?numGC:std.UInt, ?numForcedGC:std.UInt, ?gccpufraction:StdTypes.Float, ?enableGC:Bool, ?debugGC:Bool, ?bySize:haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>>) this = new stdgo._internal.runtime.Runtime.MemStats(
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
([for (i in pauseNs) i] : stdgo.GoArray<stdgo.GoUInt64>),
([for (i in pauseEnd) i] : stdgo.GoArray<stdgo.GoUInt64>),
numGC,
numForcedGC,
gccpufraction,
enableGC,
debugGC,
([for (i in bySize) {
        final obj = i;
        { size : obj.size, mallocs : obj.mallocs, frees : obj.frees };
    }] : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.PanicNilError_static_extension) abstract PanicNilError(stdgo._internal.runtime.Runtime.PanicNilError) from stdgo._internal.runtime.Runtime.PanicNilError to stdgo._internal.runtime.Runtime.PanicNilError {
    public function new() this = new stdgo._internal.runtime.Runtime.PanicNilError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Pinner_static_extension) abstract Pinner(stdgo._internal.runtime.Runtime.Pinner) from stdgo._internal.runtime.Runtime.Pinner to stdgo._internal.runtime.Runtime.Pinner {
    public function new() this = new stdgo._internal.runtime.Runtime.Pinner();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Frames_static_extension) abstract Frames(stdgo._internal.runtime.Runtime.Frames) from stdgo._internal.runtime.Runtime.Frames to stdgo._internal.runtime.Runtime.Frames {
    public function new() this = new stdgo._internal.runtime.Runtime.Frames();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Frame(stdgo._internal.runtime.Runtime.Frame) from stdgo._internal.runtime.Runtime.Frame to stdgo._internal.runtime.Runtime.Frame {
    public var pc(get, set) : stdgo.GoUIntptr;
    function get_pc():stdgo.GoUIntptr return this.pc;
    function set_pc(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pc = v;
        return v;
    }
    public var func(get, set) : stdgo._internal.runtime.Runtime.Func;
    function get_func():stdgo._internal.runtime.Runtime.Func return this.func;
    function set_func(v:stdgo._internal.runtime.Runtime.Func):stdgo._internal.runtime.Runtime.Func {
        this.func = v;
        return v;
    }
    public var function_(get, set) : String;
    function get_function_():String return this.function_;
    function set_function_(v:String):String {
        this.function_ = v;
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public var entry(get, set) : stdgo.GoUIntptr;
    function get_entry():stdgo.GoUIntptr return this.entry;
    function set_entry(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.entry = v;
        return v;
    }
    public function new(?pc:stdgo.GoUIntptr, ?func:stdgo._internal.runtime.Runtime.Func, ?function_:String, ?file:String, ?line:StdTypes.Int, ?entry:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime.Frame(pc, func, function_, file, line, entry);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Func_static_extension) abstract Func(stdgo._internal.runtime.Runtime.Func) from stdgo._internal.runtime.Runtime.Func to stdgo._internal.runtime.Runtime.Func {
    public function new() this = new stdgo._internal.runtime.Runtime.Func();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.runtime.Runtime.T__struct_0;
class TypeAssertionError_static_extension {
    static public function error(_e:TypeAssertionError):String {
        return stdgo._internal.runtime.Runtime.TypeAssertionError_static_extension.error(_e);
    }
    static public function runtimeError(_:TypeAssertionError):Void {
        stdgo._internal.runtime.Runtime.TypeAssertionError_static_extension.runtimeError(_);
    }
}
class StackRecord_static_extension {
    static public function stack(_r:StackRecord):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.Runtime.StackRecord_static_extension.stack(_r)) i];
    }
}
class MemProfileRecord_static_extension {
    static public function stack(_r:MemProfileRecord):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.Runtime.MemProfileRecord_static_extension.stack(_r)) i];
    }
    static public function inUseObjects(_r:MemProfileRecord):haxe.Int64 {
        return stdgo._internal.runtime.Runtime.MemProfileRecord_static_extension.inUseObjects(_r);
    }
    static public function inUseBytes(_r:MemProfileRecord):haxe.Int64 {
        return stdgo._internal.runtime.Runtime.MemProfileRecord_static_extension.inUseBytes(_r);
    }
}
class BlockProfileRecord_static_extension {
    public static function stack(__self__:BlockProfileRecord):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.Runtime.BlockProfileRecord_static_extension.stack(__self__)) i];
    }
}
class PanicNilError_static_extension {
    static public function runtimeError(_:PanicNilError):Void {
        stdgo._internal.runtime.Runtime.PanicNilError_static_extension.runtimeError(_);
    }
    static public function error(_:PanicNilError):String {
        return stdgo._internal.runtime.Runtime.PanicNilError_static_extension.error(_);
    }
}
class Pinner_static_extension {
    static public function unpin(_p:Pinner):Void {
        stdgo._internal.runtime.Runtime.Pinner_static_extension.unpin(_p);
    }
    static public function pin(_p:Pinner, _pointer:stdgo.AnyInterface):Void {
        stdgo._internal.runtime.Runtime.Pinner_static_extension.pin(_p, _pointer);
    }
    public static function _unpin(__self__:Pinner) {
        stdgo._internal.runtime.Runtime.Pinner_static_extension._unpin(__self__);
    }
}
class Frames_static_extension {
    static public function next(_ci:Frames):stdgo.Tuple<Frame, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime.Frames_static_extension.next(_ci);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Func_static_extension {
    static public function fileLine(_f:Func, _pc:stdgo.GoUIntptr):stdgo.Tuple<String, StdTypes.Int> {
        return {
            final obj = stdgo._internal.runtime.Runtime.Func_static_extension.fileLine(_f, _pc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function entry(_f:Func):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime.Func_static_extension.entry(_f);
    }
    static public function name(_f:Func):String {
        return stdgo._internal.runtime.Runtime.Func_static_extension.name(_f);
    }
}
/**
    /|*
    Package runtime contains operations that interact with Go's runtime system,
    such as functions to control goroutines. It also includes the low-level type information
    used by the reflect package; see reflect's documentation for the programmable
    interface to the run-time type system.
    
    # Environment Variables
    
    The following environment variables ($name or %name%, depending on the host
    operating system) control the run-time behavior of Go programs. The meanings
    and use may change from release to release.
    
    The GOGC variable sets the initial garbage collection target percentage.
    A collection is triggered when the ratio of freshly allocated data to live data
    remaining after the previous collection reaches this percentage. The default
    is GOGC=100. Setting GOGC=off disables the garbage collector entirely.
    [runtime/debug.SetGCPercent] allows changing this percentage at run time.
    
    The GOMEMLIMIT variable sets a soft memory limit for the runtime. This memory limit
    includes the Go heap and all other memory managed by the runtime, and excludes
    external memory sources such as mappings of the binary itself, memory managed in
    other languages, and memory held by the operating system on behalf of the Go
    program. GOMEMLIMIT is a numeric value in bytes with an optional unit suffix.
    The supported suffixes include B, KiB, MiB, GiB, and TiB. These suffixes
    represent quantities of bytes as defined by the IEC 80000-13 standard. That is,
    they are based on powers of two: KiB means 2^10 bytes, MiB means 2^20 bytes,
    and so on. The default setting is math.MaxInt64, which effectively disables the
    memory limit. [runtime/debug.SetMemoryLimit] allows changing this limit at run
    time.
    
    The GODEBUG variable controls debugging variables within the runtime.
    It is a comma-separated list of name=val pairs setting these named variables:
    
    	allocfreetrace: setting allocfreetrace=1 causes every allocation to be
    	profiled and a stack trace printed on each object's allocation and free.
    
    	clobberfree: setting clobberfree=1 causes the garbage collector to
    	clobber the memory content of an object with bad content when it frees
    	the object.
    
    	cpu.*: cpu.all=off disables the use of all optional instruction set extensions.
    	cpu.extension=off disables use of instructions from the specified instruction set extension.
    	extension is the lower case name for the instruction set extension such as sse41 or avx
    	as listed in internal/cpu package. As an example cpu.avx=off disables runtime detection
    	and thereby use of AVX instructions.
    
    	cgocheck: setting cgocheck=0 disables all checks for packages
    	using cgo to incorrectly pass Go pointers to non-Go code.
    	Setting cgocheck=1 (the default) enables relatively cheap
    	checks that may miss some errors. A more complete, but slow,
    	cgocheck mode can be enabled using GOEXPERIMENT (which
    	requires a rebuild), see https://pkg.go.dev/internal/goexperiment for details.
    
    	dontfreezetheworld: by default, the start of a fatal panic or throw
    	"freezes the world", preempting all threads to stop all running
    	goroutines, which makes it possible to traceback all goroutines, and
    	keeps their state close to the point of panic. Setting
    	dontfreezetheworld=1 disables this preemption, allowing goroutines to
    	continue executing during panic processing. Note that goroutines that
    	naturally enter the scheduler will still stop. This can be useful when
    	debugging the runtime scheduler, as freezetheworld perturbs scheduler
    	state and thus may hide problems.
    
    	efence: setting efence=1 causes the allocator to run in a mode
    	where each object is allocated on a unique page and addresses are
    	never recycled.
    
    	gccheckmark: setting gccheckmark=1 enables verification of the
    	garbage collector's concurrent mark phase by performing a
    	second mark pass while the world is stopped.  If the second
    	pass finds a reachable object that was not found by concurrent
    	mark, the garbage collector will panic.
    
    	gcpacertrace: setting gcpacertrace=1 causes the garbage collector to
    	print information about the internal state of the concurrent pacer.
    
    	gcshrinkstackoff: setting gcshrinkstackoff=1 disables moving goroutines
    	onto smaller stacks. In this mode, a goroutine's stack can only grow.
    
    	gcstoptheworld: setting gcstoptheworld=1 disables concurrent garbage collection,
    	making every garbage collection a stop-the-world event. Setting gcstoptheworld=2
    	also disables concurrent sweeping after the garbage collection finishes.
    
    	gctrace: setting gctrace=1 causes the garbage collector to emit a single line to standard
    	error at each collection, summarizing the amount of memory collected and the
    	length of the pause. The format of this line is subject to change. Included in
    	the explanation below is also the relevant runtime/metrics metric for each field.
    	Currently, it is:
    		gc # @#s #%: #+#+# ms clock, #+#/#/#+# ms cpu, #->#-># MB, # MB goal, # MB stacks, #MB globals, # P
    	where the fields are as follows:
    		gc #         the GC number, incremented at each GC
    		@#s          time in seconds since program start
    		#%           percentage of time spent in GC since program start
    		#+...+#      wall-clock/CPU times for the phases of the GC
    		#->#-># MB   heap size at GC start, at GC end, and live heap, or /gc/scan/heap:bytes
    		# MB goal    goal heap size, or /gc/heap/goal:bytes
    		# MB stacks  estimated scannable stack size, or /gc/scan/stack:bytes
    		# MB globals scannable global size, or /gc/scan/globals:bytes
    		# P          number of processors used, or /sched/gomaxprocs:threads
    	The phases are stop-the-world (STW) sweep termination, concurrent
    	mark and scan, and STW mark termination. The CPU times
    	for mark/scan are broken down in to assist time (GC performed in
    	line with allocation), background GC time, and idle GC time.
    	If the line ends with "(forced)", this GC was forced by a
    	runtime.GC() call.
    
    	harddecommit: setting harddecommit=1 causes memory that is returned to the OS to
    	also have protections removed on it. This is the only mode of operation on Windows,
    	but is helpful in debugging scavenger-related issues on other platforms. Currently,
    	only supported on Linux.
    
    	inittrace: setting inittrace=1 causes the runtime to emit a single line to standard
    	error for each package with init work, summarizing the execution time and memory
    	allocation. No information is printed for inits executed as part of plugin loading
    	and for packages without both user defined and compiler generated init work.
    	The format of this line is subject to change. Currently, it is:
    		init # @#ms, # ms clock, # bytes, # allocs
    	where the fields are as follows:
    		init #      the package name
    		@# ms       time in milliseconds when the init started since program start
    		# clock     wall-clock time for package initialization work
    		# bytes     memory allocated on the heap
    		# allocs    number of heap allocations
    
    	madvdontneed: setting madvdontneed=0 will use MADV_FREE
    	instead of MADV_DONTNEED on Linux when returning memory to the
    	kernel. This is more efficient, but means RSS numbers will
    	drop only when the OS is under memory pressure. On the BSDs and
    	Illumos/Solaris, setting madvdontneed=1 will use MADV_DONTNEED instead
    	of MADV_FREE. This is less efficient, but causes RSS numbers to drop
    	more quickly.
    
    	memprofilerate: setting memprofilerate=X will update the value of runtime.MemProfileRate.
    	When set to 0 memory profiling is disabled.  Refer to the description of
    	MemProfileRate for the default value.
    
    	pagetrace: setting pagetrace=/path/to/file will write out a trace of page events
    	that can be viewed, analyzed, and visualized using the x/debug/cmd/pagetrace tool.
    	Build your program with GOEXPERIMENT=pagetrace to enable this functionality. Do not
    	enable this functionality if your program is a setuid binary as it introduces a security
    	risk in that scenario. Currently not supported on Windows, plan9 or js/wasm. Setting this
    	option for some applications can produce large traces, so use with care.
    
    	invalidptr: invalidptr=1 (the default) causes the garbage collector and stack
    	copier to crash the program if an invalid pointer value (for example, 1)
    	is found in a pointer-typed location. Setting invalidptr=0 disables this check.
    	This should only be used as a temporary workaround to diagnose buggy code.
    	The real fix is to not store integers in pointer-typed locations.
    
    	sbrk: setting sbrk=1 replaces the memory allocator and garbage collector
    	with a trivial allocator that obtains memory from the operating system and
    	never reclaims any memory.
    
    	scavtrace: setting scavtrace=1 causes the runtime to emit a single line to standard
    	error, roughly once per GC cycle, summarizing the amount of work done by the
    	scavenger as well as the total amount of memory returned to the operating system
    	and an estimate of physical memory utilization. The format of this line is subject
    	to change, but currently it is:
    		scav # KiB work (bg), # KiB work (eager), # KiB total, #% util
    	where the fields are as follows:
    		# KiB work (bg)    the amount of memory returned to the OS in the background since
    		                   the last line
    		# KiB work (eager) the amount of memory returned to the OS eagerly since the last line
    		# KiB now          the amount of address space currently returned to the OS
    		#% util            the fraction of all unscavenged heap memory which is in-use
    	If the line ends with "(forced)", then scavenging was forced by a
    	debug.FreeOSMemory() call.
    
    	scheddetail: setting schedtrace=X and scheddetail=1 causes the scheduler to emit
    	detailed multiline info every X milliseconds, describing state of the scheduler,
    	processors, threads and goroutines.
    
    	schedtrace: setting schedtrace=X causes the scheduler to emit a single line to standard
    	error every X milliseconds, summarizing the scheduler state.
    
    	tracebackancestors: setting tracebackancestors=N extends tracebacks with the stacks at
    	which goroutines were created, where N limits the number of ancestor goroutines to
    	report. This also extends the information returned by runtime.Stack. Ancestor's goroutine
    	IDs will refer to the ID of the goroutine at the time of creation; it's possible for this
    	ID to be reused for another goroutine. Setting N to 0 will report no ancestry information.
    
    	tracefpunwindoff: setting tracefpunwindoff=1 forces the execution tracer to
    	use the runtime's default stack unwinder instead of frame pointer unwinding.
    	This increases tracer overhead, but could be helpful as a workaround or for
    	debugging unexpected regressions caused by frame pointer unwinding.
    
    	asyncpreemptoff: asyncpreemptoff=1 disables signal-based
    	asynchronous goroutine preemption. This makes some loops
    	non-preemptible for long periods, which may delay GC and
    	goroutine scheduling. This is useful for debugging GC issues
    	because it also disables the conservative stack scanning used
    	for asynchronously preempted goroutines.
    
    The net and net/http packages also refer to debugging variables in GODEBUG.
    See the documentation for those packages for details.
    
    The GOMAXPROCS variable limits the number of operating system threads that
    can execute user-level Go code simultaneously. There is no limit to the number of threads
    that can be blocked in system calls on behalf of Go code; those do not count against
    the GOMAXPROCS limit. This package's GOMAXPROCS function queries and changes
    the limit.
    
    The GORACE variable configures the race detector, for programs built using -race.
    See https://golang.org/doc/articles/race_detector.html for details.
    
    The GOTRACEBACK variable controls the amount of output generated when a Go
    program fails due to an unrecovered panic or an unexpected runtime condition.
    By default, a failure prints a stack trace for the current goroutine,
    eliding functions internal to the run-time system, and then exits with exit code 2.
    The failure prints stack traces for all goroutines if there is no current goroutine
    or the failure is internal to the run-time.
    GOTRACEBACK=none omits the goroutine stack traces entirely.
    GOTRACEBACK=single (the default) behaves as described above.
    GOTRACEBACK=all adds stack traces for all user-created goroutines.
    GOTRACEBACK=system is like “all” but adds stack frames for run-time functions
    and shows goroutines created internally by the run-time.
    GOTRACEBACK=crash is like “system” but crashes in an operating system-specific
    manner instead of exiting. For example, on Unix systems, the crash raises
    SIGABRT to trigger a core dump.
    GOTRACEBACK=wer is like “crash” but doesn't disable Windows Error Reporting (WER).
    For historical reasons, the GOTRACEBACK settings 0, 1, and 2 are synonyms for
    none, all, and system, respectively.
    The runtime/debug package's SetTraceback function allows increasing the
    amount of output at run time, but it cannot reduce the amount below that
    specified by the environment variable.
    See https://golang.org/pkg/runtime/debug/#SetTraceback.
    
    The GOARCH, GOOS, GOPATH, and GOROOT environment variables complete
    the set of Go environment variables. They influence the building of Go programs
    (see https://golang.org/cmd/go and https://golang.org/pkg/go/build).
    GOARCH, GOOS, and GOROOT are recorded at compile time and made available by
    constants or functions in this package, but they do not influence the execution
    of the run-time system.
    
    # Security
    
    On Unix platforms, Go's runtime system behaves slightly differently when a
    binary is setuid/setgid or executed with setuid/setgid-like properties, in order
    to prevent dangerous behaviors. On Linux this is determined by checking for the
    AT_SECURE flag in the auxiliary vector, on the BSDs and Solaris/Illumos it is
    determined by checking the issetugid syscall, and on AIX it is determined by
    checking if the uid/gid match the effective uid/gid.
    
    When the runtime determines the binary is setuid/setgid-like, it does three main
    things:
      - The standard input/output file descriptors (0, 1, 2) are checked to be open.
        If any of them are closed, they are opened pointing at /dev/null.
      - The value of the GOTRACEBACK environment variable is set to 'none'.
      - When a signal is received that terminates the program, or the program
        encounters an unrecoverable panic that would otherwise override the value
        of GOTRACEBACK, the goroutine stack, registers, and other memory related
        information are omitted.
    *|/
**/
class Runtime {
    /**
        SetCPUProfileRate sets the CPU profiling rate to hz samples per second.
        If hz <= 0, SetCPUProfileRate turns off profiling.
        If the profiler is on, the rate cannot be changed without first turning it off.
        
        Most clients should use the runtime/pprof package or
        the testing package's -test.cpuprofile flag instead of calling
        SetCPUProfileRate directly.
    **/
    static public function setCPUProfileRate(_hz:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime.setCPUProfileRate(_hz);
    }
    /**
        CPUProfile panics.
        It formerly provided raw access to chunks of
        a pprof-format profile generated by the runtime.
        The details of generating that format have changed,
        so this functionality has been removed.
        
        Deprecated: Use the runtime/pprof package,
        or the handlers in the net/http/pprof package,
        or the testing package's -test.cpuprofile flag instead.
    **/
    static public function cpuprofile():Array<StdTypes.Int> {
        return [for (i in stdgo._internal.runtime.Runtime.cpuprofile()) i];
    }
    /**
        GOMAXPROCS sets the maximum number of CPUs that can be executing
        simultaneously and returns the previous setting. It defaults to
        the value of runtime.NumCPU. If n < 1, it does not change the current setting.
        This call will go away when the scheduler improves.
    **/
    static public function gomaxprocs(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.Runtime.gomaxprocs(_n);
    }
    /**
        NumCPU returns the number of logical CPUs usable by the current process.
        
        The set of available CPUs is checked by querying the operating system
        at process startup. Changes to operating system CPU allocation after
        process startup are not reflected.
    **/
    static public function numCPU():StdTypes.Int {
        return stdgo._internal.runtime.Runtime.numCPU();
    }
    /**
        NumCgoCall returns the number of cgo calls made by the current process.
    **/
    static public function numCgoCall():haxe.Int64 {
        return stdgo._internal.runtime.Runtime.numCgoCall();
    }
    /**
        NumGoroutine returns the number of goroutines that currently exist.
    **/
    static public function numGoroutine():StdTypes.Int {
        return stdgo._internal.runtime.Runtime.numGoroutine();
    }
    /**
        Caller reports file and line number information about function invocations on
        the calling goroutine's stack. The argument skip is the number of stack frames
        to ascend, with 0 identifying the caller of Caller.  (For historical reasons the
        meaning of skip differs between Caller and Callers.) The return values report the
        program counter, file name, and line number within the file of the corresponding
        call. The boolean ok is false if it was not possible to recover the information.
    **/
    static public function caller(_skip:StdTypes.Int):stdgo.Tuple.Tuple4<stdgo.GoUIntptr, String, StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime.caller(_skip);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        Callers fills the slice pc with the return program counters of function invocations
        on the calling goroutine's stack. The argument skip is the number of stack frames
        to skip before recording in pc, with 0 identifying the frame for Callers itself and
        1 identifying the caller of Callers.
        It returns the number of entries written to pc.
        
        To translate these PCs into symbolic information such as function
        names and line numbers, use CallersFrames. CallersFrames accounts
        for inlined functions and adjusts the return program counters into
        call program counters. Iterating over the returned slice of PCs
        directly is discouraged, as is using FuncForPC on any of the
        returned PCs, since these cannot account for inlining or return
        program counter adjustment.
    **/
    static public function callers(_skip:StdTypes.Int, _pc:Array<stdgo.GoUIntptr>):StdTypes.Int {
        final _pc = ([for (i in _pc) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime.callers(_skip, _pc);
    }
    /**
        GOROOT returns the root of the Go tree. It uses the
        GOROOT environment variable, if set at process start,
        or else the root used during the Go build.
    **/
    static public function goroot():String {
        return stdgo._internal.runtime.Runtime.goroot();
    }
    /**
        Version returns the Go tree's version string.
        It is either the commit hash and date at the time of the build or,
        when possible, a release tag like "go1.3".
    **/
    static public function version():String {
        return stdgo._internal.runtime.Runtime.version();
    }
    /**
        SetFinalizer sets the finalizer associated with obj to the provided
        finalizer function. When the garbage collector finds an unreachable block
        with an associated finalizer, it clears the association and runs
        finalizer(obj) in a separate goroutine. This makes obj reachable again,
        but now without an associated finalizer. Assuming that SetFinalizer
        is not called again, the next time the garbage collector sees
        that obj is unreachable, it will free obj.
        
        SetFinalizer(obj, nil) clears any finalizer associated with obj.
        
        The argument obj must be a pointer to an object allocated by calling
        new, by taking the address of a composite literal, or by taking the
        address of a local variable.
        The argument finalizer must be a function that takes a single argument
        to which obj's type can be assigned, and can have arbitrary ignored return
        values. If either of these is not true, SetFinalizer may abort the
        program.
        
        Finalizers are run in dependency order: if A points at B, both have
        finalizers, and they are otherwise unreachable, only the finalizer
        for A runs; once A is freed, the finalizer for B can run.
        If a cyclic structure includes a block with a finalizer, that
        cycle is not guaranteed to be garbage collected and the finalizer
        is not guaranteed to run, because there is no ordering that
        respects the dependencies.
        
        The finalizer is scheduled to run at some arbitrary time after the
        program can no longer reach the object to which obj points.
        There is no guarantee that finalizers will run before a program exits,
        so typically they are useful only for releasing non-memory resources
        associated with an object during a long-running program.
        For example, an os.File object could use a finalizer to close the
        associated operating system file descriptor when a program discards
        an os.File without calling Close, but it would be a mistake
        to depend on a finalizer to flush an in-memory I/O buffer such as a
        bufio.Writer, because the buffer would not be flushed at program exit.
        
        It is not guaranteed that a finalizer will run if the size of *obj is
        zero bytes, because it may share same address with other zero-size
        objects in memory. See https://go.dev/ref/spec#Size_and_alignment_guarantees.
        
        It is not guaranteed that a finalizer will run for objects allocated
        in initializers for package-level variables. Such objects may be
        linker-allocated, not heap-allocated.
        
        Note that because finalizers may execute arbitrarily far into the future
        after an object is no longer referenced, the runtime is allowed to perform
        a space-saving optimization that batches objects together in a single
        allocation slot. The finalizer for an unreferenced object in such an
        allocation may never run if it always exists in the same batch as a
        referenced object. Typically, this batching only happens for tiny
        (on the order of 16 bytes or less) and pointer-free objects.
        
        A finalizer may run as soon as an object becomes unreachable.
        In order to use finalizers correctly, the program must ensure that
        the object is reachable until it is no longer required.
        Objects stored in global variables, or that can be found by tracing
        pointers from a global variable, are reachable. For other objects,
        pass the object to a call of the KeepAlive function to mark the
        last point in the function where the object must be reachable.
        
        For example, if p points to a struct, such as os.File, that contains
        a file descriptor d, and p has a finalizer that closes that file
        descriptor, and if the last use of p in a function is a call to
        syscall.Write(p.d, buf, size), then p may be unreachable as soon as
        the program enters syscall.Write. The finalizer may run at that moment,
        closing p.d, causing syscall.Write to fail because it is writing to
        a closed file descriptor (or, worse, to an entirely different
        file descriptor opened by a different goroutine). To avoid this problem,
        call KeepAlive(p) after the call to syscall.Write.
        
        A single goroutine runs all finalizers for a program, sequentially.
        If a finalizer must run for a long time, it should do so by starting
        a new goroutine.
        
        In the terminology of the Go memory model, a call
        SetFinalizer(x, f) “synchronizes before” the finalization call f(x).
        However, there is no guarantee that KeepAlive(x) or any other use of x
        “synchronizes before” f(x), so in general a finalizer should use a mutex
        or other synchronization mechanism if it needs to access mutable state in x.
        For example, consider a finalizer that inspects a mutable field in x
        that is modified from time to time in the main program before x
        becomes unreachable and the finalizer is invoked.
        The modifications in the main program and the inspection in the finalizer
        need to use appropriate synchronization, such as mutexes or atomic updates,
        to avoid read-write races.
    **/
    static public function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void {
        stdgo._internal.runtime.Runtime.setFinalizer(_obj, _finalizer);
    }
    /**
        KeepAlive marks its argument as currently reachable.
        This ensures that the object is not freed, and its finalizer is not run,
        before the point in the program where KeepAlive is called.
        
        A very simplified example showing where KeepAlive is required:
        
        	type File struct { d int }
        	d, err := syscall.Open("/file/path", syscall.O_RDONLY, 0)
        	// ... do something if err != nil ...
        	p := &File{d}
        	runtime.SetFinalizer(p, func(p *File) { syscall.Close(p.d) })
        	var buf [10]byte
        	n, err := syscall.Read(p.d, buf[:])
        	// Ensure p is not finalized until Read returns.
        	runtime.KeepAlive(p)
        	// No more uses of p after this point.
        
        Without the KeepAlive call, the finalizer could run at the start of
        syscall.Read, closing the file descriptor before syscall.Read makes
        the actual system call.
        
        Note: KeepAlive should only be used to prevent finalizers from
        running prematurely. In particular, when used with unsafe.Pointer,
        the rules for valid uses of unsafe.Pointer still apply.
    **/
    static public function keepAlive(_x:stdgo.AnyInterface):Void {
        stdgo._internal.runtime.Runtime.keepAlive(_x);
    }
    /**
        GC runs a garbage collection and blocks the caller until the
        garbage collection is complete. It may also block the entire
        program.
    **/
    static public function gc():Void {
        stdgo._internal.runtime.Runtime.gc();
    }
    /**
        SetBlockProfileRate controls the fraction of goroutine blocking events
        that are reported in the blocking profile. The profiler aims to sample
        an average of one blocking event per rate nanoseconds spent blocked.
        
        To include every blocking event in the profile, pass rate = 1.
        To turn off profiling entirely, pass rate <= 0.
    **/
    static public function setBlockProfileRate(_rate:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime.setBlockProfileRate(_rate);
    }
    /**
        SetMutexProfileFraction controls the fraction of mutex contention events
        that are reported in the mutex profile. On average 1/rate events are
        reported. The previous rate is returned.
        
        To turn off profiling entirely, pass rate 0.
        To just read the current rate, pass rate < 0.
        (For n>1 the details of sampling may change.)
    **/
    static public function setMutexProfileFraction(_rate:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.Runtime.setMutexProfileFraction(_rate);
    }
    /**
        MemProfile returns a profile of memory allocated and freed per allocation
        site.
        
        MemProfile returns n, the number of records in the current memory profile.
        If len(p) >= n, MemProfile copies the profile into p and returns n, true.
        If len(p) < n, MemProfile does not change p and returns n, false.
        
        If inuseZero is true, the profile includes allocation records
        where r.AllocBytes > 0 but r.AllocBytes == r.FreeBytes.
        These are sites where memory was allocated, but it has all
        been released back to the runtime.
        
        The returned profile may be up to two garbage collection cycles old.
        This is to avoid skewing the profile toward allocations; because
        allocations happen in real time but frees are delayed until the garbage
        collector performs sweeping, the profile only accounts for allocations
        that have had a chance to be freed by the garbage collector.
        
        Most clients should use the runtime/pprof package or
        the testing package's -test.memprofile flag instead
        of calling MemProfile directly.
    **/
    static public function memProfile(_p:Array<MemProfileRecord>, _inuseZero:Bool):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<MemProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime.memProfile(_p, _inuseZero);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        BlockProfile returns n, the number of records in the current blocking profile.
        If len(p) >= n, BlockProfile copies the profile into p and returns n, true.
        If len(p) < n, BlockProfile does not change p and returns n, false.
        
        Most clients should use the runtime/pprof package or
        the testing package's -test.blockprofile flag instead
        of calling BlockProfile directly.
    **/
    static public function blockProfile(_p:Array<BlockProfileRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<BlockProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime.blockProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MutexProfile returns n, the number of records in the current mutex profile.
        If len(p) >= n, MutexProfile copies the profile into p and returns n, true.
        Otherwise, MutexProfile does not change p, and returns n, false.
        
        Most clients should use the runtime/pprof package
        instead of calling MutexProfile directly.
    **/
    static public function mutexProfile(_p:Array<BlockProfileRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<BlockProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime.mutexProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ThreadCreateProfile returns n, the number of records in the thread creation profile.
        If len(p) >= n, ThreadCreateProfile copies the profile into p and returns n, true.
        If len(p) < n, ThreadCreateProfile does not change p and returns n, false.
        
        Most clients should use the runtime/pprof package instead
        of calling ThreadCreateProfile directly.
    **/
    static public function threadCreateProfile(_p:Array<StackRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<StackRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime.threadCreateProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        GoroutineProfile returns n, the number of records in the active goroutine stack profile.
        If len(p) >= n, GoroutineProfile copies the profile into p and returns n, true.
        If len(p) < n, GoroutineProfile does not change p and returns n, false.
        
        Most clients should use the runtime/pprof package instead
        of calling GoroutineProfile directly.
    **/
    static public function goroutineProfile(_p:Array<StackRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<StackRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime.goroutineProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Stack formats a stack trace of the calling goroutine into buf
        and returns the number of bytes written to buf.
        If all is true, Stack formats stack traces of all other goroutines
        into buf after the trace for the current goroutine.
    **/
    static public function stack(_buf:Array<StdTypes.Int>, _all:Bool):StdTypes.Int {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.runtime.Runtime.stack(_buf, _all);
    }
    /**
        ReadMemStats populates m with memory allocator statistics.
        
        The returned memory allocator statistics are up to date as of the
        call to ReadMemStats. This is in contrast with a heap profile,
        which is a snapshot as of the most recently completed garbage
        collection cycle.
    **/
    static public function readMemStats(_m:MemStats):Void {
        stdgo._internal.runtime.Runtime.readMemStats(_m);
    }
    /**
        Goexit terminates the goroutine that calls it. No other goroutine is affected.
        Goexit runs all deferred calls before terminating the goroutine. Because Goexit
        is not a panic, any recover calls in those deferred functions will return nil.
        
        Calling Goexit from the main goroutine terminates that goroutine
        without func main returning. Since func main has not returned,
        the program continues execution of other goroutines.
        If all other goroutines exit, the program crashes.
    **/
    static public function goexit():Void {
        stdgo._internal.runtime.Runtime.goexit();
    }
    /**
        Gosched yields the processor, allowing other goroutines to run. It does not
        suspend the current goroutine, so execution resumes automatically.
        
        go:nosplit
    **/
    static public function gosched():Void {
        stdgo._internal.runtime.Runtime.gosched();
    }
    /**
        Breakpoint executes a breakpoint trap.
    **/
    static public function breakpoint():Void {
        stdgo._internal.runtime.Runtime.breakpoint();
    }
    /**
        LockOSThread wires the calling goroutine to its current operating system thread.
        The calling goroutine will always execute in that thread,
        and no other goroutine will execute in it,
        until the calling goroutine has made as many calls to
        UnlockOSThread as to LockOSThread.
        If the calling goroutine exits without unlocking the thread,
        the thread will be terminated.
        
        All init functions are run on the startup thread. Calling LockOSThread
        from an init function will cause the main function to be invoked on
        that thread.
        
        A goroutine should call LockOSThread before calling OS services or
        non-Go library functions that depend on per-thread state.
        
        go:nosplit
    **/
    static public function lockOSThread():Void {
        stdgo._internal.runtime.Runtime.lockOSThread();
    }
    /**
        UnlockOSThread undoes an earlier call to LockOSThread.
        If this drops the number of active LockOSThread calls on the
        calling goroutine to zero, it unwires the calling goroutine from
        its fixed operating system thread.
        If there are no active LockOSThread calls, this is a no-op.
        
        Before calling UnlockOSThread, the caller must ensure that the OS
        thread is suitable for running other goroutines. If the caller made
        any permanent changes to the state of the thread that would affect
        other goroutines, it should not call this function and thus leave
        the goroutine locked to the OS thread until the goroutine (and
        hence the thread) exits.
        
        go:nosplit
    **/
    static public function unlockOSThread():Void {
        stdgo._internal.runtime.Runtime.unlockOSThread();
    }
    /**
        CallersFrames takes a slice of PC values returned by Callers and
        prepares to return function/file/line information.
        Do not change the slice until you are done with the Frames.
    **/
    static public function callersFrames(_callers:Array<stdgo.GoUIntptr>):Frames {
        final _callers = ([for (i in _callers) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime.callersFrames(_callers);
    }
    /**
        FuncForPC returns a *Func describing the function that contains the
        given program counter address, or else nil.
        
        If pc represents multiple functions because of inlining, it returns
        the *Func describing the innermost function, but with an entry of
        the outermost function.
    **/
    static public function funcForPC(_pc:stdgo.GoUIntptr):Func {
        return stdgo._internal.runtime.Runtime.funcForPC(_pc);
    }
    /**
        StartTrace enables tracing for the current process.
        While tracing, the data will be buffered and available via ReadTrace.
        StartTrace returns an error if tracing is already enabled.
        Most clients should use the runtime/trace package or the testing package's
        -test.trace flag instead of calling StartTrace directly.
    **/
    static public function startTrace():stdgo.Error {
        return stdgo._internal.runtime.Runtime.startTrace();
    }
    /**
        StopTrace stops tracing, if it was previously enabled.
        StopTrace only returns after all the reads for the trace have completed.
    **/
    static public function stopTrace():Void {
        stdgo._internal.runtime.Runtime.stopTrace();
    }
    /**
        ReadTrace returns the next chunk of binary tracing data, blocking until data
        is available. If tracing is turned off and all the data accumulated while it
        was on has been returned, ReadTrace returns nil. The caller must copy the
        returned data before calling ReadTrace again.
        ReadTrace must be called from one goroutine at a time.
    **/
    static public function readTrace():Array<StdTypes.Int> {
        return [for (i in stdgo._internal.runtime.Runtime.readTrace()) i];
    }
    /**
        SetCgoTraceback records three C functions to use to gather
        traceback information from C code and to convert that traceback
        information into symbolic information. These are used when printing
        stack traces for a program that uses cgo.
        
        The traceback and context functions may be called from a signal
        handler, and must therefore use only async-signal safe functions.
        The symbolizer function may be called while the program is
        crashing, and so must be cautious about using memory.  None of the
        functions may call back into Go.
        
        The context function will be called with a single argument, a
        pointer to a struct:
        
        	struct {
        		Context uintptr
        	}
        
        In C syntax, this struct will be
        
        	struct {
        		uintptr_t Context;
        	};
        
        If the Context field is 0, the context function is being called to
        record the current traceback context. It should record in the
        Context field whatever information is needed about the current
        point of execution to later produce a stack trace, probably the
        stack pointer and PC. In this case the context function will be
        called from C code.
        
        If the Context field is not 0, then it is a value returned by a
        previous call to the context function. This case is called when the
        context is no longer needed; that is, when the Go code is returning
        to its C code caller. This permits the context function to release
        any associated resources.
        
        While it would be correct for the context function to record a
        complete a stack trace whenever it is called, and simply copy that
        out in the traceback function, in a typical program the context
        function will be called many times without ever recording a
        traceback for that context. Recording a complete stack trace in a
        call to the context function is likely to be inefficient.
        
        The traceback function will be called with a single argument, a
        pointer to a struct:
        
        	struct {
        		Context    uintptr
        		SigContext uintptr
        		Buf        *uintptr
        		Max        uintptr
        	}
        
        In C syntax, this struct will be
        
        	struct {
        		uintptr_t  Context;
        		uintptr_t  SigContext;
        		uintptr_t* Buf;
        		uintptr_t  Max;
        	};
        
        The Context field will be zero to gather a traceback from the
        current program execution point. In this case, the traceback
        function will be called from C code.
        
        Otherwise Context will be a value previously returned by a call to
        the context function. The traceback function should gather a stack
        trace from that saved point in the program execution. The traceback
        function may be called from an execution thread other than the one
        that recorded the context, but only when the context is known to be
        valid and unchanging. The traceback function may also be called
        deeper in the call stack on the same thread that recorded the
        context. The traceback function may be called multiple times with
        the same Context value; it will usually be appropriate to cache the
        result, if possible, the first time this is called for a specific
        context value.
        
        If the traceback function is called from a signal handler on a Unix
        system, SigContext will be the signal context argument passed to
        the signal handler (a C ucontext_t* cast to uintptr_t). This may be
        used to start tracing at the point where the signal occurred. If
        the traceback function is not called from a signal handler,
        SigContext will be zero.
        
        Buf is where the traceback information should be stored. It should
        be PC values, such that Buf[0] is the PC of the caller, Buf[1] is
        the PC of that function's caller, and so on.  Max is the maximum
        number of entries to store.  The function should store a zero to
        indicate the top of the stack, or that the caller is on a different
        stack, presumably a Go stack.
        
        Unlike runtime.Callers, the PC values returned should, when passed
        to the symbolizer function, return the file/line of the call
        instruction.  No additional subtraction is required or appropriate.
        
        On all platforms, the traceback function is invoked when a call from
        Go to C to Go requests a stack trace. On linux/amd64, linux/ppc64le,
        linux/arm64, and freebsd/amd64, the traceback function is also invoked
        when a signal is received by a thread that is executing a cgo call.
        The traceback function should not make assumptions about when it is
        called, as future versions of Go may make additional calls.
        
        The symbolizer function will be called with a single argument, a
        pointer to a struct:
        
        	struct {
        		PC      uintptr // program counter to fetch information for
        		File    *byte   // file name (NUL terminated)
        		Lineno  uintptr // line number
        		Func    *byte   // function name (NUL terminated)
        		Entry   uintptr // function entry point
        		More    uintptr // set non-zero if more info for this PC
        		Data    uintptr // unused by runtime, available for function
        	}
        
        In C syntax, this struct will be
        
        	struct {
        		uintptr_t PC;
        		char*     File;
        		uintptr_t Lineno;
        		char*     Func;
        		uintptr_t Entry;
        		uintptr_t More;
        		uintptr_t Data;
        	};
        
        The PC field will be a value returned by a call to the traceback
        function.
        
        The first time the function is called for a particular traceback,
        all the fields except PC will be 0. The function should fill in the
        other fields if possible, setting them to 0/nil if the information
        is not available. The Data field may be used to store any useful
        information across calls. The More field should be set to non-zero
        if there is more information for this PC, zero otherwise. If More
        is set non-zero, the function will be called again with the same
        PC, and may return different information (this is intended for use
        with inlined functions). If More is zero, the function will be
        called with the next PC value in the traceback. When the traceback
        is complete, the function will be called once more with PC set to
        zero; this may be used to free any information. Each call will
        leave the fields of the struct set to the same values they had upon
        return, except for the PC field when the More field is zero. The
        function must not keep a copy of the struct pointer between calls.
        
        When calling SetCgoTraceback, the version argument is the version
        number of the structs that the functions expect to receive.
        Currently this must be zero.
        
        The symbolizer function may be nil, in which case the results of
        the traceback function will be displayed as numbers. If the
        traceback function is nil, the symbolizer function will never be
        called. The context function may be nil, in which case the
        traceback function will only be called with the context field set
        to zero.  If the context function is nil, then calls from Go to C
        to Go will not show a traceback for the C portion of the call stack.
        
        SetCgoTraceback should be called only once, ideally from an init function.
    **/
    static public function setCgoTraceback(_version:StdTypes.Int, _traceback:stdgo._internal.unsafe.Unsafe.UnsafePointer, _context:stdgo._internal.unsafe.Unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.runtime.Runtime.setCgoTraceback(_version, _traceback, _context, _symbolizer);
    }
}
