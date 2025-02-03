package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_eface_static_extension) abstract T_eface(stdgo._internal.runtime.Runtime_T_eface.T_eface) from stdgo._internal.runtime.Runtime_T_eface.T_eface to stdgo._internal.runtime.Runtime_T_eface.T_eface {
    public function new() this = new stdgo._internal.runtime.Runtime_T_eface.T_eface();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
