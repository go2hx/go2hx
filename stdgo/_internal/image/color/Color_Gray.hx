package stdgo._internal.image.color;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.image.color.Color_Gray_static_extension.Gray_static_extension) class Gray {
    public var y : stdgo.GoUInt8 = 0;
    public function new(?y:stdgo.GoUInt8) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray(y);
    }
}
