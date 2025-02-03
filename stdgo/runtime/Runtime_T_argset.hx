package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_argset_static_extension) abstract T_argset(stdgo._internal.runtime.Runtime_T_argset.T_argset) from stdgo._internal.runtime.Runtime_T_argset.T_argset to stdgo._internal.runtime.Runtime_T_argset.T_argset {
    public function new() this = new stdgo._internal.runtime.Runtime_T_argset.T_argset();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
