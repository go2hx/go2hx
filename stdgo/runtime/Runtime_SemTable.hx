package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.SemTable_static_extension) abstract SemTable(stdgo._internal.runtime.Runtime_SemTable.SemTable) from stdgo._internal.runtime.Runtime_SemTable.SemTable to stdgo._internal.runtime.Runtime_SemTable.SemTable {
    public function new() this = new stdgo._internal.runtime.Runtime_SemTable.SemTable();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
