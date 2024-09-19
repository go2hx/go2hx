package stdgo._internal.runtime;
@:structInit class BitRange {
    public var i : stdgo.GoUInt = 0;
    public var n : stdgo.GoUInt = 0;
    public function new(?i:stdgo.GoUInt, ?n:stdgo.GoUInt) {
        if (i != null) this.i = i;
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BitRange(i, n);
    }
}