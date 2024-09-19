package stdgo._internal.image;
class NYCbCrA_asInterface {
    @:keep
    public dynamic function opaque():Bool return __self__.value.opaque();
    @:keep
    public dynamic function subImage(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image return __self__.value.subImage(_r);
    @:keep
    public dynamic function aoffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.aoffset(_x, _y);
    @:keep
    public dynamic function nycbCrAAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA return __self__.value.nycbCrAAt(_x, _y);
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color_Model.Model return __self__.value.colorModel();
    @:embedded
    public dynamic function yoffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.yoffset(_x, _y);
    @:embedded
    public dynamic function ycbCrAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_YCbCr.YCbCr return __self__.value.ycbCrAt(_x, _y);
    @:embedded
    public dynamic function coffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.value.coffset(_x, _y);
    @:embedded
    public dynamic function bounds():stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.bounds();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
