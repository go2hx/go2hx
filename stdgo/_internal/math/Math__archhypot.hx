package stdgo._internal.math;
function _archHypot(_p:stdgo.GoFloat64, _q:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (stdgo._internal.math.Math_isinf.isInf(_p, 0) || stdgo._internal.math.Math_isinf.isInf(_q, 0)) return stdgo._internal.math.Math_inf.inf(1);
        if (!std.Math.isFinite(_p.toBasic()) || std.Math.isNaN(_q.toBasic())) return stdgo._internal.math.Math_nan.naN();
        _p = stdgo._internal.math.Math_abs.abs(_p);
        _q = stdgo._internal.math.Math_abs.abs(_q);
        if (_p < _q) {
            final temp = _p;
            _p = _q;
            _q = temp;
        };
        if (_p == 0) return 0;
        _q = _q / _p;
        return _p * stdgo._internal.math.Math_sqrt.sqrt(1 + _q * _q);
    }
