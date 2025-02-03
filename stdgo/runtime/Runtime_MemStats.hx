package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.MemStats_static_extension) abstract MemStats(stdgo._internal.runtime.Runtime_MemStats.MemStats) from stdgo._internal.runtime.Runtime_MemStats.MemStats to stdgo._internal.runtime.Runtime_MemStats.MemStats {
    public var alloc(get, set) : haxe.UInt64;
    function get_alloc():haxe.UInt64 return this.alloc;
    function set_alloc(v:haxe.UInt64):haxe.UInt64 {
        this.alloc = (v : stdgo.GoUInt64);
        return v;
    }
    public var totalAlloc(get, set) : haxe.UInt64;
    function get_totalAlloc():haxe.UInt64 return this.totalAlloc;
    function set_totalAlloc(v:haxe.UInt64):haxe.UInt64 {
        this.totalAlloc = (v : stdgo.GoUInt64);
        return v;
    }
    public var sys(get, set) : haxe.UInt64;
    function get_sys():haxe.UInt64 return this.sys;
    function set_sys(v:haxe.UInt64):haxe.UInt64 {
        this.sys = (v : stdgo.GoUInt64);
        return v;
    }
    public var lookups(get, set) : haxe.UInt64;
    function get_lookups():haxe.UInt64 return this.lookups;
    function set_lookups(v:haxe.UInt64):haxe.UInt64 {
        this.lookups = (v : stdgo.GoUInt64);
        return v;
    }
    public var mallocs(get, set) : haxe.UInt64;
    function get_mallocs():haxe.UInt64 return this.mallocs;
    function set_mallocs(v:haxe.UInt64):haxe.UInt64 {
        this.mallocs = (v : stdgo.GoUInt64);
        return v;
    }
    public var frees(get, set) : haxe.UInt64;
    function get_frees():haxe.UInt64 return this.frees;
    function set_frees(v:haxe.UInt64):haxe.UInt64 {
        this.frees = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapAlloc(get, set) : haxe.UInt64;
    function get_heapAlloc():haxe.UInt64 return this.heapAlloc;
    function set_heapAlloc(v:haxe.UInt64):haxe.UInt64 {
        this.heapAlloc = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapSys(get, set) : haxe.UInt64;
    function get_heapSys():haxe.UInt64 return this.heapSys;
    function set_heapSys(v:haxe.UInt64):haxe.UInt64 {
        this.heapSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapIdle(get, set) : haxe.UInt64;
    function get_heapIdle():haxe.UInt64 return this.heapIdle;
    function set_heapIdle(v:haxe.UInt64):haxe.UInt64 {
        this.heapIdle = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapInuse(get, set) : haxe.UInt64;
    function get_heapInuse():haxe.UInt64 return this.heapInuse;
    function set_heapInuse(v:haxe.UInt64):haxe.UInt64 {
        this.heapInuse = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapReleased(get, set) : haxe.UInt64;
    function get_heapReleased():haxe.UInt64 return this.heapReleased;
    function set_heapReleased(v:haxe.UInt64):haxe.UInt64 {
        this.heapReleased = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapObjects(get, set) : haxe.UInt64;
    function get_heapObjects():haxe.UInt64 return this.heapObjects;
    function set_heapObjects(v:haxe.UInt64):haxe.UInt64 {
        this.heapObjects = (v : stdgo.GoUInt64);
        return v;
    }
    public var stackInuse(get, set) : haxe.UInt64;
    function get_stackInuse():haxe.UInt64 return this.stackInuse;
    function set_stackInuse(v:haxe.UInt64):haxe.UInt64 {
        this.stackInuse = (v : stdgo.GoUInt64);
        return v;
    }
    public var stackSys(get, set) : haxe.UInt64;
    function get_stackSys():haxe.UInt64 return this.stackSys;
    function set_stackSys(v:haxe.UInt64):haxe.UInt64 {
        this.stackSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var mSpanInuse(get, set) : haxe.UInt64;
    function get_mSpanInuse():haxe.UInt64 return this.mSpanInuse;
    function set_mSpanInuse(v:haxe.UInt64):haxe.UInt64 {
        this.mSpanInuse = (v : stdgo.GoUInt64);
        return v;
    }
    public var mSpanSys(get, set) : haxe.UInt64;
    function get_mSpanSys():haxe.UInt64 return this.mSpanSys;
    function set_mSpanSys(v:haxe.UInt64):haxe.UInt64 {
        this.mSpanSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var mCacheInuse(get, set) : haxe.UInt64;
    function get_mCacheInuse():haxe.UInt64 return this.mCacheInuse;
    function set_mCacheInuse(v:haxe.UInt64):haxe.UInt64 {
        this.mCacheInuse = (v : stdgo.GoUInt64);
        return v;
    }
    public var mCacheSys(get, set) : haxe.UInt64;
    function get_mCacheSys():haxe.UInt64 return this.mCacheSys;
    function set_mCacheSys(v:haxe.UInt64):haxe.UInt64 {
        this.mCacheSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var buckHashSys(get, set) : haxe.UInt64;
    function get_buckHashSys():haxe.UInt64 return this.buckHashSys;
    function set_buckHashSys(v:haxe.UInt64):haxe.UInt64 {
        this.buckHashSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var gCSys(get, set) : haxe.UInt64;
    function get_gCSys():haxe.UInt64 return this.gCSys;
    function set_gCSys(v:haxe.UInt64):haxe.UInt64 {
        this.gCSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var otherSys(get, set) : haxe.UInt64;
    function get_otherSys():haxe.UInt64 return this.otherSys;
    function set_otherSys(v:haxe.UInt64):haxe.UInt64 {
        this.otherSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var nextGC(get, set) : haxe.UInt64;
    function get_nextGC():haxe.UInt64 return this.nextGC;
    function set_nextGC(v:haxe.UInt64):haxe.UInt64 {
        this.nextGC = (v : stdgo.GoUInt64);
        return v;
    }
    public var lastGC(get, set) : haxe.UInt64;
    function get_lastGC():haxe.UInt64 return this.lastGC;
    function set_lastGC(v:haxe.UInt64):haxe.UInt64 {
        this.lastGC = (v : stdgo.GoUInt64);
        return v;
    }
    public var pauseTotalNs(get, set) : haxe.UInt64;
    function get_pauseTotalNs():haxe.UInt64 return this.pauseTotalNs;
    function set_pauseTotalNs(v:haxe.UInt64):haxe.UInt64 {
        this.pauseTotalNs = (v : stdgo.GoUInt64);
        return v;
    }
    public var pauseNs(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_pauseNs():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.pauseNs) i]);
    function set_pauseNs(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.pauseNs = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var pauseEnd(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_pauseEnd():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.pauseEnd) i]);
    function set_pauseEnd(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.pauseEnd = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var numGC(get, set) : std.UInt;
    function get_numGC():std.UInt return this.numGC;
    function set_numGC(v:std.UInt):std.UInt {
        this.numGC = (v : stdgo.GoUInt32);
        return v;
    }
    public var numForcedGC(get, set) : std.UInt;
    function get_numForcedGC():std.UInt return this.numForcedGC;
    function set_numForcedGC(v:std.UInt):std.UInt {
        this.numForcedGC = (v : stdgo.GoUInt32);
        return v;
    }
    public var gCCPUFraction(get, set) : StdTypes.Float;
    function get_gCCPUFraction():StdTypes.Float return this.gCCPUFraction;
    function set_gCCPUFraction(v:StdTypes.Float):StdTypes.Float {
        this.gCCPUFraction = (v : stdgo.GoFloat64);
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
            { size : (obj.size : stdgo.GoUInt32), mallocs : (obj.mallocs : stdgo.GoUInt64), frees : (obj.frees : stdgo.GoUInt64) };
        }] : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>);
        return v;
    }
    public function new(?alloc:haxe.UInt64, ?totalAlloc:haxe.UInt64, ?sys:haxe.UInt64, ?lookups:haxe.UInt64, ?mallocs:haxe.UInt64, ?frees:haxe.UInt64, ?heapAlloc:haxe.UInt64, ?heapSys:haxe.UInt64, ?heapIdle:haxe.UInt64, ?heapInuse:haxe.UInt64, ?heapReleased:haxe.UInt64, ?heapObjects:haxe.UInt64, ?stackInuse:haxe.UInt64, ?stackSys:haxe.UInt64, ?mSpanInuse:haxe.UInt64, ?mSpanSys:haxe.UInt64, ?mCacheInuse:haxe.UInt64, ?mCacheSys:haxe.UInt64, ?buckHashSys:haxe.UInt64, ?gCSys:haxe.UInt64, ?otherSys:haxe.UInt64, ?nextGC:haxe.UInt64, ?lastGC:haxe.UInt64, ?pauseTotalNs:haxe.UInt64, ?pauseNs:haxe.ds.Vector<haxe.UInt64>, ?pauseEnd:haxe.ds.Vector<haxe.UInt64>, ?numGC:std.UInt, ?numForcedGC:std.UInt, ?gCCPUFraction:StdTypes.Float, ?enableGC:Bool, ?debugGC:Bool, ?bySize:haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>>) this = new stdgo._internal.runtime.Runtime_MemStats.MemStats(
(alloc : stdgo.GoUInt64),
(totalAlloc : stdgo.GoUInt64),
(sys : stdgo.GoUInt64),
(lookups : stdgo.GoUInt64),
(mallocs : stdgo.GoUInt64),
(frees : stdgo.GoUInt64),
(heapAlloc : stdgo.GoUInt64),
(heapSys : stdgo.GoUInt64),
(heapIdle : stdgo.GoUInt64),
(heapInuse : stdgo.GoUInt64),
(heapReleased : stdgo.GoUInt64),
(heapObjects : stdgo.GoUInt64),
(stackInuse : stdgo.GoUInt64),
(stackSys : stdgo.GoUInt64),
(mSpanInuse : stdgo.GoUInt64),
(mSpanSys : stdgo.GoUInt64),
(mCacheInuse : stdgo.GoUInt64),
(mCacheSys : stdgo.GoUInt64),
(buckHashSys : stdgo.GoUInt64),
(gCSys : stdgo.GoUInt64),
(otherSys : stdgo.GoUInt64),
(nextGC : stdgo.GoUInt64),
(lastGC : stdgo.GoUInt64),
(pauseTotalNs : stdgo.GoUInt64),
([for (i in pauseNs) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>),
([for (i in pauseEnd) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>),
(numGC : stdgo.GoUInt32),
(numForcedGC : stdgo.GoUInt32),
(gCCPUFraction : stdgo.GoFloat64),
enableGC,
debugGC,
([for (i in bySize) {
        final obj = i;
        { size : (obj.size : stdgo.GoUInt32), mallocs : (obj.mallocs : stdgo.GoUInt64), frees : (obj.frees : stdgo.GoUInt64) };
    }] : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
