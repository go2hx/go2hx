package stdgo._internal.image;
class YCbCr_asInterface {
    @:keep
    @:tdfield
    public dynamic function opaque():Bool return @:_0 __self__.value.opaque();
    @:keep
    @:tdfield
    public dynamic function subImage(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image return @:_0 __self__.value.subImage(_r);
    @:keep
    @:tdfield
    public dynamic function cOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.cOffset(_x, _y);
    @:keep
    @:tdfield
    public dynamic function yOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.yOffset(_x, _y);
    @:keep
    @:tdfield
    public dynamic function yCbCrAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_YCbCr.YCbCr return @:_0 __self__.value.yCbCrAt(_x, _y);
    @:keep
    @:tdfield
    public dynamic function rGBA64At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 return @:_0 __self__.value.rGBA64At(_x, _y);
    @:keep
    @:tdfield
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return @:_0 __self__.value.at(_x, _y);
    @:keep
    @:tdfield
    public dynamic function bounds():stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.bounds();
    @:keep
    @:tdfield
    public dynamic function colorModel():stdgo._internal.image.color.Color_Model.Model return @:_0 __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.Image_YCbCrPointer.YCbCrPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
