package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_T_finalizer_static_extension.T_finalizer_static_extension) class T_finalizer {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_finalizer();
    }
}
