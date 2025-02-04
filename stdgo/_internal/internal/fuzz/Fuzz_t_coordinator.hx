package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension) class T_coordinator {
    public var _opts : stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts = ({} : stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts);
    public var _startTime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _inputC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput> = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>);
    public var _minimizeC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput> = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>);
    public var _resultC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult> = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>);
    public var _count : stdgo.GoInt64 = 0;
    public var _countLastLog : stdgo.GoInt64 = 0;
    public var _timeLastLog : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _interestingCount : stdgo.GoInt = 0;
    public var _warmupInputCount : stdgo.GoInt = 0;
    public var _warmupInputLeft : stdgo.GoInt = 0;
    public var _duration : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _countWaiting : stdgo.GoInt64 = 0;
    public var _corpus : stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus = ({} : stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus);
    public var _minimizationAllowed : Bool = false;
    public var _inputQueue : stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue = ({} : stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue);
    public var _minimizeQueue : stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue = ({} : stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue);
    public var _crashMinimizing : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>);
    public var _coverageMask : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_opts:stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts, ?_startTime:stdgo._internal.time.Time_time.Time, ?_inputC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>, ?_minimizeC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>, ?_resultC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>, ?_count:stdgo.GoInt64, ?_countLastLog:stdgo.GoInt64, ?_timeLastLog:stdgo._internal.time.Time_time.Time, ?_interestingCount:stdgo.GoInt, ?_warmupInputCount:stdgo.GoInt, ?_warmupInputLeft:stdgo.GoInt, ?_duration:stdgo._internal.time.Time_duration.Duration, ?_countWaiting:stdgo.GoInt64, ?_corpus:stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus, ?_minimizationAllowed:Bool, ?_inputQueue:stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue, ?_minimizeQueue:stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue, ?_crashMinimizing:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>, ?_coverageMask:stdgo.Slice<stdgo.GoUInt8>) {
        if (_opts != null) this._opts = _opts;
        if (_startTime != null) this._startTime = _startTime;
        if (_inputC != null) this._inputC = _inputC;
        if (_minimizeC != null) this._minimizeC = _minimizeC;
        if (_resultC != null) this._resultC = _resultC;
        if (_count != null) this._count = _count;
        if (_countLastLog != null) this._countLastLog = _countLastLog;
        if (_timeLastLog != null) this._timeLastLog = _timeLastLog;
        if (_interestingCount != null) this._interestingCount = _interestingCount;
        if (_warmupInputCount != null) this._warmupInputCount = _warmupInputCount;
        if (_warmupInputLeft != null) this._warmupInputLeft = _warmupInputLeft;
        if (_duration != null) this._duration = _duration;
        if (_countWaiting != null) this._countWaiting = _countWaiting;
        if (_corpus != null) this._corpus = _corpus;
        if (_minimizationAllowed != null) this._minimizationAllowed = _minimizationAllowed;
        if (_inputQueue != null) this._inputQueue = _inputQueue;
        if (_minimizeQueue != null) this._minimizeQueue = _minimizeQueue;
        if (_crashMinimizing != null) this._crashMinimizing = _crashMinimizing;
        if (_coverageMask != null) this._coverageMask = _coverageMask;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_coordinator(
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
_coverageMask);
    }
}
