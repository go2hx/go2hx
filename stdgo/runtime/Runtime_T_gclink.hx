package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gclink_static_extension) abstract T_gclink(stdgo._internal.runtime.Runtime_T_gclink.T_gclink) from stdgo._internal.runtime.Runtime_T_gclink.T_gclink to stdgo._internal.runtime.Runtime_T_gclink.T_gclink {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gclink.T_gclink();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
