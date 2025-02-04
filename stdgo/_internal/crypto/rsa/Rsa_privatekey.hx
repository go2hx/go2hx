package stdgo._internal.crypto.rsa;
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension) class PrivateKey {
    @:embedded
    public var publicKey : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey = ({} : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey);
    public var d : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var primes : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
    public var precomputed : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues = ({} : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues);
    public function new(?publicKey:stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey, ?d:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?primes:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>, ?precomputed:stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues) {
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
