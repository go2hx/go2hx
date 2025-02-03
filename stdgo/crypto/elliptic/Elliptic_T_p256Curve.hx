package stdgo.crypto.elliptic;
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.T_p256Curve_static_extension) abstract T_p256Curve(stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve) from stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve to stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve {
    public var _nistCurve(get, set) : T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>;
    function get__nistCurve():T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point> return this._nistCurve;
    function set__nistCurve(v:T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>):T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point> {
        this._nistCurve = v;
        return v;
    }
    public function new(?_nistCurve:T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>) this = new stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve(_nistCurve);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
