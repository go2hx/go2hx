package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import _internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.ed25519.Ed25519_Options_static_extension.Options_static_extension) class Options {
    public var hash : stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
    public var context : stdgo.GoString = "";
    public function new(?hash:stdgo._internal.crypto.Crypto_Hash.Hash, ?context:stdgo.GoString) {
        if (hash != null) this.hash = hash;
        if (context != null) this.context = context;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(hash, context);
    }
}
