package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function _isExact(_x:stdgo.GoFloat64):Bool {
        return ((((stdgo._internal.math.Math_isNaN.isNaN(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (0 : stdgo.GoInt)) : Bool) || _x == (0 : stdgo.GoFloat64) : Bool) || _x == (1 : stdgo.GoFloat64) : Bool) || (_x == (-1 : stdgo.GoFloat64)) : Bool);
    }
