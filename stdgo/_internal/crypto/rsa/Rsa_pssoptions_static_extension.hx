package stdgo._internal.crypto.rsa;
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PSSOptions_asInterface) class PSSOptions_static_extension {
    @:keep
    @:tdfield
    static public function _saltLength( _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):stdgo.GoInt {
        @:recv var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions> = _opts;
        if ((_opts == null || (_opts : Dynamic).__nil__)) {
            return (0 : stdgo.GoInt);
        };
        return (@:checkr _opts ?? throw "null pointer dereference").saltLength;
    }
    @:keep
    @:tdfield
    static public function hashFunc( _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):stdgo._internal.crypto.Crypto_hash.Hash {
        @:recv var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions> = _opts;
        return (@:checkr _opts ?? throw "null pointer dereference").hash;
    }
}
