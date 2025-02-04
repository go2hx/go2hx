package stdgo._internal.internal.coverage.decodecounter;
@:structInit @:using(stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload_static_extension.FuncPayload_static_extension) class FuncPayload {
    public var pkgIdx : stdgo.GoUInt32 = 0;
    public var funcIdx : stdgo.GoUInt32 = 0;
    public var counters : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?pkgIdx:stdgo.GoUInt32, ?funcIdx:stdgo.GoUInt32, ?counters:stdgo.Slice<stdgo.GoUInt32>) {
        if (pkgIdx != null) this.pkgIdx = pkgIdx;
        if (funcIdx != null) this.funcIdx = funcIdx;
        if (counters != null) this.counters = counters;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FuncPayload(pkgIdx, funcIdx, counters);
    }
}
