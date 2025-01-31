package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import _internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.ed25519.Ed25519.Options_asInterface) class Options_static_extension {
    @:keep
    @:tdfield
    static public function hashFunc( _o:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_Options.Options>):stdgo._internal.crypto.Crypto_Hash.Hash {
        @:recv var _o:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_Options.Options> = _o;
        return (@:checkr _o ?? throw "null pointer dereference").hash;
    }
}
