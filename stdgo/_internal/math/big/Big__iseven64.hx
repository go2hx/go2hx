package stdgo._internal.math.big;
function _isEven64(_f:stdgo.GoFloat64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L618"
        return (stdgo._internal.math.Math_float64bits.float64bits(_f) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64));
    }
