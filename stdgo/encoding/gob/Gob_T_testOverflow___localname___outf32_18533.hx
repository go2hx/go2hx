package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outf32_18533_static_extension) abstract T_testOverflow___localname___outf32_18533(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533) from stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533 to stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533 {
    public var maxf(get, set) : StdTypes.Float;
    function get_maxf():StdTypes.Float return this.maxf;
    function set_maxf(v:StdTypes.Float):StdTypes.Float {
        this.maxf = (v : stdgo.GoFloat32);
        return v;
    }
    public var minf(get, set) : StdTypes.Float;
    function get_minf():StdTypes.Float return this.minf;
    function set_minf(v:StdTypes.Float):StdTypes.Float {
        this.minf = (v : stdgo.GoFloat32);
        return v;
    }
    public function new(?maxf:StdTypes.Float, ?minf:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533((maxf : stdgo.GoFloat32), (minf : stdgo.GoFloat32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
