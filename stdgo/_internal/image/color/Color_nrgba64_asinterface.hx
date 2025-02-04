package stdgo._internal.image.color;
class NRGBA64_asInterface {
    @:keep
    @:tdfield
    public dynamic function rGBA():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return @:_0 __self__.value.rGBA();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.color.Color_nrgba64pointer.NRGBA64Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
