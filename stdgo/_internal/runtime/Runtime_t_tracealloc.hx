package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_tracealloc_static_extension.T_traceAlloc_static_extension) class T_traceAlloc {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_traceAlloc();
    }
}
