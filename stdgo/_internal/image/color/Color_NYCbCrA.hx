package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_NYCbCrA_static_extension.NYCbCrA_static_extension) class NYCbCrA {
    @:embedded
    public var ycbCr : stdgo._internal.image.color.Color_YCbCr.YCbCr = ({} : stdgo._internal.image.color.Color_YCbCr.YCbCr);
    public var a : stdgo.GoUInt8 = 0;
    public function new(?ycbCr:stdgo._internal.image.color.Color_YCbCr.YCbCr, ?a:stdgo.GoUInt8) {
        if (ycbCr != null) this.ycbCr = ycbCr;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NYCbCrA(ycbCr, a);
    }
}
