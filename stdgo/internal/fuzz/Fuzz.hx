package stdgo.internal.fuzz;
class T_mutatorRand_static_extension {
    static public function _restore(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _randState:haxe.UInt64, _randInc:haxe.UInt64):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._restore(t, _randState, _randInc);
    }
    static public function _save(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _randState:stdgo.Pointer<haxe.UInt64>, _randInc:stdgo.Pointer<haxe.UInt64>):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._save(t, _randState, _randInc);
    }
    static public function _bool(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):Bool {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._bool(t);
    }
    static public function _exp2(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._exp2(t);
    }
    static public function _uint32n(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _0:std.UInt):std.UInt {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._uint32n(t, _0);
    }
    static public function _intn(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _0:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._intn(t, _0);
    }
    static public function _uint32(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):std.UInt {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._uint32(t);
    }
}
typedef T_mutatorRand = stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand;
@:structInit abstract CoordinateFuzzingOpts(stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts) from stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts to stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts {
    public var log(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_log():stdgo._internal.io.Io_Writer.Writer return this.log;
    function set_log(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.log = v;
        return v;
    }
    public var timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_timeout():stdgo._internal.time.Time_Duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.timeout = v;
        return v;
    }
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = v;
        return v;
    }
    public var minimizeTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_minimizeTimeout():stdgo._internal.time.Time_Duration.Duration return this.minimizeTimeout;
    function set_minimizeTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.minimizeTimeout = v;
        return v;
    }
    public var minimizeLimit(get, set) : haxe.Int64;
    function get_minimizeLimit():haxe.Int64 return this.minimizeLimit;
    function set_minimizeLimit(v:haxe.Int64):haxe.Int64 {
        this.minimizeLimit = v;
        return v;
    }
    public var parallel(get, set) : StdTypes.Int;
    function get_parallel():StdTypes.Int return this.parallel;
    function set_parallel(v:StdTypes.Int):StdTypes.Int {
        this.parallel = v;
        return v;
    }
    public var seed(get, set) : Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>;
    function get_seed():Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> return [for (i in this.seed) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
    }];
    function set_seed(v:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>):Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> {
        this.seed = ([for (i in v) {
            final obj = i;
            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        return v;
    }
    public var types(get, set) : Array<stdgo._internal.reflect.Reflect_Type_.Type_>;
    function get_types():Array<stdgo._internal.reflect.Reflect_Type_.Type_> return [for (i in this.types) i];
    function set_types(v:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):Array<stdgo._internal.reflect.Reflect_Type_.Type_> {
        this.types = ([for (i in v) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return v;
    }
    public var corpusDir(get, set) : String;
    function get_corpusDir():String return this.corpusDir;
    function set_corpusDir(v:String):String {
        this.corpusDir = v;
        return v;
    }
    public var cacheDir(get, set) : String;
    function get_cacheDir():String return this.cacheDir;
    function set_cacheDir(v:String):String {
        this.cacheDir = v;
        return v;
    }
    public function new(?log:stdgo._internal.io.Io_Writer.Writer, ?timeout:stdgo._internal.time.Time_Duration.Duration, ?limit:haxe.Int64, ?minimizeTimeout:stdgo._internal.time.Time_Duration.Duration, ?minimizeLimit:haxe.Int64, ?parallel:StdTypes.Int, ?seed:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, ?types:Array<stdgo._internal.reflect.Reflect_Type_.Type_>, ?corpusDir:String, ?cacheDir:String) this = new stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts(log, timeout, limit, minimizeTimeout, minimizeLimit, parallel, ([for (i in seed) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };
    }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), ([for (i in types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>), corpusDir, cacheDir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_crashError_static_extension) abstract T_crashError(stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError) from stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError to stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_path:String, ?_err:stdgo.Error) this = new stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError(_path, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_corpus(stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus) from stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus to stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus {
    public var _entries(get, set) : Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>;
    function get__entries():Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> return [for (i in this._entries) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
    }];
    function set__entries(v:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>):Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> {
        this._entries = ([for (i in v) {
            final obj = i;
            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        return v;
    }
    public var _hashes(get, set) : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>;
    function get__hashes():stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool> return this._hashes;
    function set__hashes(v:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>):stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool> {
        this._hashes = v;
        return v;
    }
    public function new(?_entries:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, ?_hashes:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>) this = new stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus(([for (i in _entries) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };
    }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), _hashes);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CorpusEntry = stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry;
@:structInit abstract T_fuzzInput(stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput to stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput {
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
        this._limit = v;
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
        this._coverageData = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, ?_timeout:stdgo._internal.time.Time_Duration.Duration, ?_limit:haxe.Int64, ?_warmup:Bool, ?_coverageData:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput(_entry, _timeout, _limit, _warmup, ([for (i in _coverageData) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_fuzzResult(stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult to stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult {
    public var _entry(get, set) : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry;
    function get__entry():stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry return this._entry;
    function set__entry(v:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry):stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry {
        this._entry = v;
        return v;
    }
    public var _crasherMsg(get, set) : String;
    function get__crasherMsg():String return this._crasherMsg;
    function set__crasherMsg(v:String):String {
        this._crasherMsg = v;
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
        this._coverageData = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = v;
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = v;
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
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, ?_crasherMsg:String, ?_canMinimize:Bool, ?_coverageData:Array<std.UInt>, ?_limit:haxe.Int64, ?_count:haxe.Int64, ?_totalDuration:stdgo._internal.time.Time_Duration.Duration, ?_entryDuration:stdgo._internal.time.Time_Duration.Duration) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult(_entry, _crasherMsg, _canMinimize, ([for (i in _coverageData) i] : stdgo.Slice<stdgo.GoUInt8>), _limit, _count, _totalDuration, _entryDuration);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_fuzzMinimizeInput(stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput to stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput {
    public var _entry(get, set) : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry;
    function get__entry():stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry return this._entry;
    function set__entry(v:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry):stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry {
        this._entry = v;
        return v;
    }
    public var _crasherMsg(get, set) : String;
    function get__crasherMsg():String return this._crasherMsg;
    function set__crasherMsg(v:String):String {
        this._crasherMsg = v;
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = v;
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
        this._keepCoverage = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, ?_crasherMsg:String, ?_limit:haxe.Int64, ?_timeout:stdgo._internal.time.Time_Duration.Duration, ?_keepCoverage:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput(_entry, _crasherMsg, _limit, _timeout, ([for (i in _keepCoverage) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_coordinator_static_extension) abstract T_coordinator(stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator) from stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator to stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator {
    public var _opts(get, set) : CoordinateFuzzingOpts;
    function get__opts():CoordinateFuzzingOpts return this._opts;
    function set__opts(v:CoordinateFuzzingOpts):CoordinateFuzzingOpts {
        this._opts = v;
        return v;
    }
    public var _startTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__startTime():stdgo._internal.time.Time_Time.Time return this._startTime;
    function set__startTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._startTime = v;
        return v;
    }
    public var _inputC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>;
    function get__inputC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput> return this._inputC;
    function set__inputC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput> {
        this._inputC = v;
        return v;
    }
    public var _minimizeC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>;
    function get__minimizeC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput> return this._minimizeC;
    function set__minimizeC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput> {
        this._minimizeC = v;
        return v;
    }
    public var _resultC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>;
    function get__resultC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult> return this._resultC;
    function set__resultC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult> {
        this._resultC = v;
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = v;
        return v;
    }
    public var _countLastLog(get, set) : haxe.Int64;
    function get__countLastLog():haxe.Int64 return this._countLastLog;
    function set__countLastLog(v:haxe.Int64):haxe.Int64 {
        this._countLastLog = v;
        return v;
    }
    public var _timeLastLog(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__timeLastLog():stdgo._internal.time.Time_Time.Time return this._timeLastLog;
    function set__timeLastLog(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._timeLastLog = v;
        return v;
    }
    public var _interestingCount(get, set) : StdTypes.Int;
    function get__interestingCount():StdTypes.Int return this._interestingCount;
    function set__interestingCount(v:StdTypes.Int):StdTypes.Int {
        this._interestingCount = v;
        return v;
    }
    public var _warmupInputCount(get, set) : StdTypes.Int;
    function get__warmupInputCount():StdTypes.Int return this._warmupInputCount;
    function set__warmupInputCount(v:StdTypes.Int):StdTypes.Int {
        this._warmupInputCount = v;
        return v;
    }
    public var _warmupInputLeft(get, set) : StdTypes.Int;
    function get__warmupInputLeft():StdTypes.Int return this._warmupInputLeft;
    function set__warmupInputLeft(v:StdTypes.Int):StdTypes.Int {
        this._warmupInputLeft = v;
        return v;
    }
    public var _duration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__duration():stdgo._internal.time.Time_Duration.Duration return this._duration;
    function set__duration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._duration = v;
        return v;
    }
    public var _countWaiting(get, set) : haxe.Int64;
    function get__countWaiting():haxe.Int64 return this._countWaiting;
    function set__countWaiting(v:haxe.Int64):haxe.Int64 {
        this._countWaiting = v;
        return v;
    }
    public var _corpus(get, set) : T_corpus;
    function get__corpus():T_corpus return this._corpus;
    function set__corpus(v:T_corpus):T_corpus {
        this._corpus = v;
        return v;
    }
    public var _minimizationAllowed(get, set) : Bool;
    function get__minimizationAllowed():Bool return this._minimizationAllowed;
    function set__minimizationAllowed(v:Bool):Bool {
        this._minimizationAllowed = v;
        return v;
    }
    public var _inputQueue(get, set) : T_queue;
    function get__inputQueue():T_queue return this._inputQueue;
    function set__inputQueue(v:T_queue):T_queue {
        this._inputQueue = v;
        return v;
    }
    public var _minimizeQueue(get, set) : T_queue;
    function get__minimizeQueue():T_queue return this._minimizeQueue;
    function set__minimizeQueue(v:T_queue):T_queue {
        this._minimizeQueue = v;
        return v;
    }
    public var _crashMinimizing(get, set) : T_fuzzResult;
    function get__crashMinimizing():T_fuzzResult return this._crashMinimizing;
    function set__crashMinimizing(v:T_fuzzResult):T_fuzzResult {
        this._crashMinimizing = v;
        return v;
    }
    public var _coverageMask(get, set) : Array<std.UInt>;
    function get__coverageMask():Array<std.UInt> return [for (i in this._coverageMask) i];
    function set__coverageMask(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageMask = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_opts:CoordinateFuzzingOpts, ?_startTime:stdgo._internal.time.Time_Time.Time, ?_inputC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>, ?_minimizeC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>, ?_resultC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>, ?_count:haxe.Int64, ?_countLastLog:haxe.Int64, ?_timeLastLog:stdgo._internal.time.Time_Time.Time, ?_interestingCount:StdTypes.Int, ?_warmupInputCount:StdTypes.Int, ?_warmupInputLeft:StdTypes.Int, ?_duration:stdgo._internal.time.Time_Duration.Duration, ?_countWaiting:haxe.Int64, ?_corpus:T_corpus, ?_minimizationAllowed:Bool, ?_inputQueue:T_queue, ?_minimizeQueue:T_queue, ?_crashMinimizing:T_fuzzResult, ?_coverageMask:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator(
_opts,
_startTime,
_inputC,
_minimizeC,
_resultC,
_count,
_countLastLog,
_timeLastLog,
_interestingCount,
_warmupInputCount,
_warmupInputLeft,
_duration,
_countWaiting,
_corpus,
_minimizationAllowed,
_inputQueue,
_minimizeQueue,
_crashMinimizing,
([for (i in _coverageMask) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.MalformedCorpusError_static_extension) abstract MalformedCorpusError(stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError) from stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError to stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError {
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) i] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_errs:Array<stdgo.Error>) this = new stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError(([for (i in _errs) i] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_sharedMem_static_extension) abstract T_sharedMem(stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem) from stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem to stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem {
    public var _f(get, set) : stdgo._internal.os.Os_File.File;
    function get__f():stdgo._internal.os.Os_File.File return this._f;
    function set__f(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._f = v;
        return v;
    }
    public var _region(get, set) : Array<std.UInt>;
    function get__region():Array<std.UInt> return [for (i in this._region) i];
    function set__region(v:Array<std.UInt>):Array<std.UInt> {
        this._region = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _removeOnClose(get, set) : Bool;
    function get__removeOnClose():Bool return this._removeOnClose;
    function set__removeOnClose(v:Bool):Bool {
        this._removeOnClose = v;
        return v;
    }
    public var _sys(get, set) : T_sharedMemSys;
    function get__sys():T_sharedMemSys return this._sys;
    function set__sys(v:T_sharedMemSys):T_sharedMemSys {
        this._sys = v;
        return v;
    }
    public function new(?_f:stdgo._internal.os.Os_File.File, ?_region:Array<std.UInt>, ?_removeOnClose:Bool, ?_sys:T_sharedMemSys) this = new stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem(_f, ([for (i in _region) i] : stdgo.Slice<stdgo.GoUInt8>), _removeOnClose, _sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_sharedMemHeader(stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader) from stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader to stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader {
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = v;
        return v;
    }
    public var _valueLen(get, set) : StdTypes.Int;
    function get__valueLen():StdTypes.Int return this._valueLen;
    function set__valueLen(v:StdTypes.Int):StdTypes.Int {
        this._valueLen = v;
        return v;
    }
    public var _randState(get, set) : haxe.UInt64;
    function get__randState():haxe.UInt64 return this._randState;
    function set__randState(v:haxe.UInt64):haxe.UInt64 {
        this._randState = v;
        return v;
    }
    public var _randInc(get, set) : haxe.UInt64;
    function get__randInc():haxe.UInt64 return this._randInc;
    function set__randInc(v:haxe.UInt64):haxe.UInt64 {
        this._randInc = v;
        return v;
    }
    public var _rawInMem(get, set) : Bool;
    function get__rawInMem():Bool return this._rawInMem;
    function set__rawInMem(v:Bool):Bool {
        this._rawInMem = v;
        return v;
    }
    public function new(?_count:haxe.Int64, ?_valueLen:StdTypes.Int, ?_randState:haxe.UInt64, ?_randInc:haxe.UInt64, ?_rawInMem:Bool) this = new stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader(_count, _valueLen, _randState, _randInc, _rawInMem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_mutator_static_extension) abstract T_mutator(stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator) from stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator to stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator {
    public var _r(get, set) : T_mutatorRand;
    function get__r():T_mutatorRand return this._r;
    function set__r(v:T_mutatorRand):T_mutatorRand {
        this._r = v;
        return v;
    }
    public var _scratch(get, set) : Array<std.UInt>;
    function get__scratch():Array<std.UInt> return [for (i in this._scratch) i];
    function set__scratch(v:Array<std.UInt>):Array<std.UInt> {
        this._scratch = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:T_mutatorRand, ?_scratch:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator(_r, ([for (i in _scratch) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_pcgRand_static_extension) abstract T_pcgRand(stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand) from stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand to stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _state(get, set) : haxe.UInt64;
    function get__state():haxe.UInt64 return this._state;
    function set__state(v:haxe.UInt64):haxe.UInt64 {
        this._state = v;
        return v;
    }
    public var _inc(get, set) : haxe.UInt64;
    function get__inc():haxe.UInt64 return this._inc;
    function set__inc(v:haxe.UInt64):haxe.UInt64 {
        this._inc = v;
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_state:haxe.UInt64, ?_inc:haxe.UInt64) this = new stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand(_noCopy, _state, _inc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_noCopy_static_extension) abstract T_noCopy(stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy) from stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy to stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_queue_static_extension) abstract T_queue(stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue) from stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue to stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue {
    public var _elems(get, set) : Array<stdgo.AnyInterface>;
    function get__elems():Array<stdgo.AnyInterface> return [for (i in this._elems) i];
    function set__elems(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._elems = ([for (i in v) i] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public var _head(get, set) : StdTypes.Int;
    function get__head():StdTypes.Int return this._head;
    function set__head(v:StdTypes.Int):StdTypes.Int {
        this._head = v;
        return v;
    }
    public var _len(get, set) : StdTypes.Int;
    function get__len():StdTypes.Int return this._len;
    function set__len(v:StdTypes.Int):StdTypes.Int {
        this._len = v;
        return v;
    }
    public function new(?_elems:Array<stdgo.AnyInterface>, ?_head:StdTypes.Int, ?_len:StdTypes.Int) this = new stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue(([for (i in _elems) i] : stdgo.Slice<stdgo.AnyInterface>), _head, _len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_sharedMemSys(stdgo._internal.internal.fuzz.Fuzz_T_sharedMemSys.T_sharedMemSys) from stdgo._internal.internal.fuzz.Fuzz_T_sharedMemSys.T_sharedMemSys to stdgo._internal.internal.fuzz.Fuzz_T_sharedMemSys.T_sharedMemSys {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_T_sharedMemSys.T_sharedMemSys();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_worker_static_extension) abstract T_worker(stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker) from stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker to stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker {
    public var _dir(get, set) : String;
    function get__dir():String return this._dir;
    function set__dir(v:String):String {
        this._dir = v;
        return v;
    }
    public var _binPath(get, set) : String;
    function get__binPath():String return this._binPath;
    function set__binPath(v:String):String {
        this._binPath = v;
        return v;
    }
    public var _args(get, set) : Array<String>;
    function get__args():Array<String> return [for (i in this._args) i];
    function set__args(v:Array<String>):Array<String> {
        this._args = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _env(get, set) : Array<String>;
    function get__env():Array<String> return [for (i in this._env) i];
    function set__env(v:Array<String>):Array<String> {
        this._env = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _coordinator(get, set) : T_coordinator;
    function get__coordinator():T_coordinator return this._coordinator;
    function set__coordinator(v:T_coordinator):T_coordinator {
        this._coordinator = v;
        return v;
    }
    public var _memMu(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>;
    function get__memMu():stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> return this._memMu;
    function set__memMu(v:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>):stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> {
        this._memMu = v;
        return v;
    }
    public var _cmd(get, set) : stdgo._internal.os.exec.Exec_Cmd.Cmd;
    function get__cmd():stdgo._internal.os.exec.Exec_Cmd.Cmd return this._cmd;
    function set__cmd(v:stdgo._internal.os.exec.Exec_Cmd.Cmd):stdgo._internal.os.exec.Exec_Cmd.Cmd {
        this._cmd = v;
        return v;
    }
    public var _client(get, set) : T_workerClient;
    function get__client():T_workerClient return this._client;
    function set__client(v:T_workerClient):T_workerClient {
        this._client = v;
        return v;
    }
    public var _waitErr(get, set) : stdgo.Error;
    function get__waitErr():stdgo.Error return this._waitErr;
    function set__waitErr(v:stdgo.Error):stdgo.Error {
        this._waitErr = v;
        return v;
    }
    public var _interrupted(get, set) : Bool;
    function get__interrupted():Bool return this._interrupted;
    function set__interrupted(v:Bool):Bool {
        this._interrupted = v;
        return v;
    }
    public var _termC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>;
    function get__termC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy> return this._termC;
    function set__termC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy> {
        this._termC = v;
        return v;
    }
    public function new(?_dir:String, ?_binPath:String, ?_args:Array<String>, ?_env:Array<String>, ?_coordinator:T_coordinator, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>, ?_cmd:stdgo._internal.os.exec.Exec_Cmd.Cmd, ?_client:T_workerClient, ?_waitErr:stdgo.Error, ?_interrupted:Bool, ?_termC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>) this = new stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker(
_dir,
_binPath,
([for (i in _args) i] : stdgo.Slice<stdgo.GoString>),
([for (i in _env) i] : stdgo.Slice<stdgo.GoString>),
_coordinator,
_memMu,
_cmd,
_client,
_waitErr,
_interrupted,
_termC);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_call(stdgo._internal.internal.fuzz.Fuzz_T_call.T_call) from stdgo._internal.internal.fuzz.Fuzz_T_call.T_call to stdgo._internal.internal.fuzz.Fuzz_T_call.T_call {
    public var ping(get, set) : T_pingArgs;
    function get_ping():T_pingArgs return this.ping;
    function set_ping(v:T_pingArgs):T_pingArgs {
        this.ping = v;
        return v;
    }
    public var fuzz(get, set) : T_fuzzArgs;
    function get_fuzz():T_fuzzArgs return this.fuzz;
    function set_fuzz(v:T_fuzzArgs):T_fuzzArgs {
        this.fuzz = v;
        return v;
    }
    public var minimize(get, set) : T_minimizeArgs;
    function get_minimize():T_minimizeArgs return this.minimize;
    function set_minimize(v:T_minimizeArgs):T_minimizeArgs {
        this.minimize = v;
        return v;
    }
    public function new(?ping:T_pingArgs, ?fuzz:T_fuzzArgs, ?minimize:T_minimizeArgs) this = new stdgo._internal.internal.fuzz.Fuzz_T_call.T_call(ping, fuzz, minimize);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_minimizeArgs(stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs) from stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs to stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs {
    public var timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_timeout():stdgo._internal.time.Time_Duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.timeout = v;
        return v;
    }
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = v;
        return v;
    }
    public var keepCoverage(get, set) : Array<std.UInt>;
    function get_keepCoverage():Array<std.UInt> return [for (i in this.keepCoverage) i];
    function set_keepCoverage(v:Array<std.UInt>):Array<std.UInt> {
        this.keepCoverage = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = v;
        return v;
    }
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?limit:haxe.Int64, ?keepCoverage:Array<std.UInt>, ?index:StdTypes.Int) this = new stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs(timeout, limit, ([for (i in keepCoverage) i] : stdgo.Slice<stdgo.GoUInt8>), index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_minimizeResponse(stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse) from stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse to stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse {
    public var wroteToMem(get, set) : Bool;
    function get_wroteToMem():Bool return this.wroteToMem;
    function set_wroteToMem(v:Bool):Bool {
        this.wroteToMem = v;
        return v;
    }
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = v;
        return v;
    }
    public var coverageData(get, set) : Array<std.UInt>;
    function get_coverageData():Array<std.UInt> return [for (i in this.coverageData) i];
    function set_coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this.coverageData = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        this.count = v;
        return v;
    }
    public function new(?wroteToMem:Bool, ?err:String, ?coverageData:Array<std.UInt>, ?duration:stdgo._internal.time.Time_Duration.Duration, ?count:haxe.Int64) this = new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse(wroteToMem, err, ([for (i in coverageData) i] : stdgo.Slice<stdgo.GoUInt8>), duration, count);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_fuzzArgs(stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs to stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs {
    public var timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_timeout():stdgo._internal.time.Time_Duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.timeout = v;
        return v;
    }
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = v;
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
        this.coverageData = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?limit:haxe.Int64, ?warmup:Bool, ?coverageData:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs(timeout, limit, warmup, ([for (i in coverageData) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_fuzzResponse(stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse) from stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse to stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse {
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
        this.count = v;
        return v;
    }
    public var coverageData(get, set) : Array<std.UInt>;
    function get_coverageData():Array<std.UInt> return [for (i in this.coverageData) i];
    function set_coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this.coverageData = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = v;
        return v;
    }
    public var internalErr(get, set) : String;
    function get_internalErr():String return this.internalErr;
    function set_internalErr(v:String):String {
        this.internalErr = v;
        return v;
    }
    public function new(?totalDuration:stdgo._internal.time.Time_Duration.Duration, ?interestingDuration:stdgo._internal.time.Time_Duration.Duration, ?count:haxe.Int64, ?coverageData:Array<std.UInt>, ?err:String, ?internalErr:String) this = new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse(totalDuration, interestingDuration, count, ([for (i in coverageData) i] : stdgo.Slice<stdgo.GoUInt8>), err, internalErr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_pingArgs(stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs) from stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs to stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_pingResponse(stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse) from stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse to stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_workerComm(stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm) from stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm to stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm {
    public var _fuzzIn(get, set) : stdgo._internal.os.Os_File.File;
    function get__fuzzIn():stdgo._internal.os.Os_File.File return this._fuzzIn;
    function set__fuzzIn(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._fuzzIn = v;
        return v;
    }
    public var _fuzzOut(get, set) : stdgo._internal.os.Os_File.File;
    function get__fuzzOut():stdgo._internal.os.Os_File.File return this._fuzzOut;
    function set__fuzzOut(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._fuzzOut = v;
        return v;
    }
    public var _memMu(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>;
    function get__memMu():stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> return this._memMu;
    function set__memMu(v:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>):stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> {
        this._memMu = v;
        return v;
    }
    public function new(?_fuzzIn:stdgo._internal.os.Os_File.File, ?_fuzzOut:stdgo._internal.os.Os_File.File, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>) this = new stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm(_fuzzIn, _fuzzOut, _memMu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_workerServer_static_extension) abstract T_workerServer(stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer) from stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer to stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer {
    public var _workerComm(get, set) : T_workerComm;
    function get__workerComm():T_workerComm return this._workerComm;
    function set__workerComm(v:T_workerComm):T_workerComm {
        this._workerComm = v;
        return v;
    }
    public var _m(get, set) : T_mutator;
    function get__m():T_mutator return this._m;
    function set__m(v:T_mutator):T_mutator {
        this._m = v;
        return v;
    }
    public var _coverageMask(get, set) : Array<std.UInt>;
    function get__coverageMask():Array<std.UInt> return [for (i in this._coverageMask) i];
    function set__coverageMask(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageMask = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _fuzzFn(get, set) : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; };
    function get__fuzzFn():stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } return _0 -> this._fuzzFn(_0);
    function set__fuzzFn(v:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; }):stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } {
        this._fuzzFn = v;
        return v;
    }
    public function new(?_workerComm:T_workerComm, ?_m:T_mutator, ?_coverageMask:Array<std.UInt>, ?_fuzzFn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; }) this = new stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer(_workerComm, _m, ([for (i in _coverageMask) i] : stdgo.Slice<stdgo.GoUInt8>), _fuzzFn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_workerClient_static_extension) abstract T_workerClient(stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient) from stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient to stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient {
    public var _workerComm(get, set) : T_workerComm;
    function get__workerComm():T_workerComm return this._workerComm;
    function set__workerComm(v:T_workerComm):T_workerComm {
        this._workerComm = v;
        return v;
    }
    public var _m(get, set) : T_mutator;
    function get__m():T_mutator return this._m;
    function set__m(v:T_mutator):T_mutator {
        this._m = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public function new(?_workerComm:T_workerComm, ?_m:T_mutator, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex) this = new stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient(_workerComm, _m, _mu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_contextReader_static_extension) abstract T_contextReader(stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader) from stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader to stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader {
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_ctx:stdgo._internal.context.Context_Context.Context, ?_r:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader(_ctx, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.internal.fuzz.Fuzz_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.internal.fuzz.Fuzz_T__struct_0.T__struct_0;
typedef T_byteSliceMutator = stdgo._internal.internal.fuzz.Fuzz_T_byteSliceMutator.T_byteSliceMutator;
typedef T_crashErrorPointer = stdgo._internal.internal.fuzz.Fuzz_T_crashErrorPointer.T_crashErrorPointer;
class T_crashError_static_extension {
    static public function crashPath(_e:T_crashError):String {
        return stdgo._internal.internal.fuzz.Fuzz_T_crashError_static_extension.T_crashError_static_extension.crashPath(_e);
    }
    static public function unwrap(_e:T_crashError):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_crashError_static_extension.T_crashError_static_extension.unwrap(_e);
    }
    static public function error(_e:T_crashError):String {
        return stdgo._internal.internal.fuzz.Fuzz_T_crashError_static_extension.T_crashError_static_extension.error(_e);
    }
}
typedef T_coordinatorPointer = stdgo._internal.internal.fuzz.Fuzz_T_coordinatorPointer.T_coordinatorPointer;
class T_coordinator_static_extension {
    static public function _debugLogf(_c:T_coordinator, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._debugLogf(_c, _format, ...[for (i in _args) i]);
    }
    static public function _readCache(_c:T_coordinator):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._readCache(_c);
    }
    static public function _elapsed(_c:T_coordinator):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._elapsed(_c);
    }
    static public function _canMinimize(_c:T_coordinator):Bool {
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._canMinimize(_c);
    }
    static public function _updateCoverage(_c:T_coordinator, _newCoverage:Array<std.UInt>):StdTypes.Int {
        final _newCoverage = ([for (i in _newCoverage) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._updateCoverage(_c, _newCoverage);
    }
    static public function _warmupRun(_c:T_coordinator):Bool {
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._warmupRun(_c);
    }
    static public function _sentMinimizeInput(_c:T_coordinator, _input:T_fuzzMinimizeInput):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._sentMinimizeInput(_c, _input);
    }
    static public function _peekMinimizeInput(_c:T_coordinator):stdgo.Tuple<T_fuzzMinimizeInput, Bool> {
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._peekMinimizeInput(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _queueForMinimization(_c:T_coordinator, _result:T_fuzzResult, _keepCoverage:Array<std.UInt>):Void {
        final _keepCoverage = ([for (i in _keepCoverage) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._queueForMinimization(_c, _result, _keepCoverage);
    }
    static public function _refillInputQueue(_c:T_coordinator):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._refillInputQueue(_c);
    }
    static public function _sentInput(_c:T_coordinator, _input:T_fuzzInput):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._sentInput(_c, _input);
    }
    static public function _peekInput(_c:T_coordinator):stdgo.Tuple<T_fuzzInput, Bool> {
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._peekInput(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _logStats(_c:T_coordinator):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._logStats(_c);
    }
    static public function _updateStats(_c:T_coordinator, _result:T_fuzzResult):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._updateStats(_c, _result);
    }
    static public function _addCorpusEntries(_c:T_coordinator, _addToCache:Bool, _entries:haxe.Rest<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._addCorpusEntries(_c, _addToCache, ...[for (i in _entries) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef MalformedCorpusErrorPointer = stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusErrorPointer.MalformedCorpusErrorPointer;
class MalformedCorpusError_static_extension {
    static public function error(_e:MalformedCorpusError):String {
        return stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError_static_extension.MalformedCorpusError_static_extension.error(_e);
    }
}
typedef T_sharedMemPointer = stdgo._internal.internal.fuzz.Fuzz_T_sharedMemPointer.T_sharedMemPointer;
class T_sharedMem_static_extension {
    static public function close(_m:T_sharedMem):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension.close(_m);
    }
    static public function _setValueLen(_m:T_sharedMem, _n:StdTypes.Int):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._setValueLen(_m, _n);
    }
    static public function _setValue(_m:T_sharedMem, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._setValue(_m, _b);
    }
    static public function _valueCopy(_m:T_sharedMem):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._valueCopy(_m)) i];
    }
    static public function _valueRef(_m:T_sharedMem):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._valueRef(_m)) i];
    }
    static public function _header(_m:T_sharedMem):T_sharedMemHeader {
        return stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._header(_m);
    }
}
typedef T_mutatorPointer = stdgo._internal.internal.fuzz.Fuzz_T_mutatorPointer.T_mutatorPointer;
class T_mutator_static_extension {
    static public function _mutateBytes(_m:T_mutator, _ptrB:Array<std.UInt>):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutateBytes(_m, _ptrB);
    }
    static public function _mutateFloat(_m:T_mutator, _v:StdTypes.Float, _maxValue:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutateFloat(_m, _v, _maxValue);
    }
    static public function _mutateUInt(_m:T_mutator, _v:haxe.UInt64, _maxValue:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutateUInt(_m, _v, _maxValue);
    }
    static public function _mutateInt(_m:T_mutator, _v:haxe.Int64, _maxValue:haxe.Int64):haxe.Int64 {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutateInt(_m, _v, _maxValue);
    }
    static public function _mutate(_m:T_mutator, _vals:Array<stdgo.AnyInterface>, _maxBytes:StdTypes.Int):Void {
        final _vals = ([for (i in _vals) i] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutate(_m, _vals, _maxBytes);
    }
    static public function _chooseLen(_m:T_mutator, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._chooseLen(_m, _n);
    }
    static public function _randByteOrder(_m:T_mutator):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._randByteOrder(_m);
    }
    static public function _rand(_m:T_mutator, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._rand(_m, _n);
    }
}
typedef T_pcgRandPointer = stdgo._internal.internal.fuzz.Fuzz_T_pcgRandPointer.T_pcgRandPointer;
class T_pcgRand_static_extension {
    static public function _bool(_r:T_pcgRand):Bool {
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._bool(_r);
    }
    static public function _exp2(_r:T_pcgRand):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._exp2(_r);
    }
    static public function _uint32n(_r:T_pcgRand, _n:std.UInt):std.UInt {
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._uint32n(_r, _n);
    }
    static public function _intn(_r:T_pcgRand, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._intn(_r, _n);
    }
    static public function _uint32(_r:T_pcgRand):std.UInt {
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._uint32(_r);
    }
    static public function _restore(_r:T_pcgRand, _randState:haxe.UInt64, _randInc:haxe.UInt64):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._restore(_r, _randState, _randInc);
    }
    static public function _save(_r:T_pcgRand, _randState:stdgo.Pointer<haxe.UInt64>, _randInc:stdgo.Pointer<haxe.UInt64>):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._save(_r, _randState, _randInc);
    }
    static public function _step(_r:T_pcgRand):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._step(_r);
    }
}
typedef T_noCopyPointer = stdgo._internal.internal.fuzz.Fuzz_T_noCopyPointer.T_noCopyPointer;
class T_noCopy_static_extension {
    static public function _unlock(_:T_noCopy):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_noCopy_static_extension.T_noCopy_static_extension._unlock(_);
    }
    static public function _lock(_:T_noCopy):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_noCopy_static_extension.T_noCopy_static_extension._lock(_);
    }
}
typedef T_queuePointer = stdgo._internal.internal.fuzz.Fuzz_T_queuePointer.T_queuePointer;
class T_queue_static_extension {
    static public function _clear(_q:T_queue):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._clear(_q);
    }
    static public function _peek(_q:T_queue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._peek(_q);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _dequeue(_q:T_queue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._dequeue(_q);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _enqueue(_q:T_queue, _e:stdgo.AnyInterface):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._enqueue(_q, _e);
    }
    static public function _grow(_q:T_queue):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._grow(_q);
    }
    static public function _cap(_q:T_queue):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._cap(_q);
    }
}
typedef T_workerPointer = stdgo._internal.internal.fuzz.Fuzz_T_workerPointer.T_workerPointer;
class T_worker_static_extension {
    static public function _stop(_w:T_worker):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._stop(_w);
    }
    static public function _start(_w:T_worker):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._start(_w);
    }
    static public function _startAndPing(_w:T_worker, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._startAndPing(_w, _ctx);
    }
    static public function _isRunning(_w:T_worker):Bool {
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._isRunning(_w);
    }
    static public function _minimize(_w:T_worker, _ctx:stdgo._internal.context.Context_Context.Context, _input:T_fuzzMinimizeInput):stdgo.Tuple<T_fuzzResult, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._minimize(_w, _ctx, _input);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _coordinate(_w:T_worker, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._coordinate(_w, _ctx);
    }
    static public function _cleanup(_w:T_worker):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._cleanup(_w);
    }
}
typedef T_workerServerPointer = stdgo._internal.internal.fuzz.Fuzz_T_workerServerPointer.T_workerServerPointer;
class T_workerServer_static_extension {
    static public function _ping(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context, _args:T_pingArgs):T_pingResponse {
        return stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._ping(_ws, _ctx, _args);
    }
    static public function _minimizeInput(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context, _vals:Array<stdgo.AnyInterface>, _mem:T_sharedMem, _args:T_minimizeArgs):stdgo.Tuple<Bool, stdgo.Error> {
        final _vals = ([for (i in _vals) i] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._minimizeInput(_ws, _ctx, _vals, _mem, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _minimize(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context, _args:T_minimizeArgs):T_minimizeResponse {
        return stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._minimize(_ws, _ctx, _args);
    }
    static public function _fuzz(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context, _args:T_fuzzArgs):T_fuzzResponse {
        return stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._fuzz(_ws, _ctx, _args);
    }
    static public function _serve(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._serve(_ws, _ctx);
    }
}
typedef T_workerClientPointer = stdgo._internal.internal.fuzz.Fuzz_T_workerClientPointer.T_workerClientPointer;
class T_workerClient_static_extension {
    static public function _callLocked(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_Context.Context, _c:T_call, _resp:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension._callLocked(_wc, _ctx, _c, _resp);
    }
    static public function _ping(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension._ping(_wc, _ctx);
    }
    static public function _fuzz(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:T_fuzzArgs):stdgo.Tuple.Tuple4<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, T_fuzzResponse, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension._fuzz(_wc, _ctx, _entryIn, _args);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _minimize(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:T_minimizeArgs):stdgo.Tuple.Tuple3<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, T_minimizeResponse, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension._minimize(_wc, _ctx, _entryIn, _args);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function close(_wc:T_workerClient):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension.close(_wc);
    }
}
typedef T_contextReaderPointer = stdgo._internal.internal.fuzz.Fuzz_T_contextReaderPointer.T_contextReaderPointer;
class T_contextReader_static_extension {
    static public function read(_cr:T_contextReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_contextReader_static_extension.T_contextReader_static_extension.read(_cr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package fuzz provides common fuzzing functionality for tests built with
    "go test" and for programs that use fuzzing functionality in the testing
    package.
**/
class Fuzz {
    /**
        ResetCoverage sets all of the counters for each edge of the instrumented
        source code to 0.
    **/
    static public function resetCoverage():Void {
        stdgo._internal.internal.fuzz.Fuzz_resetCoverage.resetCoverage();
    }
    /**
        SnapshotCoverage copies the current counter values into coverageSnapshot,
        preserving them for later inspection. SnapshotCoverage also rounds each
        counter down to the nearest power of two. This lets the coordinator store
        multiple values for each counter by OR'ing them together.
    **/
    static public function snapshotCoverage():Void {
        stdgo._internal.internal.fuzz.Fuzz_snapshotCoverage.snapshotCoverage();
    }
    /**
        CoordinateFuzzing creates several worker processes and communicates with
        them to test random inputs that could trigger crashes and expose bugs.
        The worker processes run the same binary in the same directory with the
        same environment variables as the coordinator process. Workers also run
        with the same arguments as the coordinator, except with the -test.fuzzworker
        flag prepended to the argument list.
        
        If a crash occurs, the function will return an error containing information
        about the crash, which can be reported to the user.
    **/
    static public function coordinateFuzzing(_ctx:stdgo._internal.context.Context_Context.Context, _opts:CoordinateFuzzingOpts):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_coordinateFuzzing.coordinateFuzzing(_ctx, _opts);
    }
    /**
        ReadCorpus reads the corpus from the provided dir. The returned corpus
        entries are guaranteed to match the given types. Any malformed files will
        be saved in a MalformedCorpusError and returned, along with the most recent
        error.
    **/
    static public function readCorpus(_dir:String, _types:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Tuple<Array<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>, stdgo.Error> {
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_readCorpus.readCorpus(_dir, _types);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        CheckCorpus verifies that the types in vals match the expected types
        provided.
    **/
    static public function checkCorpus(_vals:Array<stdgo.AnyInterface>, _types:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Error {
        final _vals = ([for (i in _vals) i] : stdgo.Slice<stdgo.AnyInterface>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return stdgo._internal.internal.fuzz.Fuzz_checkCorpus.checkCorpus(_vals, _types);
    }
    /**
        RunFuzzWorker is called in a worker process to communicate with the
        coordinator process in order to fuzz random inputs. RunFuzzWorker loops
        until the coordinator tells it to stop.
        
        fn is a wrapper on the fuzz function. It may return an error to indicate
        a given input "crashed". The coordinator will also record a crasher if
        the function times out or terminates the process.
        
        RunFuzzWorker returns an error if it could not communicate with the
        coordinator process.
    **/
    static public function runFuzzWorker(_ctx:stdgo._internal.context.Context_Context.Context, _fn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> stdgo.Error):stdgo.Error {
        final _fn = _fn;
        return stdgo._internal.internal.fuzz.Fuzz_runFuzzWorker.runFuzzWorker(_ctx, _fn);
    }
}
