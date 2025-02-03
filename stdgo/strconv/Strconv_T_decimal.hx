package stdgo.strconv;
@:structInit @:using(stdgo.strconv.Strconv.T_decimal_static_extension) abstract T_decimal(stdgo._internal.strconv.Strconv_T_decimal.T_decimal) from stdgo._internal.strconv.Strconv_T_decimal.T_decimal to stdgo._internal.strconv.Strconv_T_decimal.T_decimal {
    public var _d(get, set) : haxe.ds.Vector<std.UInt>;
    function get__d():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._d) i]);
    function set__d(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._d = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nd(get, set) : StdTypes.Int;
    function get__nd():StdTypes.Int return this._nd;
    function set__nd(v:StdTypes.Int):StdTypes.Int {
        this._nd = (v : stdgo.GoInt);
        return v;
    }
    public var _dp(get, set) : StdTypes.Int;
    function get__dp():StdTypes.Int return this._dp;
    function set__dp(v:StdTypes.Int):StdTypes.Int {
        this._dp = (v : stdgo.GoInt);
        return v;
    }
    public var _neg(get, set) : Bool;
    function get__neg():Bool return this._neg;
    function set__neg(v:Bool):Bool {
        this._neg = v;
        return v;
    }
    public var _trunc(get, set) : Bool;
    function get__trunc():Bool return this._trunc;
    function set__trunc(v:Bool):Bool {
        this._trunc = v;
        return v;
    }
    public function new(?_d:haxe.ds.Vector<std.UInt>, ?_nd:StdTypes.Int, ?_dp:StdTypes.Int, ?_neg:Bool, ?_trunc:Bool) this = new stdgo._internal.strconv.Strconv_T_decimal.T_decimal(([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nd : stdgo.GoInt), (_dp : stdgo.GoInt), _neg, _trunc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
