package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_blockwrapper_static_extension.T_blockWrapper_static_extension) class T_blockWrapper<T_> {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_blockWrapper();
    }
}
