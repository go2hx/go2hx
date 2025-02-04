package stdgo._internal.image;
class NYCbCrA_asInterface {
    @:keep
    @:tdfield
    public dynamic function opaque():Bool return @:_0 __self__.value.opaque();
    @:keep
    @:tdfield
    public dynamic function subImage(_r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image return @:_0 __self__.value.subImage(_r);
    @:keep
    @:tdfield
    public dynamic function aOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.aOffset(_x, _y);
    @:keep
    @:tdfield
    public dynamic function nYCbCrAAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_nycbcra.NYCbCrA return @:_0 __self__.value.nYCbCrAAt(_x, _y);
    @:keep
    @:tdfield
    public dynamic function rGBA64At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 return @:_0 __self__.value.rGBA64At(_x, _y);
    @:keep
    @:tdfield
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color return @:_0 __self__.value.at(_x, _y);
    @:keep
    @:tdfield
    public dynamic function colorModel():stdgo._internal.image.color.Color_model.Model return @:_0 __self__.value.colorModel();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function yOffset(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.yOffset(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function yCbCrAt(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_ycbcr.YCbCr return @:_0 __self__.value.yCbCrAt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function cOffset(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.cOffset(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function bounds():stdgo._internal.image.Image_rectangle.Rectangle return @:_0 __self__.value.bounds();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.Image_nycbcrapointer.NYCbCrAPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
