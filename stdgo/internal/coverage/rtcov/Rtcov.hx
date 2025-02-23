package stdgo.internal.coverage.rtcov;
@:structInit @:using(stdgo.internal.coverage.rtcov.Rtcov.CovMetaBlob_static_extension) abstract CovMetaBlob(stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob) from stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob to stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob {
    public var p(get, set) : stdgo.Pointer<std.UInt>;
    function get_p():stdgo.Pointer<std.UInt> return this.p;
    function set_p(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.p = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var hash(get, set) : haxe.ds.Vector<std.UInt>;
    function get_hash():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.hash) i]);
    function set_hash(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.hash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = (v : stdgo.GoString);
        return v;
    }
    public var pkgID(get, set) : StdTypes.Int;
    function get_pkgID():StdTypes.Int return this.pkgID;
    function set_pkgID(v:StdTypes.Int):StdTypes.Int {
        this.pkgID = (v : stdgo.GoInt);
        return v;
    }
    public var counterMode(get, set) : std.UInt;
    function get_counterMode():std.UInt return this.counterMode;
    function set_counterMode(v:std.UInt):std.UInt {
        this.counterMode = (v : stdgo.GoUInt8);
        return v;
    }
    public var counterGranularity(get, set) : std.UInt;
    function get_counterGranularity():std.UInt return this.counterGranularity;
    function set_counterGranularity(v:std.UInt):std.UInt {
        this.counterGranularity = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?p:stdgo.Pointer<std.UInt>, ?len:std.UInt, ?hash:haxe.ds.Vector<std.UInt>, ?pkgPath:String, ?pkgID:StdTypes.Int, ?counterMode:std.UInt, ?counterGranularity:std.UInt) this = new stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob(p, (len : stdgo.GoUInt32), ([for (i in hash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (pkgPath : stdgo.GoString), (pkgID : stdgo.GoInt), (counterMode : stdgo.GoUInt8), (counterGranularity : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.rtcov.Rtcov.CovCounterBlob_static_extension) abstract CovCounterBlob(stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob) from stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob to stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob {
    public var counters(get, set) : stdgo.Pointer<std.UInt>;
    function get_counters():stdgo.Pointer<std.UInt> return this.counters;
    function set_counters(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.counters = v;
        return v;
    }
    public var len(get, set) : haxe.UInt64;
    function get_len():haxe.UInt64 return this.len;
    function set_len(v:haxe.UInt64):haxe.UInt64 {
        this.len = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?counters:stdgo.Pointer<std.UInt>, ?len:haxe.UInt64) this = new stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob(counters, (len : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CovMetaBlobPointer = stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablobpointer.CovMetaBlobPointer;
class CovMetaBlob_static_extension {

}
typedef CovCounterBlobPointer = stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblobpointer.CovCounterBlobPointer;
class CovCounterBlob_static_extension {

}
class Rtcov {

}
