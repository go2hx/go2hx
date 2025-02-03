package stdgo.crypto.ecdsa;
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey) from stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey to stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey {
    public var curve(get, set) : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve;
    function get_curve():stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve return this.curve;
    function set_curve(v:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve):stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve {
        this.curve = v;
        return v;
    }
    public var x(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_x():stdgo._internal.math.big.Big_Int_.Int_ return this.x;
    function set_x(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.x = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var y(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_y():stdgo._internal.math.big.Big_Int_.Int_ return this.y;
    function set_y(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.y = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public function new(?curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, ?x:stdgo._internal.math.big.Big_Int_.Int_, ?y:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey(curve, (x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
