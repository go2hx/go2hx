package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_funcval_static_extension) abstract T_funcval(stdgo._internal.runtime.Runtime_T_funcval.T_funcval) from stdgo._internal.runtime.Runtime_T_funcval.T_funcval to stdgo._internal.runtime.Runtime_T_funcval.T_funcval {
    public function new() this = new stdgo._internal.runtime.Runtime_T_funcval.T_funcval();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
