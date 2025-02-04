package stdgo._internal.unicode;
@:structInit @:using(stdgo._internal.unicode.Unicode_range32_static_extension.Range32_static_extension) class Range32 {
    public var lo : stdgo.GoUInt32 = 0;
    public var hi : stdgo.GoUInt32 = 0;
    public var stride : stdgo.GoUInt32 = 0;
    public function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?stride:stdgo.GoUInt32) {
        if (lo != null) this.lo = lo;
        if (hi != null) this.hi = hi;
        if (stride != null) this.stride = stride;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Range32(lo, hi, stride);
    }
}
