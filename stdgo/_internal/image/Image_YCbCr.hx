package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.image.Image_YCbCr_static_extension.YCbCr_static_extension) class YCbCr {
    public var y : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cb : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var yStride : stdgo.GoInt = 0;
    public var cStride : stdgo.GoInt = 0;
    public var subsampleRatio : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio = ((0 : stdgo.GoInt) : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
    public var rect : stdgo._internal.image.Image_Rectangle.Rectangle = ({} : stdgo._internal.image.Image_Rectangle.Rectangle);
    public function new(?y:stdgo.Slice<stdgo.GoUInt8>, ?cb:stdgo.Slice<stdgo.GoUInt8>, ?cr:stdgo.Slice<stdgo.GoUInt8>, ?yStride:stdgo.GoInt, ?cStride:stdgo.GoInt, ?subsampleRatio:stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio, ?rect:stdgo._internal.image.Image_Rectangle.Rectangle) {
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
