package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_timerCtx_static_extension) abstract T_timerCtx(stdgo._internal.context.Context_T_timerCtx.T_timerCtx) from stdgo._internal.context.Context_T_timerCtx.T_timerCtx to stdgo._internal.context.Context_T_timerCtx.T_timerCtx {
    public var _cancelCtx(get, set) : T_cancelCtx;
    function get__cancelCtx():T_cancelCtx return this._cancelCtx;
    function set__cancelCtx(v:T_cancelCtx):T_cancelCtx {
        this._cancelCtx = v;
        return v;
    }
    public var _timer(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__timer():stdgo._internal.time.Time_Timer.Timer return this._timer;
    function set__timer(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._timer = (v : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        return v;
    }
    public var _deadline(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__deadline():stdgo._internal.time.Time_Time.Time return this._deadline;
    function set__deadline(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._deadline = v;
        return v;
    }
    public function new(?_cancelCtx:T_cancelCtx, ?_timer:stdgo._internal.time.Time_Timer.Timer, ?_deadline:stdgo._internal.time.Time_Time.Time) this = new stdgo._internal.context.Context_T_timerCtx.T_timerCtx(_cancelCtx, (_timer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>), _deadline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
