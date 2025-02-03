package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outc64_18862_static_extension) abstract T_testOverflow___localname___outc64_18862(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862) from stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862 to stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862 {
    public var maxc(get, set) : stdgo.GoComplex64;
    function get_maxc():stdgo.GoComplex64 return this.maxc;
    function set_maxc(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.maxc = (v : stdgo.GoComplex64);
        return v;
    }
    public var minc(get, set) : stdgo.GoComplex64;
    function get_minc():stdgo.GoComplex64 return this.minc;
    function set_minc(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.minc = (v : stdgo.GoComplex64);
        return v;
    }
    public function new(?maxc:stdgo.GoComplex64, ?minc:stdgo.GoComplex64) this = new stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862((maxc : stdgo.GoComplex64), (minc : stdgo.GoComplex64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
