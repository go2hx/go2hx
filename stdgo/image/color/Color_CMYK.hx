package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.CMYK_static_extension) abstract CMYK(stdgo._internal.image.color.Color_CMYK.CMYK) from stdgo._internal.image.color.Color_CMYK.CMYK to stdgo._internal.image.color.Color_CMYK.CMYK {
    public var c(get, set) : std.UInt;
    function get_c():std.UInt return this.c;
    function set_c(v:std.UInt):std.UInt {
        this.c = (v : stdgo.GoUInt8);
        return v;
    }
    public var m(get, set) : std.UInt;
    function get_m():std.UInt return this.m;
    function set_m(v:std.UInt):std.UInt {
        this.m = (v : stdgo.GoUInt8);
        return v;
    }
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = (v : stdgo.GoUInt8);
        return v;
    }
    public var k(get, set) : std.UInt;
    function get_k():std.UInt return this.k;
    function set_k(v:std.UInt):std.UInt {
        this.k = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?c:std.UInt, ?m:std.UInt, ?y:std.UInt, ?k:std.UInt) this = new stdgo._internal.image.color.Color_CMYK.CMYK((c : stdgo.GoUInt8), (m : stdgo.GoUInt8), (y : stdgo.GoUInt8), (k : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
