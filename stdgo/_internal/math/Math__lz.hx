package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _lz(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64):stdgo.GoInt32 {
        var _l = (0 : stdgo.GoInt32);
        _l = (stdgo._internal.math.bits.Bits_leadingZeros64.leadingZeros64(_u1) : stdgo.GoInt32);
        if (_l == ((64 : stdgo.GoInt32))) {
            _l = (_l + ((stdgo._internal.math.bits.Bits_leadingZeros64.leadingZeros64(_u2) : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        return _l;
    }
