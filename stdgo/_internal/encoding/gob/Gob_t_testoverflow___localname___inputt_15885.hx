package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885_static_extension.T_testOverflow___localname___inputT_15885_static_extension) class T_testOverflow___localname___inputT_15885 {
    public var maxi : stdgo.GoInt64 = 0;
    public var mini : stdgo.GoInt64 = 0;
    public var maxu : stdgo.GoUInt64 = 0;
    public var maxf : stdgo.GoFloat64 = 0;
    public var minf : stdgo.GoFloat64 = 0;
    public var maxc : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var minc : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public function new(?maxi:stdgo.GoInt64, ?mini:stdgo.GoInt64, ?maxu:stdgo.GoUInt64, ?maxf:stdgo.GoFloat64, ?minf:stdgo.GoFloat64, ?maxc:stdgo.GoComplex128, ?minc:stdgo.GoComplex128) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
        if (maxu != null) this.maxu = maxu;
        if (maxf != null) this.maxf = maxf;
        if (minf != null) this.minf = minf;
        if (maxc != null) this.maxc = maxc;
        if (minc != null) this.minc = minc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___inputT_15885(maxi, mini, maxu, maxf, minf, maxc, minc);
    }
}
