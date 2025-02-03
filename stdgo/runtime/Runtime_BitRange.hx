package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.BitRange_static_extension) abstract BitRange(stdgo._internal.runtime.Runtime_BitRange.BitRange) from stdgo._internal.runtime.Runtime_BitRange.BitRange to stdgo._internal.runtime.Runtime_BitRange.BitRange {
    public var i(get, set) : std.UInt;
    function get_i():std.UInt return this.i;
    function set_i(v:std.UInt):std.UInt {
        this.i = (v : stdgo.GoUInt);
        return v;
    }
    public var n(get, set) : std.UInt;
    function get_n():std.UInt return this.n;
    function set_n(v:std.UInt):std.UInt {
        this.n = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?i:std.UInt, ?n:std.UInt) this = new stdgo._internal.runtime.Runtime_BitRange.BitRange((i : stdgo.GoUInt), (n : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
