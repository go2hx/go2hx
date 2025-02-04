package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_functab_static_extension.T_functab_static_extension) class T_functab {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_functab();
    }
}
