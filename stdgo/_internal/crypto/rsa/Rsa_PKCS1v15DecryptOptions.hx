package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions_static_extension.PKCS1v15DecryptOptions_static_extension) class PKCS1v15DecryptOptions {
    public var sessionKeyLen : stdgo.GoInt = 0;
    public function new(?sessionKeyLen:stdgo.GoInt) {
        if (sessionKeyLen != null) this.sessionKeyLen = sessionKeyLen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PKCS1v15DecryptOptions(sessionKeyLen);
    }
}
