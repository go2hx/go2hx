package stdgo._internal.crypto.internal.edwards25519.field;
function _mask64Bits(_cond:stdgo.GoInt):stdgo.GoUInt64 {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L258"
        return (-1 ^ ((_cond : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
    }
