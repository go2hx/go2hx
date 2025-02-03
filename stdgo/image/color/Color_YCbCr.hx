package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.YCbCr_static_extension) abstract YCbCr(stdgo._internal.image.color.Color_YCbCr.YCbCr) from stdgo._internal.image.color.Color_YCbCr.YCbCr to stdgo._internal.image.color.Color_YCbCr.YCbCr {
    public var y(get, set) : std.UInt;
    function get_y():std.UInt return this.y;
    function set_y(v:std.UInt):std.UInt {
        this.y = (v : stdgo.GoUInt8);
        return v;
    }
    public var cb(get, set) : std.UInt;
    function get_cb():std.UInt return this.cb;
    function set_cb(v:std.UInt):std.UInt {
        this.cb = (v : stdgo.GoUInt8);
        return v;
    }
    public var cr(get, set) : std.UInt;
    function get_cr():std.UInt return this.cr;
    function set_cr(v:std.UInt):std.UInt {
        this.cr = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?y:std.UInt, ?cb:std.UInt, ?cr:std.UInt) this = new stdgo._internal.image.color.Color_YCbCr.YCbCr((y : stdgo.GoUInt8), (cb : stdgo.GoUInt8), (cr : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
