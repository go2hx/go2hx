package stdgo._internal.runtime;
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
