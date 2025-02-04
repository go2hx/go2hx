package stdgo._internal.runtime;
class AddrRange_asInterface {
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoUIntptr return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function equals(_b:stdgo._internal.runtime.Runtime_addrrange.AddrRange):Bool return @:_0 __self__.value.equals(_b);
    @:keep
    @:tdfield
    public dynamic function limit():stdgo.GoUIntptr return @:_0 __self__.value.limit();
    @:keep
    @:tdfield
    public dynamic function base():stdgo.GoUIntptr return @:_0 __self__.value.base();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _takeFromFront(_0:stdgo.GoUIntptr, _1:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:_0 __self__.value._takeFromFront(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _takeFromBack(_0:stdgo.GoUIntptr, _1:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:_0 __self__.value._takeFromBack(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _subtract(_0:stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange):stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:_0 __self__.value._subtract(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _size():stdgo.GoUIntptr return @:_0 __self__.value._size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _removeGreaterEqual(_0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:_0 __self__.value._removeGreaterEqual(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _contains(_0:stdgo.GoUIntptr):Bool return @:_0 __self__.value._contains(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_addrrangepointer.AddrRangePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
