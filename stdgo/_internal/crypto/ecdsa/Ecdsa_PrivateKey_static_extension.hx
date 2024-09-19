package stdgo._internal.crypto.ecdsa;
@:keep @:allow(stdgo._internal.crypto.ecdsa.Ecdsa.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    static public function sign( _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _rand:stdgo._internal.io.Io_Reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey> = _priv;
        return stdgo._internal.crypto.ecdsa.Ecdsa_signASN1.signASN1(_rand, _priv, _digest);
    }
    @:keep
    static public function equal( _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey> = _priv;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return (_priv.publicKey.equal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_xx.publicKey) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>)))) && stdgo._internal.crypto.ecdsa.Ecdsa__bigIntEqual._bigIntEqual(_priv.d, _xx.d) : Bool);
    }
    @:keep
    static public function public_( _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>):stdgo._internal.crypto.Crypto_PublicKey.PublicKey {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey> = _priv;
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_priv.publicKey) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>)));
    }
    @:keep
    static public function ecdh( _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey> = _k;
        var _c = (stdgo._internal.crypto.ecdsa.Ecdsa__curveToECDH._curveToECDH(_k.publicKey.curve) : _internal.crypto.ecdh.Ecdh_Curve.Curve);
        if (_c == null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: unsupported curve by crypto/ecdh" : stdgo.GoString)) };
        };
        var _size = (((_k.publicKey.curve.params().n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        if ((_k.d.bitLen() > (_size * (8 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: invalid private key" : stdgo.GoString)) };
        };
        return _c.newPrivateKey(_k.d.fillBytes((new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)));
    }
    @:embedded
    public static function scalarMult( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, bx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.scalarMult(bx, by, _k);
    @:embedded
    public static function scalarBaseMult( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.scalarBaseMult(__0);
    @:embedded
    public static function params( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return __self__.params();
    @:embedded
    public static function isOnCurve( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return __self__.isOnCurve(_x, _y);
    @:embedded
    public static function double( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.double(_x, _y);
    @:embedded
    public static function add( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.add(_x1, _y1, _x2, _y2);
}
