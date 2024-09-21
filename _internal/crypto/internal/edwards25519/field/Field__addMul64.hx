package _internal.crypto.internal.edwards25519.field;
function _addMul64(_v:_internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128, _a:stdgo.GoUInt64, _b:stdgo.GoUInt64):_internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128 {
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_a, _b), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_lo, _v._lo, (0i64 : stdgo.GoUInt64)), _lo:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_hi, _v._hi, _c);
            _hi = __tmp__._0;
        };
        return (new _internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128(_lo, _hi) : _internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128);
    }
