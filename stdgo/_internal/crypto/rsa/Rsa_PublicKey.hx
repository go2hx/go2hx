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
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_PublicKey_static_extension.PublicKey_static_extension) class PublicKey {
    public var n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var e : stdgo.GoInt = 0;
    public function new(?n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?e:stdgo.GoInt) {
        if (n != null) this.n = n;
        if (e != null) this.e = e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(n, e);
    }
}
