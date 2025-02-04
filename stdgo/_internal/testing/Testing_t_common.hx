package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension) class T_common {
    public var _mu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _output : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _ran : Bool = false;
    public var _failed : Bool = false;
    public var _skipped : Bool = false;
    public var _done : Bool = false;
    public var _helperPCs : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard> = (null : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard>);
    public var _helperNames : stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_t_discard.T_discard> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_t_discard.T_discard>);
    public var _cleanups : stdgo.Slice<() -> Void> = (null : stdgo.Slice<() -> Void>);
    public var _cleanupName : stdgo.GoString = "";
    public var _cleanupPc : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var _finished : Bool = false;
    public var _inFuzzFn : Bool = false;
    public var _chatty : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter> = (null : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter>);
    public var _bench : Bool = false;
    public var _hasSub : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _cleanupStarted : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _raceErrors : stdgo.GoInt = 0;
    public var _runner : stdgo.GoString = "";
    public var _isParallel : Bool = false;
    public var _parent : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = (null : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
    public var _level : stdgo.GoInt = 0;
    public var _creator : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var _name : stdgo.GoString = "";
    public var _start : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _duration : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _barrier : stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>);
    public var _signal : stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>);
    public var _sub : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>>);
    public var _tempDirMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _tempDir : stdgo.GoString = "";
    public var _tempDirErr : stdgo.Error = (null : stdgo.Error);
    public var _tempDirSeq : stdgo.GoInt32 = 0;
    @:local
    var failCount = 0;
    public function new(?_mu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_output:stdgo.Slice<stdgo.GoUInt8>, ?_w:stdgo._internal.io.Io_writer.Writer, ?_ran:Bool, ?_failed:Bool, ?_skipped:Bool, ?_done:Bool, ?_helperPCs:stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard>, ?_helperNames:stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_t_discard.T_discard>, ?_cleanups:stdgo.Slice<() -> Void>, ?_cleanupName:stdgo.GoString, ?_cleanupPc:stdgo.Slice<stdgo.GoUIntptr>, ?_finished:Bool, ?_inFuzzFn:Bool, ?_chatty:stdgo.Ref<stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter>, ?_bench:Bool, ?_hasSub:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_cleanupStarted:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_raceErrors:stdgo.GoInt, ?_runner:stdgo.GoString, ?_isParallel:Bool, ?_parent:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, ?_level:stdgo.GoInt, ?_creator:stdgo.Slice<stdgo.GoUIntptr>, ?_name:stdgo.GoString, ?_start:stdgo._internal.time.Time_time.Time, ?_duration:stdgo._internal.time.Time_duration.Duration, ?_barrier:stdgo.Chan<Bool>, ?_signal:stdgo.Chan<Bool>, ?_sub:stdgo.Slice<stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>>, ?_tempDirMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_tempDir:stdgo.GoString, ?_tempDirErr:stdgo.Error, ?_tempDirSeq:stdgo.GoInt32, ?failCount) {
        if (_mu != null) this._mu = _mu;
        if (_output != null) this._output = _output;
        if (_w != null) this._w = _w;
        if (_ran != null) this._ran = _ran;
        if (_failed != null) this._failed = _failed;
        if (_skipped != null) this._skipped = _skipped;
        if (_done != null) this._done = _done;
        if (_helperPCs != null) this._helperPCs = _helperPCs;
        if (_helperNames != null) this._helperNames = _helperNames;
        if (_cleanups != null) this._cleanups = _cleanups;
        if (_cleanupName != null) this._cleanupName = _cleanupName;
        if (_cleanupPc != null) this._cleanupPc = _cleanupPc;
        if (_finished != null) this._finished = _finished;
        if (_inFuzzFn != null) this._inFuzzFn = _inFuzzFn;
        if (_chatty != null) this._chatty = _chatty;
        if (_bench != null) this._bench = _bench;
        if (_hasSub != null) this._hasSub = _hasSub;
        if (_cleanupStarted != null) this._cleanupStarted = _cleanupStarted;
        if (_raceErrors != null) this._raceErrors = _raceErrors;
        if (_runner != null) this._runner = _runner;
        if (_isParallel != null) this._isParallel = _isParallel;
        if (_parent != null) this._parent = _parent;
        if (_level != null) this._level = _level;
        if (_creator != null) this._creator = _creator;
        if (_name != null) this._name = _name;
        if (_start != null) this._start = _start;
        if (_duration != null) this._duration = _duration;
        if (_barrier != null) this._barrier = _barrier;
        if (_signal != null) this._signal = _signal;
        if (_sub != null) this._sub = _sub;
        if (_tempDirMu != null) this._tempDirMu = _tempDirMu;
        if (_tempDir != null) this._tempDir = _tempDir;
        if (_tempDirErr != null) this._tempDirErr = _tempDirErr;
        if (_tempDirSeq != null) this._tempDirSeq = _tempDirSeq;
        if (failCount != null) this.failCount = failCount;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_common(
_mu,
_output,
_w,
_ran,
_failed,
_skipped,
_done,
_helperPCs,
_helperNames,
_cleanups,
_cleanupName,
_cleanupPc,
_finished,
_inFuzzFn,
_chatty,
_bench,
_hasSub,
_cleanupStarted,
_raceErrors,
_runner,
_isParallel,
_parent,
_level,
_creator,
_name,
_start,
_duration,
_barrier,
_signal,
_sub,
_tempDirMu,
_tempDir,
_tempDirErr,
_tempDirSeq,
failCount);
    }
}
