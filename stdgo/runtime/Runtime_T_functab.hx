package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_functab_static_extension) abstract T_functab(stdgo._internal.runtime.Runtime_T_functab.T_functab) from stdgo._internal.runtime.Runtime_T_functab.T_functab to stdgo._internal.runtime.Runtime_T_functab.T_functab {
    public function new() this = new stdgo._internal.runtime.Runtime_T_functab.T_functab();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
