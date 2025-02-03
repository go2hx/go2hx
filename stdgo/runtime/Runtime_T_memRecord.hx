package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_memRecord_static_extension) abstract T_memRecord(stdgo._internal.runtime.Runtime_T_memRecord.T_memRecord) from stdgo._internal.runtime.Runtime_T_memRecord.T_memRecord to stdgo._internal.runtime.Runtime_T_memRecord.T_memRecord {
    public function new() this = new stdgo._internal.runtime.Runtime_T_memRecord.T_memRecord();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
