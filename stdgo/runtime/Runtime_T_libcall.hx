package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_libcall_static_extension) abstract T_libcall(stdgo._internal.runtime.Runtime_T_libcall.T_libcall) from stdgo._internal.runtime.Runtime_T_libcall.T_libcall to stdgo._internal.runtime.Runtime_T_libcall.T_libcall {
    public function new() this = new stdgo._internal.runtime.Runtime_T_libcall.T_libcall();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
