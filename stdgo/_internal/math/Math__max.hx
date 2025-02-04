package stdgo._internal.math;
function _max(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if ((stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) || stdgo._internal.math.Math_isinf.isInf(_y, (1 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isnan.isNaN(_y) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (((_x == (0 : stdgo.GoFloat64)) && (_x == _y) : Bool)) {
            if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                return _y;
            };
            return _x;
        };
        if ((_x > _y : Bool)) {
            return _x;
        };
        return _y;
    }
