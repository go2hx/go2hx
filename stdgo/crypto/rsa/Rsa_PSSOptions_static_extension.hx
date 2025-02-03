package stdgo.crypto.rsa;
class PSSOptions_static_extension {
    static public function _saltLength(_opts:PSSOptions):StdTypes.Int {
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>);
        return stdgo._internal.crypto.rsa.Rsa_PSSOptions_static_extension.PSSOptions_static_extension._saltLength(_opts);
    }
    static public function hashFunc(_opts:PSSOptions):stdgo._internal.crypto.Crypto_Hash.Hash {
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>);
        return stdgo._internal.crypto.rsa.Rsa_PSSOptions_static_extension.PSSOptions_static_extension.hashFunc(_opts);
    }
}
