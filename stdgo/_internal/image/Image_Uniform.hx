package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension) class Uniform {
    public var c : stdgo._internal.image.color.Color_Color.Color = (null : stdgo._internal.image.color.Color_Color.Color);
    public function new(?c:stdgo._internal.image.color.Color_Color.Color) {
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uniform(c);
    }
}
