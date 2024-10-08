package stdgo._internal.unicode;
@:structInit class Range16 {
    public var lo : stdgo.GoUInt16 = 0;
    public var hi : stdgo.GoUInt16 = 0;
    public var stride : stdgo.GoUInt16 = 0;
    public function new(?lo:stdgo.GoUInt16, ?hi:stdgo.GoUInt16, ?stride:stdgo.GoUInt16) {
        if (lo != null) this.lo = lo;
        if (hi != null) this.hi = hi;
        if (stride != null) this.stride = stride;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Range16(lo, hi, stride);
    }
}
