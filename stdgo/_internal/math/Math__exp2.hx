package stdgo._internal.math;
function _exp2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            return _x;
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if ((_x > (1023.9999999999999 : stdgo.GoFloat64) : Bool)) {
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if ((_x < (-1074 : stdgo.GoFloat64) : Bool)) {
            return (0 : stdgo.GoFloat64);
        };
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        } else if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        };
        var _t = (_x - (_k : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _hi = (_t * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _lo = (-_t * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64);
        return stdgo._internal.math.Math__expmulti._expmulti(_hi, _lo, _k);
    }
