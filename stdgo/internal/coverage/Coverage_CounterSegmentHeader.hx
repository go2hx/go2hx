package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.CounterSegmentHeader_static_extension) abstract CounterSegmentHeader(stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader) from stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader to stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader {
    public var fcnEntries(get, set) : haxe.UInt64;
    function get_fcnEntries():haxe.UInt64 return this.fcnEntries;
    function set_fcnEntries(v:haxe.UInt64):haxe.UInt64 {
        this.fcnEntries = (v : stdgo.GoUInt64);
        return v;
    }
    public var strTabLen(get, set) : std.UInt;
    function get_strTabLen():std.UInt return this.strTabLen;
    function set_strTabLen(v:std.UInt):std.UInt {
        this.strTabLen = (v : stdgo.GoUInt32);
        return v;
    }
    public var argsLen(get, set) : std.UInt;
    function get_argsLen():std.UInt return this.argsLen;
    function set_argsLen(v:std.UInt):std.UInt {
        this.argsLen = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?fcnEntries:haxe.UInt64, ?strTabLen:std.UInt, ?argsLen:std.UInt) this = new stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader((fcnEntries : stdgo.GoUInt64), (strTabLen : stdgo.GoUInt32), (argsLen : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
