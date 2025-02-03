package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_decimal_static_extension) abstract T_decimal(stdgo._internal.math.big.Big_T_decimal.T_decimal) from stdgo._internal.math.big.Big_T_decimal.T_decimal to stdgo._internal.math.big.Big_T_decimal.T_decimal {
    public var _mant(get, set) : Array<std.UInt>;
    function get__mant():Array<std.UInt> return [for (i in this._mant) i];
    function set__mant(v:Array<std.UInt>):Array<std.UInt> {
        this._mant = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _exp(get, set) : StdTypes.Int;
    function get__exp():StdTypes.Int return this._exp;
    function set__exp(v:StdTypes.Int):StdTypes.Int {
        this._exp = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_mant:Array<std.UInt>, ?_exp:StdTypes.Int) this = new stdgo._internal.math.big.Big_T_decimal.T_decimal(([for (i in _mant) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_exp : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
