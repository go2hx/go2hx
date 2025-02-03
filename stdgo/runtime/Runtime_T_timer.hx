package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_timer_static_extension) abstract T_timer(stdgo._internal.runtime.Runtime_T_timer.T_timer) from stdgo._internal.runtime.Runtime_T_timer.T_timer to stdgo._internal.runtime.Runtime_T_timer.T_timer {
    public function new() this = new stdgo._internal.runtime.Runtime_T_timer.T_timer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
