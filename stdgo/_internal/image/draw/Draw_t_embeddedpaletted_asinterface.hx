package stdgo._internal.image.draw;
class T_embeddedPaletted_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function subImage(_0:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image return @:_0 __self__.value.subImage(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setRGBA64(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_rgba64.RGBA64):Void @:_0 __self__.value.setRGBA64(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setColorIndex(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo.GoUInt8):Void @:_0 __self__.value.setColorIndex(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function set(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_color.Color):Void @:_0 __self__.value.set(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function rGBA64At(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 return @:_0 __self__.value.rGBA64At(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pixOffset(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.pixOffset(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function opaque():Bool return @:_0 __self__.value.opaque();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function colorModel():stdgo._internal.image.color.Color_model.Model return @:_0 __self__.value.colorModel();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function colorIndexAt(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo.GoUInt8 return @:_0 __self__.value.colorIndexAt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function bounds():stdgo._internal.image.Image_rectangle.Rectangle return @:_0 __self__.value.bounds();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function at(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color return @:_0 __self__.value.at(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.draw.Draw_t_embeddedpalettedpointer.T_embeddedPalettedPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
