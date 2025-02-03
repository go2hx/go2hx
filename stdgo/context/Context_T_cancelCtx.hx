package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_cancelCtx_static_extension) abstract T_cancelCtx(stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx) from stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx to stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _done(get, set) : stdgo._internal.sync.atomic_.Atomic__Value.Value;
    function get__done():stdgo._internal.sync.atomic_.Atomic__Value.Value return this._done;
    function set__done(v:stdgo._internal.sync.atomic_.Atomic__Value.Value):stdgo._internal.sync.atomic_.Atomic__Value.Value {
        this._done = v;
        return v;
    }
    public var _children(get, set) : stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>;
    function get__children():stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return this._children;
    function set__children(v:stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>):stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        this._children = (v : stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _cause(get, set) : stdgo.Error;
    function get__cause():stdgo.Error return this._cause;
    function set__cause(v:stdgo.Error):stdgo.Error {
        this._cause = (v : stdgo.Error);
        return v;
    }
    public function new(?context:Context_, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_done:stdgo._internal.sync.atomic_.Atomic__Value.Value, ?_children:stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>, ?_err:stdgo.Error, ?_cause:stdgo.Error) this = new stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx(context, _mu, _done, (_children : stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>), (_err : stdgo.Error), (_cause : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
