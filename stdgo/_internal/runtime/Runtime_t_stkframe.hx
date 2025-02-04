package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stkframe_static_extension.T_stkframe_static_extension) class T_stkframe {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stkframe();
    }
}
