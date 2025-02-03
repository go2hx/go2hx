package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_testContext_static_extension) abstract T_testContext(stdgo._internal.testing.Testing_T_testContext.T_testContext) from stdgo._internal.testing.Testing_T_testContext.T_testContext to stdgo._internal.testing.Testing_T_testContext.T_testContext {
    public var _match(get, set) : T_matcher;
    function get__match():T_matcher return this._match;
    function set__match(v:T_matcher):T_matcher {
        this._match = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_matcher.T_matcher>);
        return v;
    }
    public var _deadline(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__deadline():stdgo._internal.time.Time_Time.Time return this._deadline;
    function set__deadline(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._deadline = v;
        return v;
    }
    public var _isFuzzing(get, set) : Bool;
    function get__isFuzzing():Bool return this._isFuzzing;
    function set__isFuzzing(v:Bool):Bool {
        this._isFuzzing = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _startParallel(get, set) : stdgo.Chan<Bool>;
    function get__startParallel():stdgo.Chan<Bool> return this._startParallel;
    function set__startParallel(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._startParallel = (v : stdgo.Chan<Bool>);
        return v;
    }
    public var _running(get, set) : StdTypes.Int;
    function get__running():StdTypes.Int return this._running;
    function set__running(v:StdTypes.Int):StdTypes.Int {
        this._running = (v : stdgo.GoInt);
        return v;
    }
    public var _numWaiting(get, set) : StdTypes.Int;
    function get__numWaiting():StdTypes.Int return this._numWaiting;
    function set__numWaiting(v:StdTypes.Int):StdTypes.Int {
        this._numWaiting = (v : stdgo.GoInt);
        return v;
    }
    public var _maxParallel(get, set) : StdTypes.Int;
    function get__maxParallel():StdTypes.Int return this._maxParallel;
    function set__maxParallel(v:StdTypes.Int):StdTypes.Int {
        this._maxParallel = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_match:T_matcher, ?_deadline:stdgo._internal.time.Time_Time.Time, ?_isFuzzing:Bool, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_startParallel:stdgo.Chan<Bool>, ?_running:StdTypes.Int, ?_numWaiting:StdTypes.Int, ?_maxParallel:StdTypes.Int) this = new stdgo._internal.testing.Testing_T_testContext.T_testContext((_match : stdgo.Ref<stdgo._internal.testing.Testing_T_matcher.T_matcher>), _deadline, _isFuzzing, _mu, (_startParallel : stdgo.Chan<Bool>), (_running : stdgo.GoInt), (_numWaiting : stdgo.GoInt), (_maxParallel : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
