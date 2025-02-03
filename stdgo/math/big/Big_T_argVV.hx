package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_argVV_static_extension) abstract T_argVV(stdgo._internal.math.big.Big_T_argVV.T_argVV) from stdgo._internal.math.big.Big_T_argVV.T_argVV to stdgo._internal.math.big.Big_T_argVV.T_argVV {
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
    public var _c(get, set) : Word;
    function get__c():Word return this._c;
    function set__c(v:Word):Word {
        this._c = v;
        return v;
    }
    public function new(?_z:T_nat, ?_x:T_nat, ?_y:T_nat, ?_c:Word) this = new stdgo._internal.math.big.Big_T_argVV.T_argVV(_z, _x, _y, _c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
