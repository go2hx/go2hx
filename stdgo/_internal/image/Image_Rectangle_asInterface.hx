package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
class Rectangle_asInterface {
    @:keep
    @:tdfield
    public dynamic function colorModel():stdgo._internal.image.color.Color_Model.Model return @:_0 __self__.value.colorModel();
    @:keep
    @:tdfield
    public dynamic function bounds():stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.bounds();
    @:keep
    @:tdfield
    public dynamic function rGBA64At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 return @:_0 __self__.value.rGBA64At(_x, _y);
    @:keep
    @:tdfield
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return @:_0 __self__.value.at(_x, _y);
    @:keep
    @:tdfield
    public dynamic function canon():stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.canon();
    @:keep
    @:tdfield
    public dynamic function in_(_s:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return @:_0 __self__.value.in_(_s);
    @:keep
    @:tdfield
    public dynamic function overlaps(_s:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return @:_0 __self__.value.overlaps(_s);
    @:keep
    @:tdfield
    public dynamic function eq(_s:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return @:_0 __self__.value.eq(_s);
    @:keep
    @:tdfield
    public dynamic function empty():Bool return @:_0 __self__.value.empty();
    @:keep
    @:tdfield
    public dynamic function union(_s:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.union(_s);
    @:keep
    @:tdfield
    public dynamic function intersect(_s:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.intersect(_s);
    @:keep
    @:tdfield
    public dynamic function inset(_n:stdgo.GoInt):stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.inset(_n);
    @:keep
    @:tdfield
    public dynamic function sub(_p:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.sub(_p);
    @:keep
    @:tdfield
    public dynamic function add(_p:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.add(_p);
    @:keep
    @:tdfield
    public dynamic function size():stdgo._internal.image.Image_Point.Point return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function dy():stdgo.GoInt return @:_0 __self__.value.dy();
    @:keep
    @:tdfield
    public dynamic function dx():stdgo.GoInt return @:_0 __self__.value.dx();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.Image_RectanglePointer.RectanglePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
