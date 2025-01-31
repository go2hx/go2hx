package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
function rect(_x0:stdgo.GoInt, _y0:stdgo.GoInt, _x1:stdgo.GoInt, _y1:stdgo.GoInt):stdgo._internal.image.Image_Rectangle.Rectangle {
        if ((_x0 > _x1 : Bool)) {
            {
                final __tmp__0 = _x1;
                final __tmp__1 = _x0;
                _x0 = __tmp__0;
                _x1 = __tmp__1;
            };
        };
        if ((_y0 > _y1 : Bool)) {
            {
                final __tmp__0 = _y1;
                final __tmp__1 = _y0;
                _y0 = __tmp__0;
                _y1 = __tmp__1;
            };
        };
        return (new stdgo._internal.image.Image_Rectangle.Rectangle((new stdgo._internal.image.Image_Point.Point(_x0, _y0) : stdgo._internal.image.Image_Point.Point), (new stdgo._internal.image.Image_Point.Point(_x1, _y1) : stdgo._internal.image.Image_Point.Point)) : stdgo._internal.image.Image_Rectangle.Rectangle);
    }
