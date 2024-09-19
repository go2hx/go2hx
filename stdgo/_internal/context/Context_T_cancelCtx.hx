package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_cancelCtx_static_extension.T_cancelCtx_static_extension) class T_cancelCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _done : stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
    public var _children : stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> = (null : stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _cause : stdgo.Error = (null : stdgo.Error);
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_done:stdgo._internal.sync.atomic_.Atomic__Value.Value, ?_children:stdgo.GoMap<stdgo._internal.context.Context_T_canceler.T_canceler, stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>, ?_err:stdgo.Error, ?_cause:stdgo.Error) {
        if (context != null) this.context = context;
        if (_mu != null) this._mu = _mu;
        if (_done != null) this._done = _done;
        if (_children != null) this._children = _children;
        if (_err != null) this._err = _err;
        if (_cause != null) this._cause = _cause;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return this.context.deadline();
    public function __copy__() {
        return new T_cancelCtx(context, _mu, _done, _children, _err, _cause);
    }
}