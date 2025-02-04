package stdgo._internal.crypto.elliptic;
@:structInit @:using(stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension) class T_nistCurve<Point> {
    public var _newPoint : () -> Dynamic = null;
    public var _params : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = (null : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
    public function new(?_newPoint:() -> Dynamic, ?_params:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>) {
        if (_newPoint != null) this._newPoint = _newPoint;
        if (_params != null) this._params = _params;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nistCurve(_newPoint, _params);
    }
}
