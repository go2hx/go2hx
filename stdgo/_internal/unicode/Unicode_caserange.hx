package stdgo._internal.unicode;
@:structInit @:using(stdgo._internal.unicode.Unicode_caserange_static_extension.CaseRange_static_extension) class CaseRange {
    public var lo : stdgo.GoUInt32 = 0;
    public var hi : stdgo.GoUInt32 = 0;
    public var delta : stdgo._internal.unicode.Unicode_t_d.T_d = new stdgo._internal.unicode.Unicode_t_d.T_d(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt32)]);
    public function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?delta:stdgo._internal.unicode.Unicode_t_d.T_d) {
        if (lo != null) this.lo = lo;
        if (hi != null) this.hi = hi;
        if (delta != null) this.delta = delta;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CaseRange(lo, hi, delta);
    }
}
