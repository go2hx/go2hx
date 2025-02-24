package stdgo._internal.math;
function _hypot(_p:stdgo.GoFloat64, _q:stdgo.GoFloat64):stdgo.GoFloat64 {
        {
            final __tmp__0 = stdgo._internal.math.Math_abs.abs(_p);
            final __tmp__1 = stdgo._internal.math.Math_abs.abs(_q);
            _p = __tmp__0;
            _q = __tmp__1;
        };
        if ((stdgo._internal.math.Math_isinf.isInf(_p, (1 : stdgo.GoInt)) || stdgo._internal.math.Math_isinf.isInf(_q, (1 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if ((stdgo._internal.math.Math_isnan.isNaN(_p) || stdgo._internal.math.Math_isnan.isNaN(_q) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        };
        if ((_p < _q : Bool)) {
            {
                final __tmp__0 = _q;
                final __tmp__1 = _p;
                _p = __tmp__0;
                _q = __tmp__1;
            };
        };
        if (_p == (0 : stdgo.GoFloat64)) {
            return (0 : stdgo.GoFloat64);
        };
        _q = (_q / _p : stdgo.GoFloat64);
        return (_p * stdgo._internal.math.Math_sqrt.sqrt(((1 : stdgo.GoFloat64) + (_q * _q : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
    }
