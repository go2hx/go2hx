package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension) class AddrRange {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _contains(__0:stdgo.GoUIntptr):Bool return this.new._contains(__0);
    @:embedded
    public function _removeGreaterEqual(__0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return this.new._removeGreaterEqual(__0);
    @:embedded
    public function _size():stdgo.GoUIntptr return this.new._size();
    @:embedded
    public function _subtract(__0:stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return this.new._subtract(__0);
    @:embedded
    public function _takeFromBack(_offset:stdgo.GoUIntptr, _kind:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return this.new._takeFromBack(_offset, _kind);
    @:embedded
    public function _takeFromFront(_offset:stdgo.GoUIntptr, _kind:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return this.new._takeFromFront(_offset, _kind);
    public function __copy__() {
        return new AddrRange();
    }
}
