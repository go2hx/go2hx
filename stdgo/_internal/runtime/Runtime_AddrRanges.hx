package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension) class AddrRanges {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _add(__0:stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange) this.new._add(__0);
    @:embedded
    public function _cloneInto(_b:stdgo.Ref<stdgo._internal.runtime.Runtime_T_addrRanges.T_addrRanges>) this.new._cloneInto(_b);
    @:embedded
    public function _contains(__0:stdgo.GoUIntptr):Bool return this.new._contains(__0);
    @:embedded
    public function _findAddrGreaterEqual(__0:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return this.new._findAddrGreaterEqual(__0);
    @:embedded
    public function _findSucc(__0:stdgo.GoUIntptr):stdgo.GoInt return this.new._findSucc(__0);
    @:embedded
    public function _init(_sysStat:stdgo.Pointer<stdgo._internal.runtime.Runtime_T_sysMemStat.T_sysMemStat>) this.new._init(_sysStat);
    @:embedded
    public function _removeGreaterEqual(__0:stdgo.GoUIntptr) this.new._removeGreaterEqual(__0);
    @:embedded
    public function _removeLast(__0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return this.new._removeLast(__0);
    public function __copy__() {
        return new AddrRanges();
    }
}
