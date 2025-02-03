package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___inputT_15885_static_extension) abstract T_testOverflow___localname___inputT_15885(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885) from stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885 to stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885 {
    public var maxi(get, set) : haxe.Int64;
    function get_maxi():haxe.Int64 return this.maxi;
    function set_maxi(v:haxe.Int64):haxe.Int64 {
        this.maxi = (v : stdgo.GoInt64);
        return v;
    }
    public var mini(get, set) : haxe.Int64;
    function get_mini():haxe.Int64 return this.mini;
    function set_mini(v:haxe.Int64):haxe.Int64 {
        this.mini = (v : stdgo.GoInt64);
        return v;
    }
    public var maxu(get, set) : haxe.UInt64;
    function get_maxu():haxe.UInt64 return this.maxu;
    function set_maxu(v:haxe.UInt64):haxe.UInt64 {
        this.maxu = (v : stdgo.GoUInt64);
        return v;
    }
    public var maxf(get, set) : StdTypes.Float;
    function get_maxf():StdTypes.Float return this.maxf;
    function set_maxf(v:StdTypes.Float):StdTypes.Float {
        this.maxf = (v : stdgo.GoFloat64);
        return v;
    }
    public var minf(get, set) : StdTypes.Float;
    function get_minf():StdTypes.Float return this.minf;
    function set_minf(v:StdTypes.Float):StdTypes.Float {
        this.minf = (v : stdgo.GoFloat64);
        return v;
    }
    public var maxc(get, set) : stdgo.GoComplex128;
    function get_maxc():stdgo.GoComplex128 return this.maxc;
    function set_maxc(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.maxc = (v : stdgo.GoComplex128);
        return v;
    }
    public var minc(get, set) : stdgo.GoComplex128;
    function get_minc():stdgo.GoComplex128 return this.minc;
    function set_minc(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.minc = (v : stdgo.GoComplex128);
        return v;
    }
    public function new(?maxi:haxe.Int64, ?mini:haxe.Int64, ?maxu:haxe.UInt64, ?maxf:StdTypes.Float, ?minf:StdTypes.Float, ?maxc:stdgo.GoComplex128, ?minc:stdgo.GoComplex128) this = new stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885((maxi : stdgo.GoInt64), (mini : stdgo.GoInt64), (maxu : stdgo.GoUInt64), (maxf : stdgo.GoFloat64), (minf : stdgo.GoFloat64), (maxc : stdgo.GoComplex128), (minc : stdgo.GoComplex128));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
