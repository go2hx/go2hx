package stdgo.crypto.ecdh;
class PrivateKey_static_extension {
    static public function public_(_k:PrivateKey):stdgo._internal.crypto.Crypto_PublicKey.PublicKey {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_PrivateKey_static_extension.PrivateKey_static_extension.public_(_k);
    }
    static public function publicKey(_k:PrivateKey):PublicKey {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_PrivateKey_static_extension.PrivateKey_static_extension.publicKey(_k);
    }
    static public function curve(_k:PrivateKey):Curve {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_PrivateKey_static_extension.PrivateKey_static_extension.curve(_k);
    }
    static public function equal(_k:PrivateKey, _x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_PrivateKey_static_extension.PrivateKey_static_extension.equal(_k, _x);
    }
    static public function bytes(_k:PrivateKey):Array<std.UInt> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return [for (i in stdgo._internal.crypto.ecdh.Ecdh_PrivateKey_static_extension.PrivateKey_static_extension.bytes(_k)) i];
    }
    static public function eCDH(_k:PrivateKey, _remote:PublicKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        final _remote = (_remote : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_PrivateKey_static_extension.PrivateKey_static_extension.eCDH(_k, _remote);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
