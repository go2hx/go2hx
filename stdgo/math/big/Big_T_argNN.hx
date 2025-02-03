package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_argNN_static_extension) abstract T_argNN(stdgo._internal.math.big.Big_T_argNN.T_argNN) from stdgo._internal.math.big.Big_T_argNN.T_argNN to stdgo._internal.math.big.Big_T_argNN.T_argNN {
    public var _z(get, set) : T_nat;
    function get__z():T_nat return this._z;
    function set__z(v:T_nat):T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : T_nat;
    function get__x():T_nat return this._x;
    function set__x(v:T_nat):T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : T_nat;
    function get__y():T_nat return this._y;
    function set__y(v:T_nat):T_nat {
        this._y = v;
        return v;
    }
    public function new(?_z:T_nat, ?_x:T_nat, ?_y:T_nat) this = new stdgo._internal.math.big.Big_T_argNN.T_argNN(_z, _x, _y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
