package stdgo.crypto.ecdsa;
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.T_nistCurve_static_extension) abstract T_nistCurve(stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve) from stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve to stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve {
    public var _newPoint(get, set) : () -> Dynamic;
    function get__newPoint():() -> Dynamic return () -> this._newPoint();
    function set__newPoint(v:() -> Dynamic):() -> Dynamic {
        this._newPoint = v;
        return v;
    }
    public var _curve(get, set) : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve;
    function get__curve():stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve return this._curve;
    function set__curve(v:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve):stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve {
        this._curve = v;
        return v;
    }
    public var n(get, set) : stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus;
    function get_n():stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus return this.n;
    function set_n(v:stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus):stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus {
        this.n = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return v;
    }
    public var _nMinus2(get, set) : Array<std.UInt>;
    function get__nMinus2():Array<std.UInt> return [for (i in this._nMinus2) i];
    function set__nMinus2(v:Array<std.UInt>):Array<std.UInt> {
        this._nMinus2 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_newPoint:() -> Dynamic, ?_curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, ?n:stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus, ?_nMinus2:Array<std.UInt>) this = new stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve(_newPoint, _curve, (n : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>), ([for (i in _nMinus2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
