package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.image.Image_NYCbCrA_static_extension.NYCbCrA_static_extension) class NYCbCrA {
    @:embedded
    public var yCbCr : stdgo._internal.image.Image_YCbCr.YCbCr = ({} : stdgo._internal.image.Image_YCbCr.YCbCr);
    public var a : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var aStride : stdgo.GoInt = 0;
    public function new(?yCbCr:stdgo._internal.image.Image_YCbCr.YCbCr, ?a:stdgo.Slice<stdgo.GoUInt8>, ?aStride:stdgo.GoInt) {
        if (yCbCr != null) this.yCbCr = yCbCr;
        if (a != null) this.a = a;
        if (aStride != null) this.aStride = aStride;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var bounds(get, never) : () -> stdgo._internal.image.Image_Rectangle.Rectangle;
    @:embedded
    @:embeddededffieldsffun
    public function get_bounds():() -> stdgo._internal.image.Image_Rectangle.Rectangle return @:check32 this.yCbCr.bounds;
    public var cOffset(get, never) : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_cOffset():(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt return @:check32 this.yCbCr.cOffset;
    public var yCbCrAt(get, never) : (stdgo.GoInt, stdgo.GoInt) -> stdgo._internal.image.color.Color_YCbCr.YCbCr;
    @:embedded
    @:embeddededffieldsffun
    public function get_yCbCrAt():(stdgo.GoInt, stdgo.GoInt) -> stdgo._internal.image.color.Color_YCbCr.YCbCr return @:check32 this.yCbCr.yCbCrAt;
    public var yOffset(get, never) : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_yOffset():(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt return @:check32 this.yCbCr.yOffset;
    public function __copy__() {
        return new NYCbCrA(yCbCr, a, aStride);
    }
}
