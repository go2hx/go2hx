package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pinState_static_extension) abstract T_pinState(stdgo._internal.runtime.Runtime_T_pinState.T_pinState) from stdgo._internal.runtime.Runtime_T_pinState.T_pinState to stdgo._internal.runtime.Runtime_T_pinState.T_pinState {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pinState.T_pinState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
