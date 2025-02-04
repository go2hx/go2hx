package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_testcontext_static_extension.T_testContext_static_extension) class T_testContext {
    public var _match : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher> = (null : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>);
    public var _deadline : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _isFuzzing : Bool = false;
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _startParallel : stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>);
    public var _running : stdgo.GoInt = 0;
    public var _numWaiting : stdgo.GoInt = 0;
    public var _maxParallel : stdgo.GoInt = 0;
    public function new(?_match:stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>, ?_deadline:stdgo._internal.time.Time_time.Time, ?_isFuzzing:Bool, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_startParallel:stdgo.Chan<Bool>, ?_running:stdgo.GoInt, ?_numWaiting:stdgo.GoInt, ?_maxParallel:stdgo.GoInt) {
        if (_match != null) this._match = _match;
        if (_deadline != null) this._deadline = _deadline;
        if (_isFuzzing != null) this._isFuzzing = _isFuzzing;
        if (_mu != null) this._mu = _mu;
        if (_startParallel != null) this._startParallel = _startParallel;
        if (_running != null) this._running = _running;
        if (_numWaiting != null) this._numWaiting = _numWaiting;
        if (_maxParallel != null) this._maxParallel = _maxParallel;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testContext(_match, _deadline, _isFuzzing, _mu, _startParallel, _running, _numWaiting, _maxParallel);
    }
}
