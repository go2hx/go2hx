package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_traceAlloc_static_extension) abstract T_traceAlloc(stdgo._internal.runtime.Runtime_T_traceAlloc.T_traceAlloc) from stdgo._internal.runtime.Runtime_T_traceAlloc.T_traceAlloc to stdgo._internal.runtime.Runtime_T_traceAlloc.T_traceAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_T_traceAlloc.T_traceAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
