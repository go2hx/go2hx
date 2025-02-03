package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_common_static_extension) abstract T_common(stdgo._internal.testing.Testing_T_common.T_common) from stdgo._internal.testing.Testing_T_common.T_common to stdgo._internal.testing.Testing_T_common.T_common {
    public var _mu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__mu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._mu = v;
        return v;
    }
    public var _output(get, set) : Array<std.UInt>;
    function get__output():Array<std.UInt> return [for (i in this._output) i];
    function set__output(v:Array<std.UInt>):Array<std.UInt> {
        this._output = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _ran(get, set) : Bool;
    function get__ran():Bool return this._ran;
    function set__ran(v:Bool):Bool {
        this._ran = v;
        return v;
    }
    public var _failed(get, set) : Bool;
    function get__failed():Bool return this._failed;
    function set__failed(v:Bool):Bool {
        this._failed = v;
        return v;
    }
    public var _skipped(get, set) : Bool;
    function get__skipped():Bool return this._skipped;
    function set__skipped(v:Bool):Bool {
        this._skipped = v;
        return v;
    }
    public var _done(get, set) : Bool;
    function get__done():Bool return this._done;
    function set__done(v:Bool):Bool {
        this._done = v;
        return v;
    }
    public var _helperPCs(get, set) : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_T_discard.T_discard>;
    function get__helperPCs():stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_T_discard.T_discard> return this._helperPCs;
    function set__helperPCs(v:stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_T_discard.T_discard>):stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_T_discard.T_discard> {
        this._helperPCs = (v : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_T_discard.T_discard>);
        return v;
    }
    public var _helperNames(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_T_discard.T_discard>;
    function get__helperNames():stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_T_discard.T_discard> return this._helperNames;
    function set__helperNames(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_T_discard.T_discard>):stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_T_discard.T_discard> {
        this._helperNames = (v : stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_T_discard.T_discard>);
        return v;
    }
    public var _cleanups(get, set) : Array<() -> Void>;
    function get__cleanups():Array<() -> Void> return [for (i in this._cleanups) () -> i()];
    function set__cleanups(v:Array<() -> Void>):Array<() -> Void> {
        this._cleanups = ([for (i in v) i] : stdgo.Slice<() -> Void>);
        return v;
    }
    public var _cleanupName(get, set) : String;
    function get__cleanupName():String return this._cleanupName;
    function set__cleanupName(v:String):String {
        this._cleanupName = (v : stdgo.GoString);
        return v;
    }
    public var _cleanupPc(get, set) : Array<stdgo.GoUIntptr>;
    function get__cleanupPc():Array<stdgo.GoUIntptr> return [for (i in this._cleanupPc) i];
    function set__cleanupPc(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._cleanupPc = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _finished(get, set) : Bool;
    function get__finished():Bool return this._finished;
    function set__finished(v:Bool):Bool {
        this._finished = v;
        return v;
    }
    public var _inFuzzFn(get, set) : Bool;
    function get__inFuzzFn():Bool return this._inFuzzFn;
    function set__inFuzzFn(v:Bool):Bool {
        this._inFuzzFn = v;
        return v;
    }
    public var _chatty(get, set) : T_chattyPrinter;
    function get__chatty():T_chattyPrinter return this._chatty;
    function set__chatty(v:T_chattyPrinter):T_chattyPrinter {
        this._chatty = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter>);
        return v;
    }
    public var _bench(get, set) : Bool;
    function get__bench():Bool return this._bench;
    function set__bench(v:Bool):Bool {
        this._bench = v;
        return v;
    }
    public var _hasSub(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__hasSub():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._hasSub;
    function set__hasSub(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._hasSub = v;
        return v;
    }
    public var _cleanupStarted(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__cleanupStarted():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._cleanupStarted;
    function set__cleanupStarted(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._cleanupStarted = v;
        return v;
    }
    public var _raceErrors(get, set) : StdTypes.Int;
    function get__raceErrors():StdTypes.Int return this._raceErrors;
    function set__raceErrors(v:StdTypes.Int):StdTypes.Int {
        this._raceErrors = (v : stdgo.GoInt);
        return v;
    }
    public var _runner(get, set) : String;
    function get__runner():String return this._runner;
    function set__runner(v:String):String {
        this._runner = (v : stdgo.GoString);
        return v;
    }
    public var _isParallel(get, set) : Bool;
    function get__isParallel():Bool return this._isParallel;
    function set__isParallel(v:Bool):Bool {
        this._isParallel = v;
        return v;
    }
    public var _parent(get, set) : T_common;
    function get__parent():T_common return this._parent;
    function set__parent(v:T_common):T_common {
        this._parent = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        return v;
    }
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt);
        return v;
    }
    public var _creator(get, set) : Array<stdgo.GoUIntptr>;
    function get__creator():Array<stdgo.GoUIntptr> return [for (i in this._creator) i];
    function set__creator(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._creator = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _start(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__start():stdgo._internal.time.Time_Time.Time return this._start;
    function set__start(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._start = v;
        return v;
    }
    public var _duration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__duration():stdgo._internal.time.Time_Duration.Duration return this._duration;
    function set__duration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._duration = v;
        return v;
    }
    public var _barrier(get, set) : stdgo.Chan<Bool>;
    function get__barrier():stdgo.Chan<Bool> return this._barrier;
    function set__barrier(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._barrier = (v : stdgo.Chan<Bool>);
        return v;
    }
    public var _signal(get, set) : stdgo.Chan<Bool>;
    function get__signal():stdgo.Chan<Bool> return this._signal;
    function set__signal(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._signal = (v : stdgo.Chan<Bool>);
        return v;
    }
    public var _sub(get, set) : Array<T_>;
    function get__sub():Array<T_> return [for (i in this._sub) i];
    function set__sub(v:Array<T_>):Array<T_> {
        this._sub = ([for (i in v) (i : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>>);
        return v;
    }
    public var _tempDirMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__tempDirMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._tempDirMu;
    function set__tempDirMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._tempDirMu = v;
        return v;
    }
    public var _tempDir(get, set) : String;
    function get__tempDir():String return this._tempDir;
    function set__tempDir(v:String):String {
        this._tempDir = (v : stdgo.GoString);
        return v;
    }
    public var _tempDirErr(get, set) : stdgo.Error;
    function get__tempDirErr():stdgo.Error return this._tempDirErr;
    function set__tempDirErr(v:stdgo.Error):stdgo.Error {
        this._tempDirErr = (v : stdgo.Error);
        return v;
    }
    public var _tempDirSeq(get, set) : StdTypes.Int;
    function get__tempDirSeq():StdTypes.Int return this._tempDirSeq;
    function set__tempDirSeq(v:StdTypes.Int):StdTypes.Int {
        this._tempDirSeq = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_output:Array<std.UInt>, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_ran:Bool, ?_failed:Bool, ?_skipped:Bool, ?_done:Bool, ?_helperPCs:stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_T_discard.T_discard>, ?_helperNames:stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_T_discard.T_discard>, ?_cleanups:Array<() -> Void>, ?_cleanupName:String, ?_cleanupPc:Array<stdgo.GoUIntptr>, ?_finished:Bool, ?_inFuzzFn:Bool, ?_chatty:T_chattyPrinter, ?_bench:Bool, ?_hasSub:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_cleanupStarted:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_raceErrors:StdTypes.Int, ?_runner:String, ?_isParallel:Bool, ?_parent:T_common, ?_level:StdTypes.Int, ?_creator:Array<stdgo.GoUIntptr>, ?_name:String, ?_start:stdgo._internal.time.Time_Time.Time, ?_duration:stdgo._internal.time.Time_Duration.Duration, ?_barrier:stdgo.Chan<Bool>, ?_signal:stdgo.Chan<Bool>, ?_sub:Array<T_>, ?_tempDirMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_tempDir:String, ?_tempDirErr:stdgo.Error, ?_tempDirSeq:StdTypes.Int, ?failCount) this = new stdgo._internal.testing.Testing_T_common.T_common(
_mu,
([for (i in _output) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_w,
_ran,
_failed,
_skipped,
_done,
(_helperPCs : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_T_discard.T_discard>),
(_helperNames : stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_T_discard.T_discard>),
([for (i in _cleanups) i] : stdgo.Slice<() -> Void>),
(_cleanupName : stdgo.GoString),
([for (i in _cleanupPc) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>),
_finished,
_inFuzzFn,
(_chatty : stdgo.Ref<stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter>),
_bench,
_hasSub,
_cleanupStarted,
(_raceErrors : stdgo.GoInt),
(_runner : stdgo.GoString),
_isParallel,
(_parent : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>),
(_level : stdgo.GoInt),
([for (i in _creator) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>),
(_name : stdgo.GoString),
_start,
_duration,
(_barrier : stdgo.Chan<Bool>),
(_signal : stdgo.Chan<Bool>),
([for (i in _sub) (i : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>>),
_tempDirMu,
(_tempDir : stdgo.GoString),
(_tempDirErr : stdgo.Error),
(_tempDirSeq : stdgo.GoInt32),
failCount);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
