package stdgo._internal.encoding.gob;
@:structInit class T_testOverflow___localname___outc64_18862 {
    public var maxc : stdgo.GoComplex64 = new stdgo.GoComplex64(0, 0);
    public var minc : stdgo.GoComplex64 = new stdgo.GoComplex64(0, 0);
    public function new(?maxc:stdgo.GoComplex64, ?minc:stdgo.GoComplex64) {
        if (maxc != null) this.maxc = maxc;
        if (minc != null) this.minc = minc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___outc64_18862(maxc, minc);
    }
}
