package stdgo._internal.crypto.elliptic;
@:structInit @:using(stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension) class T_p256Curve {
    @:embedded
    public var _nistCurve : stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>> = ({} : stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>>);
    public function new(?_nistCurve:stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>>) {
        if (_nistCurve != null) this._nistCurve = _nistCurve;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var add(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_add():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check32 this._nistCurve.add;
    public var combinedMult(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_combinedMult():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check32 this._nistCurve.combinedMult;
    public var double(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_double():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check32 this._nistCurve.double;
    public var isOnCurve(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isOnCurve():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> Bool return @:check32 this._nistCurve.isOnCurve;
    public var params(get, never) : () -> stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>;
    @:embedded
    @:embeddededffieldsffun
    public function get_params():() -> stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> return @:check32 this._nistCurve.params;
    public var scalarBaseMult(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_scalarBaseMult():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check32 this._nistCurve.scalarBaseMult;
    public var scalarMult(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_scalarMult():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check32 this._nistCurve.scalarMult;
    public var unmarshal(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_unmarshal():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check32 this._nistCurve.unmarshal;
    public var unmarshalCompressed(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_unmarshalCompressed():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check32 this._nistCurve.unmarshalCompressed;
    public var _normalizeScalar(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get__normalizeScalar():stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this._nistCurve._normalizeScalar;
    public var _pointFromAffine(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__pointFromAffine():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } return @:check32 this._nistCurve._pointFromAffine;
    public var _pointToAffine(get, never) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get__pointToAffine():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check32 this._nistCurve._pointToAffine;
    public function __copy__() {
        return new T_p256Curve(_nistCurve);
    }
}
