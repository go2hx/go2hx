package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_offAddr_static_extension) abstract T_offAddr(stdgo._internal.runtime.Runtime_T_offAddr.T_offAddr) from stdgo._internal.runtime.Runtime_T_offAddr.T_offAddr to stdgo._internal.runtime.Runtime_T_offAddr.T_offAddr {
    public function new() this = new stdgo._internal.runtime.Runtime_T_offAddr.T_offAddr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
