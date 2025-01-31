package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension) class Rectangle {
    public var min : stdgo._internal.image.Image_Point.Point = ({} : stdgo._internal.image.Image_Point.Point);
    public var max : stdgo._internal.image.Image_Point.Point = ({} : stdgo._internal.image.Image_Point.Point);
    public function new(?min:stdgo._internal.image.Image_Point.Point, ?max:stdgo._internal.image.Image_Point.Point) {
        if (min != null) this.min = min;
        if (max != null) this.max = max;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rectangle(min, max);
    }
}
