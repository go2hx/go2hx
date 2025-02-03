package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_traceStackTable_static_extension) abstract T_traceStackTable(stdgo._internal.runtime.Runtime_T_traceStackTable.T_traceStackTable) from stdgo._internal.runtime.Runtime_T_traceStackTable.T_traceStackTable to stdgo._internal.runtime.Runtime_T_traceStackTable.T_traceStackTable {
    public function new() this = new stdgo._internal.runtime.Runtime_T_traceStackTable.T_traceStackTable();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
