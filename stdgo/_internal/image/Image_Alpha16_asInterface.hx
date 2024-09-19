package stdgo._internal.image;
class Alpha16_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function setAlpha16(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Alpha16.Alpha16):Void __self__.value.setAlpha16(_x, _y, _c);
    @:keep
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void __self__.value.set(_x, _y, _c);
    @:keep
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.pixOffset(_x, _y);
    @:keep
    public dynamic function alpha16At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Alpha16.Alpha16 return __self__.value.alpha16At(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function bounds():stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color_Model.Model return __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.Image_Alpha16.Alpha16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
