package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.Gray_static_extension) abstract Gray(stdgo._internal.image.color.Color_Gray.Gray) from stdgo._internal.image.color.Color_Gray.Gray to stdgo._internal.image.color.Color_Gray.Gray {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?y:std.UInt) this = new stdgo._internal.image.color.Color_Gray.Gray((y : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
