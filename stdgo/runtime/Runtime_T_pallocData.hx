package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pallocData_static_extension) abstract T_pallocData(stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData) from stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData to stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
