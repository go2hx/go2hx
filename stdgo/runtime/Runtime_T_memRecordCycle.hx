package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_memRecordCycle_static_extension) abstract T_memRecordCycle(stdgo._internal.runtime.Runtime_T_memRecordCycle.T_memRecordCycle) from stdgo._internal.runtime.Runtime_T_memRecordCycle.T_memRecordCycle to stdgo._internal.runtime.Runtime_T_memRecordCycle.T_memRecordCycle {
    public function new() this = new stdgo._internal.runtime.Runtime_T_memRecordCycle.T_memRecordCycle();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
