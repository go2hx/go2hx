package stdgo.unicode.utf8;
@:structInit @:using(stdgo.unicode.utf8.Utf8.T_acceptRange_static_extension) abstract T_acceptRange(stdgo._internal.unicode.utf8.Utf8_T_acceptRange.T_acceptRange) from stdgo._internal.unicode.utf8.Utf8_T_acceptRange.T_acceptRange to stdgo._internal.unicode.utf8.Utf8_T_acceptRange.T_acceptRange {
    public var _lo(get, set) : std.UInt;
    function get__lo():std.UInt return this._lo;
    function set__lo(v:std.UInt):std.UInt {
        this._lo = (v : stdgo.GoUInt8);
        return v;
    }
    public var _hi(get, set) : std.UInt;
    function get__hi():std.UInt return this._hi;
    function set__hi(v:std.UInt):std.UInt {
        this._hi = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_lo:std.UInt, ?_hi:std.UInt) this = new stdgo._internal.unicode.utf8.Utf8_T_acceptRange.T_acceptRange((_lo : stdgo.GoUInt8), (_hi : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
