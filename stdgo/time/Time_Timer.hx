package stdgo.time;
@:structInit @:using(stdgo.time.Time.Timer_static_extension) abstract Timer(stdgo._internal.time.Time_Timer.Timer) from stdgo._internal.time.Time_Timer.Timer to stdgo._internal.time.Time_Timer.Timer {
    public var c(get, set) : stdgo.Chan<stdgo._internal.time.Time_Time.Time>;
    function get_c():stdgo.Chan<stdgo._internal.time.Time_Time.Time> return this.c;
    function set_c(v:stdgo.Chan<stdgo._internal.time.Time_Time.Time>):stdgo.Chan<stdgo._internal.time.Time_Time.Time> {
        this.c = (v : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
        return v;
    }
    public var _r(get, set) : T_runtimeTimer;
    function get__r():T_runtimeTimer return this._r;
    function set__r(v:T_runtimeTimer):T_runtimeTimer {
        this._r = v;
        return v;
    }
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time_Time.Time>, ?_r:T_runtimeTimer) this = new stdgo._internal.time.Time_Timer.Timer((c : stdgo.Chan<stdgo._internal.time.Time_Time.Time>), _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
