package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_finalizer_static_extension) abstract T_finalizer(stdgo._internal.runtime.Runtime_T_finalizer.T_finalizer) from stdgo._internal.runtime.Runtime_T_finalizer.T_finalizer to stdgo._internal.runtime.Runtime_T_finalizer.T_finalizer {
    public function new() this = new stdgo._internal.runtime.Runtime_T_finalizer.T_finalizer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
