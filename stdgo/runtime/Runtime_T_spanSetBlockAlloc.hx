package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_spanSetBlockAlloc_static_extension) abstract T_spanSetBlockAlloc(stdgo._internal.runtime.Runtime_T_spanSetBlockAlloc.T_spanSetBlockAlloc) from stdgo._internal.runtime.Runtime_T_spanSetBlockAlloc.T_spanSetBlockAlloc to stdgo._internal.runtime.Runtime_T_spanSetBlockAlloc.T_spanSetBlockAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_T_spanSetBlockAlloc.T_spanSetBlockAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
