package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_mheap_static_extension.T_mheap_static_extension) class T_mheap {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mheap();
    }
}
