package stdgo._internal.crypto.ecdsa;
@:keep @:allow(stdgo._internal.crypto.ecdsa.Ecdsa.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    @:tdfield
    static public function equal( _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        @:recv var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = _pub;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return ((stdgo._internal.crypto.ecdsa.Ecdsa__bigintequal._bigIntEqual((@:checkr _pub ?? throw "null pointer dereference").x, (@:checkr _xx ?? throw "null pointer dereference").x) && stdgo._internal.crypto.ecdsa.Ecdsa__bigintequal._bigIntEqual((@:checkr _pub ?? throw "null pointer dereference").y, (@:checkr _xx ?? throw "null pointer dereference").y) : Bool) && (stdgo.Go.toInterface((@:checkr _pub ?? throw "null pointer dereference").curve) == stdgo.Go.toInterface((@:checkr _xx ?? throw "null pointer dereference").curve)) : Bool);
    }
    @:keep
    @:tdfield
    static public function eCDH( _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = _k;
        var _c = (stdgo._internal.crypto.ecdsa.Ecdsa__curvetoecdh._curveToECDH((@:checkr _k ?? throw "null pointer dereference").curve) : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve);
        if (_c == null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: unsupported curve by crypto/ecdh" : stdgo.GoString)) };
        };
        if (!(@:checkr _k ?? throw "null pointer dereference").curve.isOnCurve((@:checkr _k ?? throw "null pointer dereference").x, (@:checkr _k ?? throw "null pointer dereference").y)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: invalid public key" : stdgo.GoString)) };
        };
        return _c.newPublicKey(stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal((@:checkr _k ?? throw "null pointer dereference").curve, (@:checkr _k ?? throw "null pointer dereference").x, (@:checkr _k ?? throw "null pointer dereference").y));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function scalarMult( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.scalarMult(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function scalarBaseMult( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.scalarBaseMult(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function params( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> return @:_5 __self__.params();
    @:embedded
    @:embeddededffieldsffun
    public static function isOnCurve( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool return @:_5 __self__.isOnCurve(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function double( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.double(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function add( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _3:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.add(_0, _1, _2, _3);
}
