package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_minimizeResponse_static_extension) abstract T_minimizeResponse(stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse) from stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse to stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse {
    public var wroteToMem(get, set) : Bool;
    function get_wroteToMem():Bool return this.wroteToMem;
    function set_wroteToMem(v:Bool):Bool {
        this.wroteToMem = v;
        return v;
    }
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public var coverageData(get, set) : Array<std.UInt>;
    function get_coverageData():Array<std.UInt> return [for (i in this.coverageData) i];
    function set_coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this.coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var duration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_duration():stdgo._internal.time.Time_Duration.Duration return this.duration;
    function set_duration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.duration = v;
        return v;
    }
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?wroteToMem:Bool, ?err:String, ?coverageData:Array<std.UInt>, ?duration:stdgo._internal.time.Time_Duration.Duration, ?count:haxe.Int64) this = new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse(wroteToMem, (err : stdgo.GoString), ([for (i in coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), duration, (count : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
