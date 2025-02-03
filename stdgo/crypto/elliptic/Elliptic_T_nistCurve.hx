package stdgo.crypto.elliptic;
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.T_nistCurve_static_extension) abstract T_nistCurve(stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve) from stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve to stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve {
    public var _newPoint(get, set) : () -> Dynamic;
    function get__newPoint():() -> Dynamic return () -> this._newPoint();
    function set__newPoint(v:() -> Dynamic):() -> Dynamic {
        this._newPoint = v;
        return v;
    }
    public var _params(get, set) : CurveParams;
    function get__params():CurveParams return this._params;
    function set__params(v:CurveParams):CurveParams {
        this._params = (v : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        return v;
    }
    public function new(?_newPoint:() -> Dynamic, ?_params:CurveParams) this = new stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve(_newPoint, (_params : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
