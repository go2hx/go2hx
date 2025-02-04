package stdgo._internal.internal.coverage.rtcov;
@:structInit @:using(stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob_static_extension.CovCounterBlob_static_extension) class CovCounterBlob {
    public var counters : stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
    public var len : stdgo.GoUInt64 = 0;
    public function new(?counters:stdgo.Pointer<stdgo.GoUInt32>, ?len:stdgo.GoUInt64) {
        if (counters != null) this.counters = counters;
        if (len != null) this.len = len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CovCounterBlob(counters, len);
    }
}
