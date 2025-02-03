package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_special_static_extension) abstract T_special(stdgo._internal.runtime.Runtime_T_special.T_special) from stdgo._internal.runtime.Runtime_T_special.T_special to stdgo._internal.runtime.Runtime_T_special.T_special {
    public function new() this = new stdgo._internal.runtime.Runtime_T_special.T_special();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
