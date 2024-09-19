package stdgo._internal.crypto.ecdsa;
@:structInit @:using(stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve_static_extension.T_nistCurve_static_extension) class T_nistCurve<Point> {
    public var _newPoint : () -> Dynamic = null;
    public var _curve : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = (null : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
    public var n : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
    public var _nMinus2 : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_newPoint:() -> Dynamic, ?_curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, ?n:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>, ?_nMinus2:stdgo.Slice<stdgo.GoUInt8>) {
        if (_newPoint != null) this._newPoint = _newPoint;
        if (_curve != null) this._curve = _curve;
        if (n != null) this.n = n;
        if (_nMinus2 != null) this._nMinus2 = _nMinus2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nistCurve<Point>(_newPoint, _curve, n, _nMinus2);
    }
}
