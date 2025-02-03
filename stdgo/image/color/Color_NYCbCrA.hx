package stdgo.image.color;
@:structInit @:using(stdgo.image.color.Color.NYCbCrA_static_extension) abstract NYCbCrA(stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA) from stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA to stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA {
    public var yCbCr(get, set) : YCbCr;
    function get_yCbCr():YCbCr return this.yCbCr;
    function set_yCbCr(v:YCbCr):YCbCr {
        this.yCbCr = v;
        return v;
    }
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?yCbCr:YCbCr, ?a:std.UInt) this = new stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA(yCbCr, (a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
