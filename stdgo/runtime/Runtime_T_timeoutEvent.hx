package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_timeoutEvent_static_extension) abstract T_timeoutEvent(stdgo._internal.runtime.Runtime_T_timeoutEvent.T_timeoutEvent) from stdgo._internal.runtime.Runtime_T_timeoutEvent.T_timeoutEvent to stdgo._internal.runtime.Runtime_T_timeoutEvent.T_timeoutEvent {
    public function new() this = new stdgo._internal.runtime.Runtime_T_timeoutEvent.T_timeoutEvent();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
