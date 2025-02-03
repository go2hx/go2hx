package stdgo.internal.coverage.decodecounter;
@:structInit @:using(stdgo.internal.coverage.decodecounter.Decodecounter.FuncPayload_static_extension) abstract FuncPayload(stdgo._internal.internal.coverage.decodecounter.Decodecounter_FuncPayload.FuncPayload) from stdgo._internal.internal.coverage.decodecounter.Decodecounter_FuncPayload.FuncPayload to stdgo._internal.internal.coverage.decodecounter.Decodecounter_FuncPayload.FuncPayload {
    public var pkgIdx(get, set) : std.UInt;
    function get_pkgIdx():std.UInt return this.pkgIdx;
    function set_pkgIdx(v:std.UInt):std.UInt {
        this.pkgIdx = (v : stdgo.GoUInt32);
        return v;
    }
    public var funcIdx(get, set) : std.UInt;
    function get_funcIdx():std.UInt return this.funcIdx;
    function set_funcIdx(v:std.UInt):std.UInt {
        this.funcIdx = (v : stdgo.GoUInt32);
        return v;
    }
    public var counters(get, set) : Array<std.UInt>;
    function get_counters():Array<std.UInt> return [for (i in this.counters) i];
    function set_counters(v:Array<std.UInt>):Array<std.UInt> {
        this.counters = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?pkgIdx:std.UInt, ?funcIdx:std.UInt, ?counters:Array<std.UInt>) this = new stdgo._internal.internal.coverage.decodecounter.Decodecounter_FuncPayload.FuncPayload((pkgIdx : stdgo.GoUInt32), (funcIdx : stdgo.GoUInt32), ([for (i in counters) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
