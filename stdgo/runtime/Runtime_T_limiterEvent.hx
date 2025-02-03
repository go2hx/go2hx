package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_limiterEvent_static_extension) abstract T_limiterEvent(stdgo._internal.runtime.Runtime_T_limiterEvent.T_limiterEvent) from stdgo._internal.runtime.Runtime_T_limiterEvent.T_limiterEvent to stdgo._internal.runtime.Runtime_T_limiterEvent.T_limiterEvent {
    public function new() this = new stdgo._internal.runtime.Runtime_T_limiterEvent.T_limiterEvent();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
