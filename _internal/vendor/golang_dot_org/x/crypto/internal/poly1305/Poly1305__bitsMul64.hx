package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _bitsMul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _hi = (0 : stdgo.GoUInt64), _lo = (0 : stdgo.GoUInt64);
        return stdgo._internal.math.bits.Bits_mul64.mul64(_x, _y);
    }
