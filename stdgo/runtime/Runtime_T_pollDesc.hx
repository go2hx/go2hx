package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pollDesc_static_extension) abstract T_pollDesc(stdgo._internal.runtime.Runtime_T_pollDesc.T_pollDesc) from stdgo._internal.runtime.Runtime_T_pollDesc.T_pollDesc to stdgo._internal.runtime.Runtime_T_pollDesc.T_pollDesc {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pollDesc.T_pollDesc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
