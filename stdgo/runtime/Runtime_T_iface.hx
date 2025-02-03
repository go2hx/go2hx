package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_iface_static_extension) abstract T_iface(stdgo._internal.runtime.Runtime_T_iface.T_iface) from stdgo._internal.runtime.Runtime_T_iface.T_iface to stdgo._internal.runtime.Runtime_T_iface.T_iface {
    public function new() this = new stdgo._internal.runtime.Runtime_T_iface.T_iface();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
