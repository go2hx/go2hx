package stdgo.crypto.rsa;
@:structInit @:using(stdgo.crypto.rsa.Rsa.CRTValue_static_extension) abstract CRTValue(stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue) from stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue to stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue {
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
    public var r(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_r():stdgo._internal.math.big.Big_Int_.Int_ return this.r;
    function set_r(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.r = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public function new(?exp:stdgo._internal.math.big.Big_Int_.Int_, ?coeff:stdgo._internal.math.big.Big_Int_.Int_, ?r:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue((exp : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (coeff : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (r : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
