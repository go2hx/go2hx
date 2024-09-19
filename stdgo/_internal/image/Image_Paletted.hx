package stdgo._internal.image;
@:structInit @:using(stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension) class Paletted {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image_Rectangle.Rectangle = ({} : stdgo._internal.image.Image_Rectangle.Rectangle);
    public var palette : stdgo._internal.image.color.Color_Palette.Palette = new stdgo._internal.image.color.Color_Palette.Palette(0, 0);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image_Rectangle.Rectangle, ?palette:stdgo._internal.image.color.Color_Palette.Palette) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
        if (palette != null) this.palette = palette;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Paletted(pix, stride, rect, palette);
    }
}