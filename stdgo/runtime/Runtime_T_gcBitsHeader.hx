package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gcBitsHeader_static_extension) abstract T_gcBitsHeader(stdgo._internal.runtime.Runtime_T_gcBitsHeader.T_gcBitsHeader) from stdgo._internal.runtime.Runtime_T_gcBitsHeader.T_gcBitsHeader to stdgo._internal.runtime.Runtime_T_gcBitsHeader.T_gcBitsHeader {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gcBitsHeader.T_gcBitsHeader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
