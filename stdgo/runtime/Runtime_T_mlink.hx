package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mlink_static_extension) abstract T_mlink(stdgo._internal.runtime.Runtime_T_mlink.T_mlink) from stdgo._internal.runtime.Runtime_T_mlink.T_mlink to stdgo._internal.runtime.Runtime_T_mlink.T_mlink {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mlink.T_mlink();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
