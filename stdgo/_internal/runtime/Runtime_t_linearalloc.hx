package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_linearalloc_static_extension.T_linearAlloc_static_extension) class T_linearAlloc {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_linearAlloc();
    }
}
