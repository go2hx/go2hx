package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzArgs_static_extension) abstract T_fuzzArgs(stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs to stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs {
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
    public var warmup(get, set) : Bool;
    function get_warmup():Bool return this.warmup;
    function set_warmup(v:Bool):Bool {
        this.warmup = v;
        return v;
    }
    public var coverageData(get, set) : Array<std.UInt>;
    function get_coverageData():Array<std.UInt> return [for (i in this.coverageData) i];
    function set_coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this.coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?limit:haxe.Int64, ?warmup:Bool, ?coverageData:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs(timeout, (limit : stdgo.GoInt64), warmup, ([for (i in coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
