package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _lower(_c:stdgo.GoUInt8):stdgo.GoUInt8 {
        return (_c | (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
    }
