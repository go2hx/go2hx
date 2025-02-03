package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_addrRange_static_extension) abstract T_addrRange(stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange) from stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange to stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange {
    public function new() this = new stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
