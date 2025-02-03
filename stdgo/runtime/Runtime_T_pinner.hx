package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pinner_static_extension) abstract T_pinner(stdgo._internal.runtime.Runtime_T_pinner.T_pinner) from stdgo._internal.runtime.Runtime_T_pinner.T_pinner to stdgo._internal.runtime.Runtime_T_pinner.T_pinner {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pinner.T_pinner();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
