package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_dsaAlgorithmParameters_static_extension) abstract T_dsaAlgorithmParameters(stdgo._internal.crypto.x509.X509_T_dsaAlgorithmParameters.T_dsaAlgorithmParameters) from stdgo._internal.crypto.x509.X509_T_dsaAlgorithmParameters.T_dsaAlgorithmParameters to stdgo._internal.crypto.x509.X509_T_dsaAlgorithmParameters.T_dsaAlgorithmParameters {
    public var p(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_p():stdgo._internal.math.big.Big_Int_.Int_ return this.p;
    function set_p(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.p = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var q(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_q():stdgo._internal.math.big.Big_Int_.Int_ return this.q;
    function set_q(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.q = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var g(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_g():stdgo._internal.math.big.Big_Int_.Int_ return this.g;
    function set_g(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.g = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public function new(?p:stdgo._internal.math.big.Big_Int_.Int_, ?q:stdgo._internal.math.big.Big_Int_.Int_, ?g:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.x509.X509_T_dsaAlgorithmParameters.T_dsaAlgorithmParameters((p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (q : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (g : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
