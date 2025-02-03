package stdgo.crypto.ed25519;
class PublicKey_static_extension {
    static public function equal(_pub:PublicKey, _x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        return stdgo._internal.crypto.ed25519.Ed25519_PublicKey_static_extension.PublicKey_static_extension.equal(_pub, _x);
    }
}
