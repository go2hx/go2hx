package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_dbgVar_static_extension) abstract T_dbgVar(stdgo._internal.runtime.Runtime_T_dbgVar.T_dbgVar) from stdgo._internal.runtime.Runtime_T_dbgVar.T_dbgVar to stdgo._internal.runtime.Runtime_T_dbgVar.T_dbgVar {
    public function new() this = new stdgo._internal.runtime.Runtime_T_dbgVar.T_dbgVar();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
