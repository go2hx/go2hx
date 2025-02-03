package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_cgothreadstart_static_extension) abstract T_cgothreadstart(stdgo._internal.runtime.Runtime_T_cgothreadstart.T_cgothreadstart) from stdgo._internal.runtime.Runtime_T_cgothreadstart.T_cgothreadstart to stdgo._internal.runtime.Runtime_T_cgothreadstart.T_cgothreadstart {
    public function new() this = new stdgo._internal.runtime.Runtime_T_cgothreadstart.T_cgothreadstart();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
