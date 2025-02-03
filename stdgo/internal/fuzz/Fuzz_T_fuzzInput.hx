package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzInput_static_extension) abstract T_fuzzInput(stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput to stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput {
    public var _entry(get, set) : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry;
    function get__entry():stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry return this._entry;
    function set__entry(v:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry):stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry {
        this._entry = v;
        return v;
    }
    public var _timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__timeout():stdgo._internal.time.Time_Duration.Duration return this._timeout;
    function set__timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._timeout = v;
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = (v : stdgo.GoInt64);
        return v;
    }
    public var _warmup(get, set) : Bool;
    function get__warmup():Bool return this._warmup;
    function set__warmup(v:Bool):Bool {
        this._warmup = v;
        return v;
    }
    public var _coverageData(get, set) : Array<std.UInt>;
    function get__coverageData():Array<std.UInt> return [for (i in this._coverageData) i];
    function set__coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, ?_timeout:stdgo._internal.time.Time_Duration.Duration, ?_limit:haxe.Int64, ?_warmup:Bool, ?_coverageData:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput(_entry, _timeout, (_limit : stdgo.GoInt64), _warmup, ([for (i in _coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
