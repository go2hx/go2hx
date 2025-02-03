package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gcControllerState_static_extension) abstract T_gcControllerState(stdgo._internal.runtime.Runtime_T_gcControllerState.T_gcControllerState) from stdgo._internal.runtime.Runtime_T_gcControllerState.T_gcControllerState to stdgo._internal.runtime.Runtime_T_gcControllerState.T_gcControllerState {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gcControllerState.T_gcControllerState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
