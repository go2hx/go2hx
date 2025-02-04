package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_reflectmethodvalue_static_extension.T_reflectMethodValue_static_extension) class T_reflectMethodValue {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reflectMethodValue();
    }
}
