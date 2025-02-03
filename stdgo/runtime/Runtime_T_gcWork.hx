package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gcWork_static_extension) abstract T_gcWork(stdgo._internal.runtime.Runtime_T_gcWork.T_gcWork) from stdgo._internal.runtime.Runtime_T_gcWork.T_gcWork to stdgo._internal.runtime.Runtime_T_gcWork.T_gcWork {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gcWork.T_gcWork();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
