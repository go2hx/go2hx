package stdgo.crypto.ecdh;
class PublicKey_static_extension {
    static public function curve(_k:PublicKey):Curve {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_PublicKey_static_extension.PublicKey_static_extension.curve(_k);
    }
    static public function equal(_k:PublicKey, _x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_PublicKey_static_extension.PublicKey_static_extension.equal(_k, _x);
    }
    static public function bytes(_k:PublicKey):Array<std.UInt> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        return [for (i in stdgo._internal.crypto.ecdh.Ecdh_PublicKey_static_extension.PublicKey_static_extension.bytes(_k)) i];
    }
}
