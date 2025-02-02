package stdgo._internal.image.draw;
class T_floydSteinberg_asInterface {
    @:keep
    @:tdfield
    public dynamic function draw(_dst:stdgo._internal.image.draw.Draw_Image.Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point):Void @:_0 __self__.value.draw(_dst, _r, _src, _sp);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.draw.Draw_T_floydSteinbergPointer.T_floydSteinbergPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
