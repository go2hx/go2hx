package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import _internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PSSOptions_asInterface) class PSSOptions_static_extension {
    @:keep
    @:tdfield
    static public function _saltLength( _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>):stdgo.GoInt {
        @:recv var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions> = _opts;
        if ((_opts == null || (_opts : Dynamic).__nil__)) {
            return (0 : stdgo.GoInt);
        };
        return (@:checkr _opts ?? throw "null pointer dereference").saltLength;
    }
    @:keep
    @:tdfield
    static public function hashFunc( _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>):stdgo._internal.crypto.Crypto_Hash.Hash {
        @:recv var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions> = _opts;
        return (@:checkr _opts ?? throw "null pointer dereference").hash;
    }
}
