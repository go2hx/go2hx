package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_traceBufHeader_static_extension) abstract T_traceBufHeader(stdgo._internal.runtime.Runtime_T_traceBufHeader.T_traceBufHeader) from stdgo._internal.runtime.Runtime_T_traceBufHeader.T_traceBufHeader to stdgo._internal.runtime.Runtime_T_traceBufHeader.T_traceBufHeader {
    public function new() this = new stdgo._internal.runtime.Runtime_T_traceBufHeader.T_traceBufHeader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
