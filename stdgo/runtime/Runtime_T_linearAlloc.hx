package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_linearAlloc_static_extension) abstract T_linearAlloc(stdgo._internal.runtime.Runtime_T_linearAlloc.T_linearAlloc) from stdgo._internal.runtime.Runtime_T_linearAlloc.T_linearAlloc to stdgo._internal.runtime.Runtime_T_linearAlloc.T_linearAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_T_linearAlloc.T_linearAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
