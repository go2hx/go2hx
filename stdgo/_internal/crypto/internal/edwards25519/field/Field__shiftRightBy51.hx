package stdgo._internal.crypto.internal.edwards25519.field;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _shiftRightBy51(_a:stdgo._internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128):stdgo.GoUInt64 {
        return (((_a._hi << (13i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | ((_a._lo >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
    }
