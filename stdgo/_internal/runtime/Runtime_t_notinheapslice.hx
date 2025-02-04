package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_notinheapslice_static_extension.T_notInHeapSlice_static_extension) class T_notInHeapSlice {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_notInHeapSlice();
    }
}
