package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _add128(_a:_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128, _b:_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128):_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128 {
        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_a._lo, _b._lo, (0i64 : stdgo.GoUInt64)), _lo:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_a._hi, _b._hi, _c), _hi:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        if (_c != ((0i64 : stdgo.GoUInt64))) {
            throw stdgo.Go.toInterface(("poly1305: unexpected overflow" : stdgo.GoString));
        };
        return (new _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128(_lo, _hi) : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
    }
