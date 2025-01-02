package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_timerCtx_static_extension.T_timerCtx_static_extension) class T_timerCtx {
    @:embedded
    public var _cancelCtx : stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx = ({} : stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _deadline : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public function new(?_cancelCtx:stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx, ?_timer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_deadline:stdgo._internal.time.Time_Time.Time) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_timer != null) this._timer = _timer;
        if (_deadline != null) this._deadline = _deadline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var done(get, never) : () -> stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>;
    @:embedded
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return @:check3 (this._cancelCtx ?? throw "null pointer derefrence").done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check3 (this._cancelCtx ?? throw "null pointer derefrence").err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check3 (this._cancelCtx ?? throw "null pointer derefrence").value;
    public var _propagateCancel(get, never) : (stdgo._internal.context.Context_Context.Context, stdgo._internal.context.Context_T_canceler.T_canceler) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__propagateCancel():(stdgo._internal.context.Context_Context.Context, stdgo._internal.context.Context_T_canceler.T_canceler) -> Void return @:check3 (this._cancelCtx ?? throw "null pointer derefrence")._propagateCancel;
    public function __copy__() {
        return new T_timerCtx(_cancelCtx, _timer, _deadline);
    }
}
