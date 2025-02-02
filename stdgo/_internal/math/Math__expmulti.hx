package stdgo._internal.math;
function _expmulti(_hi:stdgo.GoFloat64, _lo:stdgo.GoFloat64, _k:stdgo.GoInt):stdgo.GoFloat64 {
        {};
        var _r = (_hi - _lo : stdgo.GoFloat64);
        var _t = (_r * _r : stdgo.GoFloat64);
        var _c = (_r - (_t * (((0.16666666666666666 : stdgo.GoFloat64) + (_t * (((-0.0027777777777015593 : stdgo.GoFloat64) + (_t * (((6.613756321437934e-05 : stdgo.GoFloat64) + (_t * (((-1.6533902205465252e-06 : stdgo.GoFloat64) + (_t * (4.1381367970572385e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _y = ((1 : stdgo.GoFloat64) - ((((_lo - (((_r * _c : stdgo.GoFloat64)) / (((2 : stdgo.GoFloat64) - _c : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) - _hi : stdgo.GoFloat64)) : stdgo.GoFloat64);
        return stdgo._internal.math.Math_ldexp.ldexp(_y, _k);
    }
