package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _cloneString(_x:stdgo.GoString):stdgo.GoString {
        return ((_x : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
