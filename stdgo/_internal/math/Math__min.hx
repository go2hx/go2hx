package stdgo._internal.math;
function _min(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if ((stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) || stdgo._internal.math.Math_isInf.isInf(_y, (-1 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        } else if ((stdgo._internal.math.Math_isNaN.isNaN(_x) || stdgo._internal.math.Math_isNaN.isNaN(_y) : Bool)) {
            return stdgo._internal.math.Math_naN.naN();
        } else if (((_x == (0 : stdgo.GoFloat64)) && (_x == _y) : Bool)) {
            if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                return _x;
            };
            return _y;
        };
        if ((_x < _y : Bool)) {
            return _x;
        };
        return _y;
    }
