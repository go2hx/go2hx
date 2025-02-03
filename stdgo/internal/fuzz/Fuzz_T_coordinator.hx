package stdgo.internal.fuzz;
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
        this._inputC = (v : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>);
        return v;
    }
    public var _minimizeC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>;
    function get__minimizeC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput> return this._minimizeC;
    function set__minimizeC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput> {
        this._minimizeC = (v : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>);
        return v;
    }
    public var _resultC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>;
    function get__resultC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult> return this._resultC;
    function set__resultC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult> {
        this._resultC = (v : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>);
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public var _countLastLog(get, set) : haxe.Int64;
    function get__countLastLog():haxe.Int64 return this._countLastLog;
    function set__countLastLog(v:haxe.Int64):haxe.Int64 {
        this._countLastLog = (v : stdgo.GoInt64);
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
        this._interestingCount = (v : stdgo.GoInt);
        return v;
    }
    public var _warmupInputCount(get, set) : StdTypes.Int;
    function get__warmupInputCount():StdTypes.Int return this._warmupInputCount;
    function set__warmupInputCount(v:StdTypes.Int):StdTypes.Int {
        this._warmupInputCount = (v : stdgo.GoInt);
        return v;
    }
    public var _warmupInputLeft(get, set) : StdTypes.Int;
    function get__warmupInputLeft():StdTypes.Int return this._warmupInputLeft;
    function set__warmupInputLeft(v:StdTypes.Int):StdTypes.Int {
        this._warmupInputLeft = (v : stdgo.GoInt);
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
        this._countWaiting = (v : stdgo.GoInt64);
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
        this._crashMinimizing = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>);
        return v;
    }
    public var _coverageMask(get, set) : Array<std.UInt>;
    function get__coverageMask():Array<std.UInt> return [for (i in this._coverageMask) i];
    function set__coverageMask(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageMask = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_opts:CoordinateFuzzingOpts, ?_startTime:stdgo._internal.time.Time_Time.Time, ?_inputC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>, ?_minimizeC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>, ?_resultC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>, ?_count:haxe.Int64, ?_countLastLog:haxe.Int64, ?_timeLastLog:stdgo._internal.time.Time_Time.Time, ?_interestingCount:StdTypes.Int, ?_warmupInputCount:StdTypes.Int, ?_warmupInputLeft:StdTypes.Int, ?_duration:stdgo._internal.time.Time_Duration.Duration, ?_countWaiting:haxe.Int64, ?_corpus:T_corpus, ?_minimizationAllowed:Bool, ?_inputQueue:T_queue, ?_minimizeQueue:T_queue, ?_crashMinimizing:T_fuzzResult, ?_coverageMask:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator(
_opts,
_startTime,
(_inputC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>),
(_minimizeC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>),
(_resultC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>),
(_count : stdgo.GoInt64),
(_countLastLog : stdgo.GoInt64),
_timeLastLog,
(_interestingCount : stdgo.GoInt),
(_warmupInputCount : stdgo.GoInt),
(_warmupInputLeft : stdgo.GoInt),
_duration,
(_countWaiting : stdgo.GoInt64),
_corpus,
_minimizationAllowed,
_inputQueue,
_minimizeQueue,
(_crashMinimizing : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>),
([for (i in _coverageMask) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
