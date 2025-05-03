package stdgo._internal.crypto.rsa;
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PSSOptions_asInterface) class PSSOptions_static_extension {
    @:keep
    @:tdfield
    static public function _saltLength( _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):stdgo.GoInt {
        @:recv var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions> = _opts;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L275"
        if (({
            final value = _opts;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L276"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L278"
        return (@:checkr _opts ?? throw "null pointer dereference").saltLength;
    }
    @:keep
    @:tdfield
    static public function hashFunc( _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):stdgo._internal.crypto.Crypto_hash.Hash {
        @:recv var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions> = _opts;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L271"
        return (@:checkr _opts ?? throw "null pointer dereference").hash;
    }
}
