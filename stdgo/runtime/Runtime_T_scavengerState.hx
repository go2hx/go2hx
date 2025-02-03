package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_scavengerState_static_extension) abstract T_scavengerState(stdgo._internal.runtime.Runtime_T_scavengerState.T_scavengerState) from stdgo._internal.runtime.Runtime_T_scavengerState.T_scavengerState to stdgo._internal.runtime.Runtime_T_scavengerState.T_scavengerState {
    public function new() this = new stdgo._internal.runtime.Runtime_T_scavengerState.T_scavengerState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
