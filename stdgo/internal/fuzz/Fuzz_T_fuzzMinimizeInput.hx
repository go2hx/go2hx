package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzMinimizeInput_static_extension) abstract T_fuzzMinimizeInput(stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput to stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput {
    public var _entry(get, set) : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry;
    function get__entry():stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry return this._entry;
    function set__entry(v:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry):stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry {
        this._entry = v;
        return v;
    }
    public var _crasherMsg(get, set) : String;
    function get__crasherMsg():String return this._crasherMsg;
    function set__crasherMsg(v:String):String {
        this._crasherMsg = (v : stdgo.GoString);
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = (v : stdgo.GoInt64);
        return v;
    }
    public var _timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__timeout():stdgo._internal.time.Time_Duration.Duration return this._timeout;
    function set__timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._timeout = v;
        return v;
    }
    public var _keepCoverage(get, set) : Array<std.UInt>;
    function get__keepCoverage():Array<std.UInt> return [for (i in this._keepCoverage) i];
    function set__keepCoverage(v:Array<std.UInt>):Array<std.UInt> {
        this._keepCoverage = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, ?_crasherMsg:String, ?_limit:haxe.Int64, ?_timeout:stdgo._internal.time.Time_Duration.Duration, ?_keepCoverage:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput(_entry, (_crasherMsg : stdgo.GoString), (_limit : stdgo.GoInt64), _timeout, ([for (i in _keepCoverage) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
