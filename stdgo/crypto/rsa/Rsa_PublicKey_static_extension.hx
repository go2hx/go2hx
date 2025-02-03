package stdgo.crypto.rsa;
class PublicKey_static_extension {
    static public function equal(_pub:PublicKey, _x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>);
        return stdgo._internal.crypto.rsa.Rsa_PublicKey_static_extension.PublicKey_static_extension.equal(_pub, _x);
    }
    static public function size(_pub:PublicKey):StdTypes.Int {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>);
        return stdgo._internal.crypto.rsa.Rsa_PublicKey_static_extension.PublicKey_static_extension.size(_pub);
    }
}
