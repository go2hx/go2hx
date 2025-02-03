package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_g_static_extension) abstract T_g(stdgo._internal.runtime.Runtime_T_g.T_g) from stdgo._internal.runtime.Runtime_T_g.T_g to stdgo._internal.runtime.Runtime_T_g.T_g {
    public function new() this = new stdgo._internal.runtime.Runtime_T_g.T_g();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
