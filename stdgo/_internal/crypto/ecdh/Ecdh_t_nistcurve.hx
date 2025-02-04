package stdgo._internal.crypto.ecdh;
@:structInit @:using(stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve_static_extension.T_nistCurve_static_extension) class T_nistCurve<Point> {
    public var _name : stdgo.GoString = "";
    public var _newPoint : () -> Dynamic = null;
    public var _scalarOrder : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_name:stdgo.GoString, ?_newPoint:() -> Dynamic, ?_scalarOrder:stdgo.Slice<stdgo.GoUInt8>) {
        if (_name != null) this._name = _name;
        if (_newPoint != null) this._newPoint = _newPoint;
        if (_scalarOrder != null) this._scalarOrder = _scalarOrder;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nistCurve(_name, _newPoint, _scalarOrder);
    }
}
