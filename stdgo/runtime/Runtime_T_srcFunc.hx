package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_srcFunc_static_extension) abstract T_srcFunc(stdgo._internal.runtime.Runtime_T_srcFunc.T_srcFunc) from stdgo._internal.runtime.Runtime_T_srcFunc.T_srcFunc to stdgo._internal.runtime.Runtime_T_srcFunc.T_srcFunc {
    public function new() this = new stdgo._internal.runtime.Runtime_T_srcFunc.T_srcFunc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
