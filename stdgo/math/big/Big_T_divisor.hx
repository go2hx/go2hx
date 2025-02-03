package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_divisor_static_extension) abstract T_divisor(stdgo._internal.math.big.Big_T_divisor.T_divisor) from stdgo._internal.math.big.Big_T_divisor.T_divisor to stdgo._internal.math.big.Big_T_divisor.T_divisor {
    public var _bbb(get, set) : T_nat;
    function get__bbb():T_nat return this._bbb;
    function set__bbb(v:T_nat):T_nat {
        this._bbb = v;
        return v;
    }
    public var _nbits(get, set) : StdTypes.Int;
    function get__nbits():StdTypes.Int return this._nbits;
    function set__nbits(v:StdTypes.Int):StdTypes.Int {
        this._nbits = (v : stdgo.GoInt);
        return v;
    }
    public var _ndigits(get, set) : StdTypes.Int;
    function get__ndigits():StdTypes.Int return this._ndigits;
    function set__ndigits(v:StdTypes.Int):StdTypes.Int {
        this._ndigits = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_bbb:T_nat, ?_nbits:StdTypes.Int, ?_ndigits:StdTypes.Int) this = new stdgo._internal.math.big.Big_T_divisor.T_divisor(_bbb, (_nbits : stdgo.GoInt), (_ndigits : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
