package stdgo._internal.crypto.rsa;
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PSSOptions_asInterface) class PSSOptions_static_extension {
    @:keep
    static public function _saltLength( _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>):stdgo.GoInt {
        @:recv var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions> = _opts;
        if ((_opts == null || (_opts : Dynamic).__nil__)) {
            return (0 : stdgo.GoInt);
        };
        return _opts.saltLength;
    }
    @:keep
    static public function hashFunc( _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>):stdgo._internal.crypto.Crypto_Hash.Hash {
        @:recv var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions> = _opts;
        return _opts.hash;
    }
}
