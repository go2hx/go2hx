package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.NRGBA_static_extension) abstract NRGBA(stdgo._internal.image.color.Color_NRGBA.NRGBA) from stdgo._internal.image.color.Color_NRGBA.NRGBA to stdgo._internal.image.color.Color_NRGBA.NRGBA {
    public var r(get, set) : std.UInt;
    function get_r():std.UInt return this.r;
    function set_r(v:std.UInt):std.UInt {
        this.r = (v : stdgo.GoUInt8);
        return v;
    }
    public var g(get, set) : std.UInt;
    function get_g():std.UInt return this.g;
    function set_g(v:std.UInt):std.UInt {
        this.g = (v : stdgo.GoUInt8);
        return v;
    }
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt8);
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?r:std.UInt, ?g:std.UInt, ?b:std.UInt, ?a:std.UInt) this = new stdgo._internal.image.color.Color_NRGBA.NRGBA((r : stdgo.GoUInt8), (g : stdgo.GoUInt8), (b : stdgo.GoUInt8), (a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
