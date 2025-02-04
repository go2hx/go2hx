package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension) class T_timerCtx {
    @:embedded
    public var _cancelCtx : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx = ({} : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _deadline : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public function new(?_cancelCtx:stdgo._internal.context.Context_t_cancelctx.T_cancelCtx, ?_timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_deadline:stdgo._internal.time.Time_time.Time) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_timer != null) this._timer = _timer;
        if (_deadline != null) this._deadline = _deadline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var done(get, never) : () -> stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>;
    @:embedded
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:check32 this._cancelCtx.done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check32 this._cancelCtx.err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check32 this._cancelCtx.value;
    public var _propagateCancel(get, never) : (stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_t_canceler.T_canceler) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__propagateCancel():(stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_t_canceler.T_canceler) -> Void return @:check32 this._cancelCtx._propagateCancel;
    public function __copy__() {
        return new T_timerCtx(_cancelCtx, _timer, _deadline);
    }
}
