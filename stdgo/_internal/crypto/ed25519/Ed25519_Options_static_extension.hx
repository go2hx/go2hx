package stdgo._internal.crypto.ed25519;
@:keep @:allow(stdgo._internal.crypto.ed25519.Ed25519.Options_asInterface) class Options_static_extension {
    @:keep
    static public function hashFunc( _o:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_Options.Options>):stdgo._internal.crypto.Crypto_Hash.Hash {
        @:recv var _o:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_Options.Options> = _o;
        return _o.hash;
    }
}
