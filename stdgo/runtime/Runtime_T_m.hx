package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_m_static_extension) abstract T_m(stdgo._internal.runtime.Runtime_T_m.T_m) from stdgo._internal.runtime.Runtime_T_m.T_m to stdgo._internal.runtime.Runtime_T_m.T_m {
    public function new() this = new stdgo._internal.runtime.Runtime_T_m.T_m();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
