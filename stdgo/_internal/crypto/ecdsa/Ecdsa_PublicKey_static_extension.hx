package stdgo._internal.crypto.ecdsa;
@:keep @:allow(stdgo._internal.crypto.ecdsa.Ecdsa.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    static public function equal( _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>, _x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        @:recv var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = _pub;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return ((stdgo._internal.crypto.ecdsa.Ecdsa__bigIntEqual._bigIntEqual(_pub.x, _xx.x) && stdgo._internal.crypto.ecdsa.Ecdsa__bigIntEqual._bigIntEqual(_pub.y, _xx.y) : Bool) && (stdgo.Go.toInterface(_pub.curve) == stdgo.Go.toInterface(_xx.curve)) : Bool);
    }
    @:keep
    static public function ecdh( _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; } {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = _k;
        var _c = (stdgo._internal.crypto.ecdsa.Ecdsa__curveToECDH._curveToECDH(_k.curve) : _internal.crypto.ecdh.Ecdh_Curve.Curve);
        if (_c == null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: unsupported curve by crypto/ecdh" : stdgo.GoString)) };
        };
        if (!_k.curve.isOnCurve(_k.x, _k.y)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: invalid public key" : stdgo.GoString)) };
        };
        return _c.newPublicKey(stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal(_k.curve, _k.x, _k.y));
    }
    @:embedded
    public static function scalarMult( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, bx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.scalarMult(bx, by, _k);
    @:embedded
    public static function scalarBaseMult( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.scalarBaseMult(__0);
    @:embedded
    public static function params( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return __self__.params();
    @:embedded
    public static function isOnCurve( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return __self__.isOnCurve(_x, _y);
    @:embedded
    public static function double( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.double(_x, _y);
    @:embedded
    public static function add( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.add(_x1, _y1, _x2, _y2);
}
