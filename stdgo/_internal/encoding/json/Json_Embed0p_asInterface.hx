package stdgo._internal.encoding.json;
class Embed0p_asInterface {
    @:embedded
    public dynamic function sub(_q:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point return __self__.value.sub(_q);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function mul(_n:stdgo.GoInt):stdgo._internal.image.Image_Point.Point return __self__.value.mul(_n);
    @:embedded
    public dynamic function mod(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Point.Point return __self__.value.mod(_r);
    @:embedded
    public dynamic function in_(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return __self__.value.in_(_r);
    @:embedded
    public dynamic function eq(_q:stdgo._internal.image.Image_Point.Point):Bool return __self__.value.eq(_q);
    @:embedded
    public dynamic function div(_n:stdgo.GoInt):stdgo._internal.image.Image_Point.Point return __self__.value.div(_n);
    @:embedded
    public dynamic function add(_q:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point return __self__.value.add(_q);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.json.Json_Embed0p.Embed0p>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
