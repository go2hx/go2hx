package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.Rat_static_extension) abstract Rat(stdgo._internal.math.big.Big_Rat.Rat) from stdgo._internal.math.big.Big_Rat.Rat to stdgo._internal.math.big.Big_Rat.Rat {
    public var _a(get, set) : Int_;
    function get__a():Int_ return this._a;
    function set__a(v:Int_):Int_ {
        this._a = v;
        return v;
    }
    public var _b(get, set) : Int_;
    function get__b():Int_ return this._b;
    function set__b(v:Int_):Int_ {
        this._b = v;
        return v;
    }
    public function new(?_a:Int_, ?_b:Int_) this = new stdgo._internal.math.big.Big_Rat.Rat(_a, _b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
