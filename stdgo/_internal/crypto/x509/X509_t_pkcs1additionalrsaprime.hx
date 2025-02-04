package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime_static_extension.T_pkcs1AdditionalRSAPrime_static_extension) class T_pkcs1AdditionalRSAPrime {
    public var prime : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var exp : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var coeff : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?prime:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?exp:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?coeff:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (prime != null) this.prime = prime;
        if (exp != null) this.exp = exp;
        if (coeff != null) this.coeff = coeff;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkcs1AdditionalRSAPrime(prime, exp, coeff);
    }
}
