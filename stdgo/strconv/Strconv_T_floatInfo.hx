package stdgo.strconv;
@:structInit @:using(stdgo.strconv.Strconv.T_floatInfo_static_extension) abstract T_floatInfo(stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo) from stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo to stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo {
    public var _mantbits(get, set) : std.UInt;
    function get__mantbits():std.UInt return this._mantbits;
    function set__mantbits(v:std.UInt):std.UInt {
        this._mantbits = (v : stdgo.GoUInt);
        return v;
    }
    public var _expbits(get, set) : std.UInt;
    function get__expbits():std.UInt return this._expbits;
    function set__expbits(v:std.UInt):std.UInt {
        this._expbits = (v : stdgo.GoUInt);
        return v;
    }
    public var _bias(get, set) : StdTypes.Int;
    function get__bias():StdTypes.Int return this._bias;
    function set__bias(v:StdTypes.Int):StdTypes.Int {
        this._bias = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_mantbits:std.UInt, ?_expbits:std.UInt, ?_bias:StdTypes.Int) this = new stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo((_mantbits : stdgo.GoUInt), (_expbits : stdgo.GoUInt), (_bias : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
