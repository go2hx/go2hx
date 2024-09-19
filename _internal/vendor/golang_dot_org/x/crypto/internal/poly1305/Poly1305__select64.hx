package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _select64(_v:stdgo.GoUInt64, _x:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64 {
        return (((-1 ^ (_v - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & _x : stdgo.GoUInt64) | (((_v - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & _y : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
