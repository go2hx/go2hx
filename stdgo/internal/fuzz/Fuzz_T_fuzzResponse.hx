package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzResponse_static_extension) abstract T_fuzzResponse(stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse to stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse {
    public var totalDuration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_totalDuration():stdgo._internal.time.Time_Duration.Duration return this.totalDuration;
    function set_totalDuration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.totalDuration = v;
        return v;
    }
    public var interestingDuration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_interestingDuration():stdgo._internal.time.Time_Duration.Duration return this.interestingDuration;
    function set_interestingDuration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.interestingDuration = v;
        return v;
    }
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = (v : stdgo.GoInt64);
        return v;
    }
    public var coverageData(get, set) : Array<std.UInt>;
    function get_coverageData():Array<std.UInt> return [for (i in this.coverageData) i];
    function set_coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this.coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public var internalErr(get, set) : String;
    function get_internalErr():String return this.internalErr;
    function set_internalErr(v:String):String {
        this.internalErr = (v : stdgo.GoString);
        return v;
    }
    public function new(?totalDuration:stdgo._internal.time.Time_Duration.Duration, ?interestingDuration:stdgo._internal.time.Time_Duration.Duration, ?count:haxe.Int64, ?coverageData:Array<std.UInt>, ?err:String, ?internalErr:String) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse(totalDuration, interestingDuration, (count : stdgo.GoInt64), ([for (i in coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (err : stdgo.GoString), (internalErr : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
