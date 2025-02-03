package stdgo.unicode;
@:structInit @:using(stdgo.unicode.Unicode.Range32_static_extension) abstract Range32(stdgo._internal.unicode.Unicode_Range32.Range32) from stdgo._internal.unicode.Unicode_Range32.Range32 to stdgo._internal.unicode.Unicode_Range32.Range32 {
    public var lo(get, set) : std.UInt;
    function get_lo():std.UInt return this.lo;
    function set_lo(v:std.UInt):std.UInt {
        this.lo = (v : stdgo.GoUInt32);
        return v;
    }
    public var hi(get, set) : std.UInt;
    function get_hi():std.UInt return this.hi;
    function set_hi(v:std.UInt):std.UInt {
        this.hi = (v : stdgo.GoUInt32);
        return v;
    }
    public var stride(get, set) : std.UInt;
    function get_stride():std.UInt return this.stride;
    function set_stride(v:std.UInt):std.UInt {
        this.stride = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?lo:std.UInt, ?hi:std.UInt, ?stride:std.UInt) this = new stdgo._internal.unicode.Unicode_Range32.Range32((lo : stdgo.GoUInt32), (hi : stdgo.GoUInt32), (stride : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
