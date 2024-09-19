package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _bitsSub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _diff = (0 : stdgo.GoUInt64), _borrowOut = (0 : stdgo.GoUInt64);
        return stdgo._internal.math.bits.Bits_sub64.sub64(_x, _y, _borrow);
    }
