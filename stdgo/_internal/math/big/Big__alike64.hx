package stdgo._internal.math.big;
function _alike64(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):Bool {
        return ((_x == _y) && (stdgo._internal.math.Math_signbit.signbit(_x) == stdgo._internal.math.Math_signbit.signbit(_y)) : Bool);
    }
