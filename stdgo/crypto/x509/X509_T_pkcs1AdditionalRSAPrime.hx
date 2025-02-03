package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_pkcs1AdditionalRSAPrime_static_extension) abstract T_pkcs1AdditionalRSAPrime(stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime) from stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime to stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime {
    public var prime(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_prime():stdgo._internal.math.big.Big_Int_.Int_ return this.prime;
    function set_prime(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.prime = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var exp(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_exp():stdgo._internal.math.big.Big_Int_.Int_ return this.exp;
    function set_exp(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.exp = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var coeff(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_coeff():stdgo._internal.math.big.Big_Int_.Int_ return this.coeff;
    function set_coeff(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.coeff = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public function new(?prime:stdgo._internal.math.big.Big_Int_.Int_, ?exp:stdgo._internal.math.big.Big_Int_.Int_, ?coeff:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime((prime : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (exp : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (coeff : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
