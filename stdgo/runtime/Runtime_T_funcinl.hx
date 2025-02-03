package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_funcinl_static_extension) abstract T_funcinl(stdgo._internal.runtime.Runtime_T_funcinl.T_funcinl) from stdgo._internal.runtime.Runtime_T_funcinl.T_funcinl to stdgo._internal.runtime.Runtime_T_funcinl.T_funcinl {
    public function new() this = new stdgo._internal.runtime.Runtime_T_funcinl.T_funcinl();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
