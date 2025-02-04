package stdgo._internal.time;
@:structInit @:using(stdgo._internal.time.Time_timer_static_extension.Timer_static_extension) class Timer {
    public var c : stdgo.Chan<stdgo._internal.time.Time_time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
    public var _r : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer = ({} : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer);
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time_time.Time>, ?_r:stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer) {
        if (c != null) this.c = c;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timer(c, _r);
    }
}
