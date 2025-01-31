package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.image.Image_Point_static_extension.Point_static_extension) class Point {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoInt, ?y:stdgo.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(x, y);
    }
}
