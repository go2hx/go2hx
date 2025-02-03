package stdgo.internal.coverage.rtcov;
@:structInit @:using(stdgo.internal.coverage.rtcov.Rtcov.CovCounterBlob_static_extension) abstract CovCounterBlob(stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob) from stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob to stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob {
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
    public function new(?counters:stdgo.Pointer<std.UInt>, ?len:haxe.UInt64) this = new stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob(counters, (len : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
