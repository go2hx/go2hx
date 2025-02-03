package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.Int__static_extension) abstract Int_(stdgo._internal.math.big.Big_Int_.Int_) from stdgo._internal.math.big.Big_Int_.Int_ to stdgo._internal.math.big.Big_Int_.Int_ {
    public var _neg(get, set) : Bool;
    function get__neg():Bool return this._neg;
    function set__neg(v:Bool):Bool {
        this._neg = v;
        return v;
    }
    public var _abs(get, set) : T_nat;
    function get__abs():T_nat return this._abs;
    function set__abs(v:T_nat):T_nat {
        this._abs = v;
        return v;
    }
    public function new(?_neg:Bool, ?_abs:T_nat) this = new stdgo._internal.math.big.Big_Int_.Int_(_neg, _abs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
