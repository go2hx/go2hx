package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt {
        return (((_x * (108853 : stdgo.GoInt) : stdgo.GoInt)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoInt);
    }
