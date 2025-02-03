package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_memHdr_static_extension) abstract T_memHdr(stdgo._internal.runtime.Runtime_T_memHdr.T_memHdr) from stdgo._internal.runtime.Runtime_T_memHdr.T_memHdr to stdgo._internal.runtime.Runtime_T_memHdr.T_memHdr {
    public function new() this = new stdgo._internal.runtime.Runtime_T_memHdr.T_memHdr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
