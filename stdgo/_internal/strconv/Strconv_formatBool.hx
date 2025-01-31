package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function formatBool(_b:Bool):stdgo.GoString {
        if (_b) {
            return ("true" : stdgo.GoString);
        };
        return ("false" : stdgo.GoString);
    }
