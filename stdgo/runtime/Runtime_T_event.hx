package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_event_static_extension) abstract T_event(stdgo._internal.runtime.Runtime_T_event.T_event) from stdgo._internal.runtime.Runtime_T_event.T_event to stdgo._internal.runtime.Runtime_T_event.T_event {
    public function new() this = new stdgo._internal.runtime.Runtime_T_event.T_event();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
