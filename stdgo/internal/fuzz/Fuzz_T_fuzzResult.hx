package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzResult_static_extension) abstract T_fuzzResult(stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult to stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult {
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
    public var _canMinimize(get, set) : Bool;
    function get__canMinimize():Bool return this._canMinimize;
    function set__canMinimize(v:Bool):Bool {
        this._canMinimize = v;
        return v;
    }
    public var _coverageData(get, set) : Array<std.UInt>;
    function get__coverageData():Array<std.UInt> return [for (i in this._coverageData) i];
    function set__coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = (v : stdgo.GoInt64);
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public var _totalDuration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__totalDuration():stdgo._internal.time.Time_Duration.Duration return this._totalDuration;
    function set__totalDuration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._totalDuration = v;
        return v;
    }
    public var _entryDuration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__entryDuration():stdgo._internal.time.Time_Duration.Duration return this._entryDuration;
    function set__entryDuration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._entryDuration = v;
        return v;
    }
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, ?_crasherMsg:String, ?_canMinimize:Bool, ?_coverageData:Array<std.UInt>, ?_limit:haxe.Int64, ?_count:haxe.Int64, ?_totalDuration:stdgo._internal.time.Time_Duration.Duration, ?_entryDuration:stdgo._internal.time.Time_Duration.Duration) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult(_entry, (_crasherMsg : stdgo.GoString), _canMinimize, ([for (i in _coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_limit : stdgo.GoInt64), (_count : stdgo.GoInt64), _totalDuration, _entryDuration);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
