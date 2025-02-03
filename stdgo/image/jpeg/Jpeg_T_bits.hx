package stdgo.image.jpeg;
@:structInit @:using(stdgo.image.jpeg.Jpeg.T_bits_static_extension) abstract T_bits(stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits) from stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits to stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits {
    public var _a(get, set) : std.UInt;
    function get__a():std.UInt return this._a;
    function set__a(v:std.UInt):std.UInt {
        this._a = (v : stdgo.GoUInt32);
        return v;
    }
    public var _m(get, set) : std.UInt;
    function get__m():std.UInt return this._m;
    function set__m(v:std.UInt):std.UInt {
        this._m = (v : stdgo.GoUInt32);
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_a:std.UInt, ?_m:std.UInt, ?_n:StdTypes.Int) this = new stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits((_a : stdgo.GoUInt32), (_m : stdgo.GoUInt32), (_n : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
