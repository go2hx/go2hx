package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_minimizeArgs_static_extension) abstract T_minimizeArgs(stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs) from stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs to stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs {
    public var timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_timeout():stdgo._internal.time.Time_Duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.timeout = v;
        return v;
    }
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = (v : stdgo.GoInt64);
        return v;
    }
    public var keepCoverage(get, set) : Array<std.UInt>;
    function get_keepCoverage():Array<std.UInt> return [for (i in this.keepCoverage) i];
    function set_keepCoverage(v:Array<std.UInt>):Array<std.UInt> {
        this.keepCoverage = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = (v : stdgo.GoInt);
        return v;
    }
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?limit:haxe.Int64, ?keepCoverage:Array<std.UInt>, ?index:StdTypes.Int) this = new stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs(timeout, (limit : stdgo.GoInt64), ([for (i in keepCoverage) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (index : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
