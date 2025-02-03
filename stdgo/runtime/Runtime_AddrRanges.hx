package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.AddrRanges_static_extension) abstract AddrRanges(stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges) from stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges to stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges {
    public function new() this = new stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
