package _internal.vendor.golang_dot_org.x.net.http2.hpack;
class HeaderField_asInterface {
    @:keep
    public dynamic function size():stdgo.GoUInt32 return __self__.value.size();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function isPseudo():Bool return __self__.value.isPseudo();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
