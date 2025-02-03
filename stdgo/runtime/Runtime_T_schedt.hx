package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_schedt_static_extension) abstract T_schedt(stdgo._internal.runtime.Runtime_T_schedt.T_schedt) from stdgo._internal.runtime.Runtime_T_schedt.T_schedt to stdgo._internal.runtime.Runtime_T_schedt.T_schedt {
    public function new() this = new stdgo._internal.runtime.Runtime_T_schedt.T_schedt();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
