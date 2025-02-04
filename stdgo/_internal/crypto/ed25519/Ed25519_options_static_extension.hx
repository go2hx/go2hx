package stdgo._internal.crypto.ed25519;
@:keep @:allow(stdgo._internal.crypto.ed25519.Ed25519.Options_asInterface) class Options_static_extension {
    @:keep
    @:tdfield
    static public function hashFunc( _o:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>):stdgo._internal.crypto.Crypto_hash.Hash {
        @:recv var _o:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options> = _o;
        return (@:checkr _o ?? throw "null pointer dereference").hash;
    }
}
