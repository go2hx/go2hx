package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pcHeader_static_extension) abstract T_pcHeader(stdgo._internal.runtime.Runtime_T_pcHeader.T_pcHeader) from stdgo._internal.runtime.Runtime_T_pcHeader.T_pcHeader to stdgo._internal.runtime.Runtime_T_pcHeader.T_pcHeader {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pcHeader.T_pcHeader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
