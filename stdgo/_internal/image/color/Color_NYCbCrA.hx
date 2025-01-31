package stdgo._internal.image.color;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.image.color.Color_NYCbCrA_static_extension.NYCbCrA_static_extension) class NYCbCrA {
    @:embedded
    public var yCbCr : stdgo._internal.image.color.Color_YCbCr.YCbCr = ({} : stdgo._internal.image.color.Color_YCbCr.YCbCr);
    public var a : stdgo.GoUInt8 = 0;
    public function new(?yCbCr:stdgo._internal.image.color.Color_YCbCr.YCbCr, ?a:stdgo.GoUInt8) {
        if (yCbCr != null) this.yCbCr = yCbCr;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NYCbCrA(yCbCr, a);
    }
}
