package stdgo._internal.image.draw;
class T_slowestRGBA_asInterface {
    @:keep
    @:tdfield
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.pixOffset(_x, _y);
    @:keep
    @:tdfield
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void @:_0 __self__.value.set(_x, _y, _c);
    @:keep
    @:tdfield
    public dynamic function rGBA64At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 return @:_0 __self__.value.rGBA64At(_x, _y);
    @:keep
    @:tdfield
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color return @:_0 __self__.value.at(_x, _y);
    @:keep
    @:tdfield
    public dynamic function bounds():stdgo._internal.image.Image_rectangle.Rectangle return @:_0 __self__.value.bounds();
    @:keep
    @:tdfield
    public dynamic function colorModel():stdgo._internal.image.color.Color_model.Model return @:_0 __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.draw.Draw_t_slowestrgbapointer.T_slowestRGBAPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
