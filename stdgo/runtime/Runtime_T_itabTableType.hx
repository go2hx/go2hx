package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_itabTableType_static_extension) abstract T_itabTableType(stdgo._internal.runtime.Runtime_T_itabTableType.T_itabTableType) from stdgo._internal.runtime.Runtime_T_itabTableType.T_itabTableType to stdgo._internal.runtime.Runtime_T_itabTableType.T_itabTableType {
    public function new() this = new stdgo._internal.runtime.Runtime_T_itabTableType.T_itabTableType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
