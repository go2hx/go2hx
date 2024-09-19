package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _mul64(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128 {
        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsMul64._bitsMul64(_a, _b), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        return (new _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128(_lo, _hi) : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
    }
