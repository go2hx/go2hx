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
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension) class PrivateKey {
    @:embedded
    public var publicKey : stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey = ({} : stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey);
    public var d : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var primes : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
    public var precomputed : stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues = ({} : stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues);
    public function new(?publicKey:stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey, ?d:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?primes:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>, ?precomputed:stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues) {
        if (publicKey != null) this.publicKey = publicKey;
        if (d != null) this.d = d;
        if (primes != null) this.primes = primes;
        if (precomputed != null) this.precomputed = precomputed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var size(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt return @:check32 this.publicKey.size;
    public function __copy__() {
        return new PrivateKey(publicKey, d, primes, precomputed);
    }
}
