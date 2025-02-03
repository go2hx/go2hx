package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mOS_static_extension) abstract T_mOS(stdgo._internal.runtime.Runtime_T_mOS.T_mOS) from stdgo._internal.runtime.Runtime_T_mOS.T_mOS to stdgo._internal.runtime.Runtime_T_mOS.T_mOS {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mOS.T_mOS();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
