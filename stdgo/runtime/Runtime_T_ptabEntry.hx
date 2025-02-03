package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_ptabEntry_static_extension) abstract T_ptabEntry(stdgo._internal.runtime.Runtime_T_ptabEntry.T_ptabEntry) from stdgo._internal.runtime.Runtime_T_ptabEntry.T_ptabEntry to stdgo._internal.runtime.Runtime_T_ptabEntry.T_ptabEntry {
    public function new() this = new stdgo._internal.runtime.Runtime_T_ptabEntry.T_ptabEntry();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
