package stdgo._internal.math.cmplx;
function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        if ((_x : stdgo.GoComplex128).imag == (0 : stdgo.GoFloat64)) {
            if ((_x : stdgo.GoComplex128).real == (0 : stdgo.GoFloat64)) {
                return new stdgo.GoComplex128((0 : stdgo.GoFloat64), (_x : stdgo.GoComplex128).imag);
            };
            if (((_x : stdgo.GoComplex128).real < (0 : stdgo.GoFloat64) : Bool)) {
                return new stdgo.GoComplex128((0 : stdgo.GoFloat64), stdgo._internal.math.Math_copysign.copysign(stdgo._internal.math.Math_sqrt.sqrt(-(_x : stdgo.GoComplex128).real), (_x : stdgo.GoComplex128).imag));
            };
            return new stdgo.GoComplex128(stdgo._internal.math.Math_sqrt.sqrt((_x : stdgo.GoComplex128).real), (_x : stdgo.GoComplex128).imag);
        } else if (stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).imag, (0 : stdgo.GoInt))) {
            return new stdgo.GoComplex128(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), (_x : stdgo.GoComplex128).imag);
        };
        if ((_x : stdgo.GoComplex128).real == (0 : stdgo.GoFloat64)) {
            if (((_x : stdgo.GoComplex128).imag < (0 : stdgo.GoFloat64) : Bool)) {
                var _r = (stdgo._internal.math.Math_sqrt.sqrt(((-0.5 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) : stdgo.GoFloat64);
                return new stdgo.GoComplex128(_r, -_r);
            };
            var _r = (stdgo._internal.math.Math_sqrt.sqrt(((0.5 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) : stdgo.GoFloat64);
            return new stdgo.GoComplex128(_r, _r);
        };
        var _a = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64);
        var _b = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
        var _scale:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if (((stdgo._internal.math.Math_abs.abs(_a) > (4 : stdgo.GoFloat64) : Bool) || (stdgo._internal.math.Math_abs.abs(_b) > (4 : stdgo.GoFloat64) : Bool) : Bool)) {
            _a = (_a * (0.25 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _b = (_b * (0.25 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _scale = (2 : stdgo.GoFloat64);
        } else {
            _a = (_a * (1.8014398509481984e+16 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _b = (_b * (1.8014398509481984e+16 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _scale = (7.450580596923828e-09 : stdgo.GoFloat64);
        };
        var _r = (stdgo._internal.math.Math_hypot.hypot(_a, _b) : stdgo.GoFloat64);
        var _t:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_a > (0 : stdgo.GoFloat64) : Bool)) {
            _t = stdgo._internal.math.Math_sqrt.sqrt((((0.5 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + ((0.5 : stdgo.GoFloat64) * _a : stdgo.GoFloat64) : stdgo.GoFloat64));
            _r = (_scale * stdgo._internal.math.Math_abs.abs(((((0.5 : stdgo.GoFloat64) * _b : stdgo.GoFloat64)) / _t : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _t = (_t * (_scale) : stdgo.GoFloat64);
        } else {
            _r = stdgo._internal.math.Math_sqrt.sqrt((((0.5 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) - ((0.5 : stdgo.GoFloat64) * _a : stdgo.GoFloat64) : stdgo.GoFloat64));
            _t = (_scale * stdgo._internal.math.Math_abs.abs(((((0.5 : stdgo.GoFloat64) * _b : stdgo.GoFloat64)) / _r : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _r = (_r * (_scale) : stdgo.GoFloat64);
        };
        if ((_b < (0 : stdgo.GoFloat64) : Bool)) {
            return new stdgo.GoComplex128(_t, -_r);
        };
        return new stdgo.GoComplex128(_t, _r);
    }
