package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
function _add2NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        if ((((_x < (0 : stdgo.GoInt) : Bool)) || ((_y < (0 : stdgo.GoInt) : Bool)) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var _a = (_x + _y : stdgo.GoInt);
        if ((_a < (0 : stdgo.GoInt) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        return _a;
    }
