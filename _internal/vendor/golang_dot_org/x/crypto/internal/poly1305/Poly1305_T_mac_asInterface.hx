package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
class T_mac_asInterface {
    @:embedded
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:embedded
    public dynamic function sum(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void __self__.value.sum(_out);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_mac.T_mac>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
