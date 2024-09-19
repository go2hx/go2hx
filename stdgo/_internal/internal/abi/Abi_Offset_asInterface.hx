package stdgo._internal.internal.abi;
class Offset_asInterface {
    @:keep
    public dynamic function plusUncommon():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.plusUncommon();
    @:keep
    public dynamic function offset():stdgo.GoUInt64 return __self__.value.offset();
    @:keep
    public dynamic function interface_():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.interface_();
    @:keep
    public dynamic function string():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.string();
    @:keep
    public dynamic function slice():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.slice();
    @:keep
    public dynamic function p():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.p();
    @:keep
    public dynamic function d64():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.d64();
    @:keep
    public dynamic function d32():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.d32();
    @:keep
    public dynamic function d16():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.d16();
    @:keep
    public dynamic function d8():stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.d8();
    @:keep
    public dynamic function _plus(_x:stdgo.GoUInt64):stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value._plus(_x);
    @:keep
    public dynamic function align(_a:stdgo.GoUInt8):stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value.align(_a);
    @:keep
    public dynamic function _align_(_a:stdgo.GoUInt8):stdgo._internal.internal.abi.Abi_Offset.Offset return __self__.value._align_(_a);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.abi.Abi_Offset.Offset>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
