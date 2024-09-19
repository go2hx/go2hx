package stdgo._internal.runtime;
class AddrRanges_asInterface {
    @:keep
    public dynamic function totalBytes():stdgo.GoUIntptr return __self__.value.totalBytes();
    @:keep
    public dynamic function add(_r:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):Void __self__.value.add(_r);
    @:keep
    public dynamic function findSucc(_base:stdgo.GoUIntptr):stdgo.GoInt return __self__.value.findSucc(_base);
    @:keep
    public dynamic function ranges():stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange> return __self__.value.ranges();
    @:embedded
    public dynamic function _removeLast(__0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return __self__.value._removeLast(__0);
    @:embedded
    public dynamic function _removeGreaterEqual(__0:stdgo.GoUIntptr):Void __self__.value._removeGreaterEqual(__0);
    @:embedded
    public dynamic function _init(_sysStat:stdgo.Pointer<stdgo._internal.runtime.Runtime_T_sysMemStat.T_sysMemStat>):Void __self__.value._init(_sysStat);
    @:embedded
    public dynamic function _findSucc(__0:stdgo.GoUIntptr):stdgo.GoInt return __self__.value._findSucc(__0);
    @:embedded
    public dynamic function _findAddrGreaterEqual(__0:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return __self__.value._findAddrGreaterEqual(__0);
    @:embedded
    public dynamic function _contains(__0:stdgo.GoUIntptr):Bool return __self__.value._contains(__0);
    @:embedded
    public dynamic function _cloneInto(_b:stdgo.Ref<stdgo._internal.runtime.Runtime_T_addrRanges.T_addrRanges>):Void __self__.value._cloneInto(_b);
    @:embedded
    public dynamic function _add(__0:stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange):Void __self__.value._add(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
