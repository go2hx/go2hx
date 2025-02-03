package stdgo.crypto.dsa;
@:structInit @:using(stdgo.crypto.dsa.Dsa.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey) from stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey to stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey {
    public var parameters(get, set) : Parameters;
    function get_parameters():Parameters return this.parameters;
    function set_parameters(v:Parameters):Parameters {
        this.parameters = v;
        return v;
    }
    public var y(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_y():stdgo._internal.math.big.Big_Int_.Int_ return this.y;
    function set_y(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.y = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public function new(?parameters:Parameters, ?y:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey(parameters, (y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
