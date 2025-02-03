package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_cgoContextArg_static_extension) abstract T_cgoContextArg(stdgo._internal.runtime.Runtime_T_cgoContextArg.T_cgoContextArg) from stdgo._internal.runtime.Runtime_T_cgoContextArg.T_cgoContextArg to stdgo._internal.runtime.Runtime_T_cgoContextArg.T_cgoContextArg {
    public function new() this = new stdgo._internal.runtime.Runtime_T_cgoContextArg.T_cgoContextArg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
