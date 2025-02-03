package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.BenchmarkResult_static_extension) abstract BenchmarkResult(stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult) from stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult to stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult {
    public var n(get, set) : StdTypes.Int;
    function get_n():StdTypes.Int return this.n;
    function set_n(v:StdTypes.Int):StdTypes.Int {
        this.n = (v : stdgo.GoInt);
        return v;
    }
    public var t(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_t():stdgo._internal.time.Time_Duration.Duration return this.t;
    function set_t(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.t = v;
        return v;
    }
    public var bytes(get, set) : haxe.Int64;
    function get_bytes():haxe.Int64 return this.bytes;
    function set_bytes(v:haxe.Int64):haxe.Int64 {
        this.bytes = (v : stdgo.GoInt64);
        return v;
    }
    public var memAllocs(get, set) : haxe.UInt64;
    function get_memAllocs():haxe.UInt64 return this.memAllocs;
    function set_memAllocs(v:haxe.UInt64):haxe.UInt64 {
        this.memAllocs = (v : stdgo.GoUInt64);
        return v;
    }
    public var memBytes(get, set) : haxe.UInt64;
    function get_memBytes():haxe.UInt64 return this.memBytes;
    function set_memBytes(v:haxe.UInt64):haxe.UInt64 {
        this.memBytes = (v : stdgo.GoUInt64);
        return v;
    }
    public var extra(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>;
    function get_extra():stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64> return this.extra;
    function set_extra(v:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>):stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64> {
        this.extra = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>);
        return v;
    }
    public function new(?n:StdTypes.Int, ?t:stdgo._internal.time.Time_Duration.Duration, ?bytes:haxe.Int64, ?memAllocs:haxe.UInt64, ?memBytes:haxe.UInt64, ?extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>) this = new stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult((n : stdgo.GoInt), t, (bytes : stdgo.GoInt64), (memAllocs : stdgo.GoUInt64), (memBytes : stdgo.GoUInt64), (extra : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
