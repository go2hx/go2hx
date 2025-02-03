package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.Alpha_static_extension) abstract Alpha(stdgo._internal.image.color.Color_Alpha.Alpha) from stdgo._internal.image.color.Color_Alpha.Alpha to stdgo._internal.image.color.Color_Alpha.Alpha {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.image.color.Color_Alpha.Alpha((a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
