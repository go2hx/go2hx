package stdgo._internal.crypto.elliptic;
@:structInit @:using(stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension) class T_p256Curve {
    @:embedded
    public var _nistCurve : stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>> = ({} : stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>>);
    public function new(?_nistCurve:stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>>) {
        if (_nistCurve != null) this._nistCurve = _nistCurve;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function add(_x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this._nistCurve.add(_x1, _y1, _x2, _y2);
    @:embedded
    public function combinedMult(px:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, py:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this._nistCurve.combinedMult(px, py, _s1, _s2);
    @:embedded
    public function double(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this._nistCurve.double(_x, _y);
    @:embedded
    public function isOnCurve(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return this._nistCurve.isOnCurve(_x, _y);
    @:embedded
    public function params():stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return this._nistCurve.params();
    @:embedded
    public function scalarBaseMult(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this._nistCurve.scalarBaseMult(__0);
    @:embedded
    public function scalarMult(bx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this._nistCurve.scalarMult(bx, by, _k);
    @:embedded
    public function unmarshal(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this._nistCurve.unmarshal(__0);
    @:embedded
    public function unmarshalCompressed(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this._nistCurve.unmarshalCompressed(__0);
    @:embedded
    public function _normalizeScalar(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return this._nistCurve._normalizeScalar(__0);
    @:embedded
    public function _pointFromAffine(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>; var _1 : stdgo.Error; } return this._nistCurve._pointFromAffine(_x, _y);
    @:embedded
    public function _pointToAffine(__0:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this._nistCurve._pointToAffine(__0);
    public function __copy__() {
        return new T_p256Curve(_nistCurve);
    }
}
