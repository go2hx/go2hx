package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_workType_static_extension) abstract T_workType(stdgo._internal.runtime.Runtime_T_workType.T_workType) from stdgo._internal.runtime.Runtime_T_workType.T_workType to stdgo._internal.runtime.Runtime_T_workType.T_workType {
    public function new() this = new stdgo._internal.runtime.Runtime_T_workType.T_workType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
