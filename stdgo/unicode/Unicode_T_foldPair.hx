package stdgo.unicode;
@:structInit @:using(stdgo.unicode.Unicode.T_foldPair_static_extension) abstract T_foldPair(stdgo._internal.unicode.Unicode_T_foldPair.T_foldPair) from stdgo._internal.unicode.Unicode_T_foldPair.T_foldPair to stdgo._internal.unicode.Unicode_T_foldPair.T_foldPair {
    public var from(get, set) : std.UInt;
    function get_from():std.UInt return this.from;
    function set_from(v:std.UInt):std.UInt {
        this.from = (v : stdgo.GoUInt16);
        return v;
    }
    public var to(get, set) : std.UInt;
    function get_to():std.UInt return this.to;
    function set_to(v:std.UInt):std.UInt {
        this.to = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?from:std.UInt, ?to:std.UInt) this = new stdgo._internal.unicode.Unicode_T_foldPair.T_foldPair((from : stdgo.GoUInt16), (to : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
