package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_randomEnum_static_extension) abstract T_randomEnum(stdgo._internal.runtime.Runtime_T_randomEnum.T_randomEnum) from stdgo._internal.runtime.Runtime_T_randomEnum.T_randomEnum to stdgo._internal.runtime.Runtime_T_randomEnum.T_randomEnum {
    public function new() this = new stdgo._internal.runtime.Runtime_T_randomEnum.T_randomEnum();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
