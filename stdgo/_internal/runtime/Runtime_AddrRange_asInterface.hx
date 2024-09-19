package stdgo._internal.runtime;
class AddrRange_asInterface {
    @:keep
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:keep
    public dynamic function equals(_b:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):Bool return __self__.value.equals(_b);
    @:keep
    public dynamic function limit():stdgo.GoUIntptr return __self__.value.limit();
    @:keep
    public dynamic function base():stdgo.GoUIntptr return __self__.value.base();
    @:embedded
    public dynamic function _takeFromFront(_offset:stdgo.GoUIntptr, _kind:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return __self__.value._takeFromFront(_offset, _kind);
    @:embedded
    public dynamic function _takeFromBack(_offset:stdgo.GoUIntptr, _kind:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return __self__.value._takeFromBack(_offset, _kind);
    @:embedded
    public dynamic function _subtract(__0:stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return __self__.value._subtract(__0);
    @:embedded
    public dynamic function _size():stdgo.GoUIntptr return __self__.value._size();
    @:embedded
    public dynamic function _removeGreaterEqual(__0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return __self__.value._removeGreaterEqual(__0);
    @:embedded
    public dynamic function _contains(__0:stdgo.GoUIntptr):Bool return __self__.value._contains(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
