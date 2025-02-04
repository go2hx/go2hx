package stdgo._internal.runtime;
class AddrRanges_asInterface {
    @:keep
    @:tdfield
    public dynamic function totalBytes():stdgo.GoUIntptr return @:_0 __self__.value.totalBytes();
    @:keep
    @:tdfield
    public dynamic function add(_r:stdgo._internal.runtime.Runtime_addrrange.AddrRange):Void @:_0 __self__.value.add(_r);
    @:keep
    @:tdfield
    public dynamic function findSucc(_base:stdgo.GoUIntptr):stdgo.GoInt return @:_0 __self__.value.findSucc(_base);
    @:keep
    @:tdfield
    public dynamic function ranges():stdgo.Slice<stdgo._internal.runtime.Runtime_addrrange.AddrRange> return @:_0 __self__.value.ranges();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _removeLast(_0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:_0 __self__.value._removeLast(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _removeGreaterEqual(_0:stdgo.GoUIntptr):Void @:_0 __self__.value._removeGreaterEqual(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _init(_0:stdgo.Pointer<stdgo._internal.runtime.Runtime_t_sysmemstat.T_sysMemStat>):Void @:_0 __self__.value._init(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _findSucc(_0:stdgo.GoUIntptr):stdgo.GoInt return @:_0 __self__.value._findSucc(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _findAddrGreaterEqual(_0:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:_0 __self__.value._findAddrGreaterEqual(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _contains(_0:stdgo.GoUIntptr):Bool return @:_0 __self__.value._contains(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _cloneInto(_0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges>):Void @:_0 __self__.value._cloneInto(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _add(_0:stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange):Void @:_0 __self__.value._add(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_addrrangespointer.AddrRangesPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
