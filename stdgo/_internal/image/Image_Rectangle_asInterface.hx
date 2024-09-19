package stdgo._internal.image;
class Rectangle_asInterface {
    @:keep
    public dynamic function colorModel():stdgo._internal.image.color.Color_Model.Model return __self__.value.colorModel();
    @:keep
    public dynamic function bounds():stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.bounds();
    @:keep
    public dynamic function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 return __self__.value.rgba64at(_x, _y);
    @:keep
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return __self__.value.at(_x, _y);
    @:keep
    public dynamic function canon():stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.canon();
    @:keep
    public dynamic function in_(_s:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return __self__.value.in_(_s);
    @:keep
    public dynamic function overlaps(_s:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return __self__.value.overlaps(_s);
    @:keep
    public dynamic function eq(_s:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return __self__.value.eq(_s);
    @:keep
    public dynamic function empty():Bool return __self__.value.empty();
    @:keep
    public dynamic function union(_s:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.union(_s);
    @:keep
    public dynamic function intersect(_s:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.intersect(_s);
    @:keep
    public dynamic function inset(_n:stdgo.GoInt):stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.inset(_n);
    @:keep
    public dynamic function sub(_p:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.sub(_p);
    @:keep
    public dynamic function add(_p:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Rectangle.Rectangle return __self__.value.add(_p);
    @:keep
    public dynamic function size():stdgo._internal.image.Image_Point.Point return __self__.value.size();
    @:keep
    public dynamic function dy():stdgo.GoInt return __self__.value.dy();
    @:keep
    public dynamic function dx():stdgo.GoInt return __self__.value.dx();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.Image_Rectangle.Rectangle>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
