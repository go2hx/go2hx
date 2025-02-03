package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_exitHook_static_extension) abstract T_exitHook(stdgo._internal.runtime.Runtime_T_exitHook.T_exitHook) from stdgo._internal.runtime.Runtime_T_exitHook.T_exitHook to stdgo._internal.runtime.Runtime_T_exitHook.T_exitHook {
    public function new() this = new stdgo._internal.runtime.Runtime_T_exitHook.T_exitHook();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
