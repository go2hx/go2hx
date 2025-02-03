package stdgo.unicode;
@:structInit @:using(stdgo.unicode.Unicode.Range16_static_extension) abstract Range16(stdgo._internal.unicode.Unicode_Range16.Range16) from stdgo._internal.unicode.Unicode_Range16.Range16 to stdgo._internal.unicode.Unicode_Range16.Range16 {
    public var lo(get, set) : std.UInt;
    function get_lo():std.UInt return this.lo;
    function set_lo(v:std.UInt):std.UInt {
        this.lo = (v : stdgo.GoUInt16);
        return v;
    }
    public var hi(get, set) : std.UInt;
    function get_hi():std.UInt return this.hi;
    function set_hi(v:std.UInt):std.UInt {
        this.hi = (v : stdgo.GoUInt16);
        return v;
    }
    public var stride(get, set) : std.UInt;
    function get_stride():std.UInt return this.stride;
    function set_stride(v:std.UInt):std.UInt {
        this.stride = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?lo:std.UInt, ?hi:std.UInt, ?stride:std.UInt) this = new stdgo._internal.unicode.Unicode_Range16.Range16((lo : stdgo.GoUInt16), (hi : stdgo.GoUInt16), (stride : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
