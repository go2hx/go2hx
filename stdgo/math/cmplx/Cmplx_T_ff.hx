package stdgo.math.cmplx;
@:structInit @:using(stdgo.math.cmplx.Cmplx.T_ff_static_extension) abstract T_ff(stdgo._internal.math.cmplx.Cmplx_T_ff.T_ff) from stdgo._internal.math.cmplx.Cmplx_T_ff.T_ff to stdgo._internal.math.cmplx.Cmplx_T_ff.T_ff {
    public var _r(get, set) : StdTypes.Float;
    function get__r():StdTypes.Float return this._r;
    function set__r(v:StdTypes.Float):StdTypes.Float {
        this._r = (v : stdgo.GoFloat64);
        return v;
    }
    public var _theta(get, set) : StdTypes.Float;
    function get__theta():StdTypes.Float return this._theta;
    function set__theta(v:StdTypes.Float):StdTypes.Float {
        this._theta = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_r:StdTypes.Float, ?_theta:StdTypes.Float) this = new stdgo._internal.math.cmplx.Cmplx_T_ff.T_ff((_r : stdgo.GoFloat64), (_theta : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
