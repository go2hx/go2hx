package stdgo._internal.time;
@:structInit @:using(stdgo._internal.time.Time_Timer_static_extension.Timer_static_extension) class Timer {
    public var c : stdgo.Chan<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
    public var _r : stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer = ({} : stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer);
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time_Time.Time>, ?_r:stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer) {
        if (c != null) this.c = c;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timer(c, _r);
    }
}
