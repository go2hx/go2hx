package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function itoa(_i:stdgo.GoInt):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__();
    }
