package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_ticksType_static_extension) abstract T_ticksType(stdgo._internal.runtime.Runtime_T_ticksType.T_ticksType) from stdgo._internal.runtime.Runtime_T_ticksType.T_ticksType to stdgo._internal.runtime.Runtime_T_ticksType.T_ticksType {
    public function new() this = new stdgo._internal.runtime.Runtime_T_ticksType.T_ticksType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
