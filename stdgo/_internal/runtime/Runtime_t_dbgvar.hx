package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_dbgvar_static_extension.T_dbgVar_static_extension) class T_dbgVar {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dbgVar();
    }
}
