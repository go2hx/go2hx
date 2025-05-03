package stdgo._internal.math;
function _lz(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64):stdgo.GoInt32 {
        var _l = (0 : stdgo.GoInt32);
        _l = (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_u1) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/fma.go#L67"
        if (_l == ((64 : stdgo.GoInt32))) {
            _l = (_l + ((stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_u2) : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/fma.go#L70"
        return _l;
    }
