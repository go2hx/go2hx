package stdgo.strconv;
@:structInit @:using(stdgo.strconv.Strconv.T_decimalSlice_static_extension) abstract T_decimalSlice(stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice) from stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice to stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice {
    public var _d(get, set) : Array<std.UInt>;
    function get__d():Array<std.UInt> return [for (i in this._d) i];
    function set__d(v:Array<std.UInt>):Array<std.UInt> {
        this._d = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
    public function new(?_d:Array<std.UInt>, ?_nd:StdTypes.Int, ?_dp:StdTypes.Int) this = new stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice(([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_nd : stdgo.GoInt), (_dp : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
