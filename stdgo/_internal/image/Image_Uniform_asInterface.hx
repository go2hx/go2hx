package stdgo._internal.image;
class Uniform_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function convert(_0:stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Color.Color return __self__.value.convert(_0);
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color_Model.Model return __self__.value.colorModel();
    @:keep
    public dynamic function rgba():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return __self__.value.rgba();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.Image_Uniform.Uniform>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
