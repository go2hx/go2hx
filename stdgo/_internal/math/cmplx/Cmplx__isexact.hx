package stdgo._internal.math.cmplx;
function _isExact(_x:stdgo.GoFloat64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L941"
        return ((((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool) || _x == ((0 : stdgo.GoFloat64)) : Bool) || _x == ((1 : stdgo.GoFloat64)) : Bool) || (_x == (-1 : stdgo.GoFloat64)) : Bool);
    }
