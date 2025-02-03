package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_p_static_extension) abstract T_p(stdgo._internal.runtime.Runtime_T_p.T_p) from stdgo._internal.runtime.Runtime_T_p.T_p to stdgo._internal.runtime.Runtime_T_p.T_p {
    public function new() this = new stdgo._internal.runtime.Runtime_T_p.T_p();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
