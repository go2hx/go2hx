package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_argWVW_static_extension) abstract T_argWVW(stdgo._internal.math.big.Big_T_argWVW.T_argWVW) from stdgo._internal.math.big.Big_T_argWVW.T_argWVW to stdgo._internal.math.big.Big_T_argWVW.T_argWVW {
    public var _z(get, set) : T_nat;
    function get__z():T_nat return this._z;
    function set__z(v:T_nat):T_nat {
        this._z = v;
        return v;
    }
    public var _xn(get, set) : Word;
    function get__xn():Word return this._xn;
    function set__xn(v:Word):Word {
        this._xn = v;
        return v;
    }
    public var _x(get, set) : T_nat;
    function get__x():T_nat return this._x;
    function set__x(v:T_nat):T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : Word;
    function get__y():Word return this._y;
    function set__y(v:Word):Word {
        this._y = v;
        return v;
    }
    public var _r(get, set) : Word;
    function get__r():Word return this._r;
    function set__r(v:Word):Word {
        this._r = v;
        return v;
    }
    public function new(?_z:T_nat, ?_xn:Word, ?_x:T_nat, ?_y:Word, ?_r:Word) this = new stdgo._internal.math.big.Big_T_argWVW.T_argWVW(_z, _xn, _x, _y, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
