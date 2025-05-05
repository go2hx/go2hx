package stdgo._internal.crypto.internal.edwards25519.field;
function _shiftRightBy51(_a:stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128.T_uint128):stdgo.GoUInt64 {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe_generic.go#L31"
        return (((_a._hi << (13i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | ((_a._lo >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
    }
