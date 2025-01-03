package stdgo._internal.crypto.rsa;
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
    public function get_size():() -> stdgo.GoInt return @:check3 (this.publicKey ?? throw "null pointer derefrence").size;
    public function __copy__() {
        return new PrivateKey(publicKey, d, primes, precomputed);
    }
}
