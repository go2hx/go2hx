package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function quoteRune(_r:stdgo.GoInt32):stdgo.GoString {
        return stdgo._internal.strconv.Strconv__quoteRuneWith._quoteRuneWith(_r, (39 : stdgo.GoUInt8), false, false)?.__copy__();
    }
