package stdgo._internal.crypto.ecdsa;
@:structInit @:using(stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension) class PublicKey {
    @:embedded
    public var curve : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = (null : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
    public var x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public function new(?curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, ?x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) {
        if (curve != null) this.curve = curve;
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function add(_x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this.curve.add(_x1, _y1, _x2, _y2);
    @:embedded
    public function double(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this.curve.double(_x, _y);
    @:embedded
    public function isOnCurve(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return this.curve.isOnCurve(_x, _y);
    @:embedded
    public function params():stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return this.curve.params();
    @:embedded
    public function scalarBaseMult(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this.curve.scalarBaseMult(__0);
    @:embedded
    public function scalarMult(bx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this.curve.scalarMult(bx, by, _k);
    public function __copy__() {
        return new PublicKey(curve, x, y);
    }
}
