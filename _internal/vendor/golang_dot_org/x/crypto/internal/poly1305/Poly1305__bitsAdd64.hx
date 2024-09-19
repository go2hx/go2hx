package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _bitsAdd64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _sum = (0 : stdgo.GoUInt64), _carryOut = (0 : stdgo.GoUInt64);
        return stdgo._internal.math.bits.Bits_add64.add64(_x, _y, _carry);
    }
