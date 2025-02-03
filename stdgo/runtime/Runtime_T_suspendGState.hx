package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_suspendGState_static_extension) abstract T_suspendGState(stdgo._internal.runtime.Runtime_T_suspendGState.T_suspendGState) from stdgo._internal.runtime.Runtime_T_suspendGState.T_suspendGState to stdgo._internal.runtime.Runtime_T_suspendGState.T_suspendGState {
    public function new() this = new stdgo._internal.runtime.Runtime_T_suspendGState.T_suspendGState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
