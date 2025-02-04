package stdgo._internal.crypto.ecdsa;
@:keep @:allow(stdgo._internal.crypto.ecdsa.Ecdsa.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    @:tdfield
    static public function sign( _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _rand:stdgo._internal.io.Io_reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey> = _priv;
        return stdgo._internal.crypto.ecdsa.Ecdsa_signasn1.signASN1(_rand, _priv, _digest);
    }
    @:keep
    @:tdfield
    static public function equal( _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey> = _priv;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return (@:check2 (@:checkr _priv ?? throw "null pointer dereference").publicKey.equal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _xx ?? throw "null pointer dereference").publicKey) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>)))) && stdgo._internal.crypto.ecdsa.Ecdsa__bigintequal._bigIntEqual((@:checkr _priv ?? throw "null pointer dereference").d, (@:checkr _xx ?? throw "null pointer dereference").d) : Bool);
    }
    @:keep
    @:tdfield
    static public function public_( _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey> = _priv;
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _priv ?? throw "null pointer dereference").publicKey) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>)));
    }
    @:keep
    @:tdfield
    static public function eCDH( _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey> = _k;
        var _c = (stdgo._internal.crypto.ecdsa.Ecdsa__curvetoecdh._curveToECDH((@:checkr _k ?? throw "null pointer dereference").publicKey.curve) : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve);
        if (_c == null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: unsupported curve by crypto/ecdh" : stdgo.GoString)) };
        };
        var _size = (((@:check2r (@:checkr _k ?? throw "null pointer dereference").publicKey.curve.params().n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        if ((@:check2r (@:checkr _k ?? throw "null pointer dereference").d.bitLen() > (_size * (8 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("ecdsa: invalid private key" : stdgo.GoString)) };
        };
        return _c.newPrivateKey(@:check2r (@:checkr _k ?? throw "null pointer dereference").d.fillBytes((new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function scalarMult( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.scalarMult(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function scalarBaseMult( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.scalarBaseMult(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function params( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> return @:_5 __self__.params();
    @:embedded
    @:embeddededffieldsffun
    public static function isOnCurve( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool return @:_5 __self__.isOnCurve(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function double( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.double(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function add( __self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _3:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.add(_0, _1, _2, _3);
}
