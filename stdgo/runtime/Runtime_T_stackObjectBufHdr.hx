package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackObjectBufHdr_static_extension) abstract T_stackObjectBufHdr(stdgo._internal.runtime.Runtime_T_stackObjectBufHdr.T_stackObjectBufHdr) from stdgo._internal.runtime.Runtime_T_stackObjectBufHdr.T_stackObjectBufHdr to stdgo._internal.runtime.Runtime_T_stackObjectBufHdr.T_stackObjectBufHdr {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackObjectBufHdr.T_stackObjectBufHdr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
