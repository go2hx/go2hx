package stdgo.crypto.ed25519;
class Options_static_extension {
    static public function hashFunc(_o:Options):stdgo._internal.crypto.Crypto_Hash.Hash {
        final _o = (_o : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_Options.Options>);
        return stdgo._internal.crypto.ed25519.Ed25519_Options_static_extension.Options_static_extension.hashFunc(_o);
    }
}
