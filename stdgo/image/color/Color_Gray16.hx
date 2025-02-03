package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.Gray16_static_extension) abstract Gray16(stdgo._internal.image.color.Color_Gray16.Gray16) from stdgo._internal.image.color.Color_Gray16.Gray16 to stdgo._internal.image.color.Color_Gray16.Gray16 {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?y:std.UInt) this = new stdgo._internal.image.color.Color_Gray16.Gray16((y : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
