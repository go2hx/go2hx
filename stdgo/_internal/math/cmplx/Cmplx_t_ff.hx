package stdgo._internal.math.cmplx;
@:structInit @:using(stdgo._internal.math.cmplx.Cmplx_t_ff_static_extension.T_ff_static_extension) class T_ff {
    public var _r : stdgo.GoFloat64 = 0;
    public var _theta : stdgo.GoFloat64 = 0;
    public function new(?_r:stdgo.GoFloat64, ?_theta:stdgo.GoFloat64) {
        if (_r != null) this._r = _r;
        if (_theta != null) this._theta = _theta;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ff(_r, _theta);
    }
}
