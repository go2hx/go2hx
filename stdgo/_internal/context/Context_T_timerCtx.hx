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
    @:embedded
    public function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return this._cancelCtx.done();
    @:embedded
    public function err():stdgo.Error return this._cancelCtx.err();
    @:embedded
    public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return this._cancelCtx.value(_key);
    @:embedded
    public function _propagateCancel(_parent:stdgo._internal.context.Context_Context.Context, _child:stdgo._internal.context.Context_T_canceler.T_canceler) this._cancelCtx._propagateCancel(_parent, _child);
    public function __copy__() {
        return new T_timerCtx(_cancelCtx, _timer, _deadline);
    }
}
