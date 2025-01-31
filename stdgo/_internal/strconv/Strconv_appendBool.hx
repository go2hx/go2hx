package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function appendBool(_dst:stdgo.Slice<stdgo.GoUInt8>, _b:Bool):stdgo.Slice<stdgo.GoUInt8> {
        if (_b) {
            return (_dst.__append__(...(("true" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return (_dst.__append__(...(("false" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
    }
