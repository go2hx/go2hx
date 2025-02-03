package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.AddrRange_static_extension) abstract AddrRange(stdgo._internal.runtime.Runtime_AddrRange.AddrRange) from stdgo._internal.runtime.Runtime_AddrRange.AddrRange to stdgo._internal.runtime.Runtime_AddrRange.AddrRange {
    public function new() this = new stdgo._internal.runtime.Runtime_AddrRange.AddrRange();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
