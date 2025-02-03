package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_atomicOffAddr_static_extension) abstract T_atomicOffAddr(stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr) from stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr to stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr {
    public function new() this = new stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
