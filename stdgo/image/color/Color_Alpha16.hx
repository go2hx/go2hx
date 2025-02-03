package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.Alpha16_static_extension) abstract Alpha16(stdgo._internal.image.color.Color_Alpha16.Alpha16) from stdgo._internal.image.color.Color_Alpha16.Alpha16 to stdgo._internal.image.color.Color_Alpha16.Alpha16 {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.image.color.Color_Alpha16.Alpha16((a : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
