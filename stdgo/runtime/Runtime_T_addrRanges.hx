package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_addrRanges_static_extension) abstract T_addrRanges(stdgo._internal.runtime.Runtime_T_addrRanges.T_addrRanges) from stdgo._internal.runtime.Runtime_T_addrRanges.T_addrRanges to stdgo._internal.runtime.Runtime_T_addrRanges.T_addrRanges {
    public function new() this = new stdgo._internal.runtime.Runtime_T_addrRanges.T_addrRanges();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
