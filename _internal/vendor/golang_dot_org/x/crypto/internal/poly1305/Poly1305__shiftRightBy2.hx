package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _shiftRightBy2(_a:_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128):_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128 {
        _a._lo = ((_a._lo >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (((_a._hi & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _a._hi = (_a._hi >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return _a?.__copy__();
    }
