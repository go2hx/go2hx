package stdgo._internal.crypto.internal.edwards25519.field;
function _mul64(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128.T_uint128 {
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_a, _b), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        return (new stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128.T_uint128(_lo, _hi) : stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128.T_uint128);
    }
