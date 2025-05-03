package stdgo._internal.math.big;
function _alike64(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L202"
        return ((_x == _y) && (stdgo._internal.math.Math_signbit.signbit(_x) == stdgo._internal.math.Math_signbit.signbit(_y)) : Bool);
    }
