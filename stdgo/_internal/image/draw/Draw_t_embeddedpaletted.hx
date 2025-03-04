package stdgo._internal.image.draw;
@:structInit @:using(stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension) class T_embeddedPaletted {
    @:embedded
    public var paletted : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
    public function new(?paletted:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>) {
        if (paletted != null) this.paletted = paletted;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var at(get, never) : (stdgo.GoInt, stdgo.GoInt) -> stdgo._internal.image.color.Color_color.Color;
    @:embedded
    @:embeddededffieldsffun
    public function get_at():(stdgo.GoInt, stdgo.GoInt) -> stdgo._internal.image.color.Color_color.Color return @:check32 this.paletted.at;
    public var bounds(get, never) : () -> stdgo._internal.image.Image_rectangle.Rectangle;
    @:embedded
    @:embeddededffieldsffun
    public function get_bounds():() -> stdgo._internal.image.Image_rectangle.Rectangle return @:check32 this.paletted.bounds;
    public var colorIndexAt(get, never) : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoUInt8;
    @:embedded
    @:embeddededffieldsffun
    public function get_colorIndexAt():(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoUInt8 return @:check32 this.paletted.colorIndexAt;
    public var colorModel(get, never) : () -> stdgo._internal.image.color.Color_model.Model;
    @:embedded
    @:embeddededffieldsffun
    public function get_colorModel():() -> stdgo._internal.image.color.Color_model.Model return @:check32 this.paletted.colorModel;
    public var opaque(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_opaque():() -> Bool return @:check32 this.paletted.opaque;
    public var pixOffset(get, never) : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_pixOffset():(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt return @:check32 this.paletted.pixOffset;
    public var rGBA64At(get, never) : (stdgo.GoInt, stdgo.GoInt) -> stdgo._internal.image.color.Color_rgba64.RGBA64;
    @:embedded
    @:embeddededffieldsffun
    public function get_rGBA64At():(stdgo.GoInt, stdgo.GoInt) -> stdgo._internal.image.color.Color_rgba64.RGBA64 return @:check32 this.paletted.rGBA64At;
    public var set(get, never) : (stdgo.GoInt, stdgo.GoInt, stdgo._internal.image.color.Color_color.Color) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_set():(stdgo.GoInt, stdgo.GoInt, stdgo._internal.image.color.Color_color.Color) -> Void return @:check32 this.paletted.set;
    public var setColorIndex(get, never) : (stdgo.GoInt, stdgo.GoInt, stdgo.GoUInt8) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setColorIndex():(stdgo.GoInt, stdgo.GoInt, stdgo.GoUInt8) -> Void return @:check32 this.paletted.setColorIndex;
    public var setRGBA64(get, never) : (stdgo.GoInt, stdgo.GoInt, stdgo._internal.image.color.Color_rgba64.RGBA64) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setRGBA64():(stdgo.GoInt, stdgo.GoInt, stdgo._internal.image.color.Color_rgba64.RGBA64) -> Void return @:check32 this.paletted.setRGBA64;
    public var subImage(get, never) : stdgo._internal.image.Image_rectangle.Rectangle -> stdgo._internal.image.Image_image.Image;
    @:embedded
    @:embeddededffieldsffun
    public function get_subImage():stdgo._internal.image.Image_rectangle.Rectangle -> stdgo._internal.image.Image_image.Image return @:check32 this.paletted.subImage;
    public function __copy__() {
        return new T_embeddedPaletted(paletted);
    }
}
