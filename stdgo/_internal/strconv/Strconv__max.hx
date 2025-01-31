package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        if ((_a > _b : Bool)) {
            return _a;
        };
        return _b;
    }
