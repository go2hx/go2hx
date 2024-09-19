package stdgo._internal.image;
@:structInit @:using(stdgo._internal.image.Image_NYCbCrA_static_extension.NYCbCrA_static_extension) class NYCbCrA {
    @:embedded
    public var ycbCr : stdgo._internal.image.Image_YCbCr.YCbCr = ({} : stdgo._internal.image.Image_YCbCr.YCbCr);
    public var a : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var astride : stdgo.GoInt = 0;
    public function new(?ycbCr:stdgo._internal.image.Image_YCbCr.YCbCr, ?a:stdgo.Slice<stdgo.GoUInt8>, ?astride:stdgo.GoInt) {
        if (ycbCr != null) this.ycbCr = ycbCr;
        if (a != null) this.a = a;
        if (astride != null) this.astride = astride;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function bounds():stdgo._internal.image.Image_Rectangle.Rectangle return this.ycbCr.bounds();
    @:embedded
    public function coffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return this.ycbCr.coffset(_x, _y);
    @:embedded
    public function ycbCrAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_YCbCr.YCbCr return this.ycbCr.ycbCrAt(_x, _y);
    @:embedded
    public function yoffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return this.ycbCr.yoffset(_x, _y);
    public function __copy__() {
        return new NYCbCrA(ycbCr, a, astride);
    }
}
