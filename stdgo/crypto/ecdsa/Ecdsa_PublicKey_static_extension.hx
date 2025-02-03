package stdgo.crypto.ecdsa;
class PublicKey_static_extension {
    static public function equal(_pub:PublicKey, _x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension.equal(_pub, _x);
    }
    static public function eCDH(_k:PublicKey):stdgo.Tuple<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey, stdgo.Error> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension.eCDH(_k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarMult(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_, _2:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension.scalarMult(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarBaseMult(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension.scalarBaseMult(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function params(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey):stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams {
        return stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension.params(__self__);
    }
    public static function isOnCurve(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension.isOnCurve(__self__, _0, _1);
    }
    public static function double(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension.double(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function add(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_, _2:stdgo._internal.math.big.Big_Int_.Int_, _3:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension.add(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
