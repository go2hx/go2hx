package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackObjectRecord_static_extension) abstract T_stackObjectRecord(stdgo._internal.runtime.Runtime_T_stackObjectRecord.T_stackObjectRecord) from stdgo._internal.runtime.Runtime_T_stackObjectRecord.T_stackObjectRecord to stdgo._internal.runtime.Runtime_T_stackObjectRecord.T_stackObjectRecord {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackObjectRecord.T_stackObjectRecord();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
