package stdgo._internal.image;
@:structInit @:using(stdgo._internal.image.Image_ycbcr_static_extension.YCbCr_static_extension) class YCbCr {
    public var y : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cb : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var yStride : stdgo.GoInt = 0;
    public var cStride : stdgo.GoInt = 0;
    public var subsampleRatio : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio = ((0 : stdgo.GoInt) : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio);
    public var rect : stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
    public function new(?y:stdgo.Slice<stdgo.GoUInt8>, ?cb:stdgo.Slice<stdgo.GoUInt8>, ?cr:stdgo.Slice<stdgo.GoUInt8>, ?yStride:stdgo.GoInt, ?cStride:stdgo.GoInt, ?subsampleRatio:stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio, ?rect:stdgo._internal.image.Image_rectangle.Rectangle) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
        if (yStride != null) this.yStride = yStride;
        if (cStride != null) this.cStride = cStride;
        if (subsampleRatio != null) this.subsampleRatio = subsampleRatio;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new YCbCr(y, cb, cr, yStride, cStride, subsampleRatio, rect);
    }
}
