package stdgo._internal.math.big;
function _alike32(_x:stdgo.GoFloat32, _y:stdgo.GoFloat32):Bool {
        return ((_x == _y) && (stdgo._internal.math.Math_signbit.signbit((_x : stdgo.GoFloat64)) == stdgo._internal.math.Math_signbit.signbit((_y : stdgo.GoFloat64))) : Bool);
    }
