package stdgo.unicode;
@:structInit @:using(stdgo.unicode.Unicode.CaseRange_static_extension) abstract CaseRange(stdgo._internal.unicode.Unicode_CaseRange.CaseRange) from stdgo._internal.unicode.Unicode_CaseRange.CaseRange to stdgo._internal.unicode.Unicode_CaseRange.CaseRange {
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
    public var delta(get, set) : T_d;
    function get_delta():T_d return this.delta;
    function set_delta(v:T_d):T_d {
        this.delta = v;
        return v;
    }
    public function new(?lo:std.UInt, ?hi:std.UInt, ?delta:T_d) this = new stdgo._internal.unicode.Unicode_CaseRange.CaseRange((lo : stdgo.GoUInt32), (hi : stdgo.GoUInt32), delta);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
