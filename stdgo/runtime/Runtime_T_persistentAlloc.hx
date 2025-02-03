package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_persistentAlloc_static_extension) abstract T_persistentAlloc(stdgo._internal.runtime.Runtime_T_persistentAlloc.T_persistentAlloc) from stdgo._internal.runtime.Runtime_T_persistentAlloc.T_persistentAlloc to stdgo._internal.runtime.Runtime_T_persistentAlloc.T_persistentAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_T_persistentAlloc.T_persistentAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
