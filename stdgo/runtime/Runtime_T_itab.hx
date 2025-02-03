package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_itab_static_extension) abstract T_itab(stdgo._internal.runtime.Runtime_T_itab.T_itab) from stdgo._internal.runtime.Runtime_T_itab.T_itab to stdgo._internal.runtime.Runtime_T_itab.T_itab {
    public function new() this = new stdgo._internal.runtime.Runtime_T_itab.T_itab();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
