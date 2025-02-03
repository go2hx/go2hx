package stdgo.crypto.ecdsa;
class PrivateKey_static_extension {
    static public function sign(_priv:PrivateKey, _rand:stdgo._internal.io.Io_Reader.Reader, _digest:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>);
        final _digest = ([for (i in _digest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.sign(_priv, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function equal(_priv:PrivateKey, _x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.equal(_priv, _x);
    }
    static public function public_(_priv:PrivateKey):stdgo._internal.crypto.Crypto_PublicKey.PublicKey {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.public_(_priv);
    }
    static public function eCDH(_k:PrivateKey):stdgo.Tuple<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey, stdgo.Error> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.eCDH(_k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarMult(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_, _2:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.scalarMult(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarBaseMult(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.scalarBaseMult(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function params(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey):stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams {
        return stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.params(__self__);
    }
    public static function isOnCurve(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.isOnCurve(__self__, _0, _1);
    }
    public static function double(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.double(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function add(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_, _2:stdgo._internal.math.big.Big_Int_.Int_, _3:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey_static_extension.PrivateKey_static_extension.add(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
