package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _digitZero(_dst:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        return (_dst.length);
    }
