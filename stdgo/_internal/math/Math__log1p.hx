package stdgo._internal.math;
function _log1p(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x < (-1 : stdgo.GoFloat64) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (_x == (-1 : stdgo.GoFloat64)) {
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        };
        var _absx = (stdgo._internal.math.Math_abs.abs(_x) : stdgo.GoFloat64);
        var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _iu:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _k = (1 : stdgo.GoInt);
        if ((_absx < (0.41421356237309503 : stdgo.GoFloat64) : Bool)) {
            if ((_absx < (1.862645149230957e-09 : stdgo.GoFloat64) : Bool)) {
                if ((_absx < (5.551115123125783e-17 : stdgo.GoFloat64) : Bool)) {
                    return _x;
                };
                return (_x - ((_x * _x : stdgo.GoFloat64) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            if ((_x > (-0.2928932188134525 : stdgo.GoFloat64) : Bool)) {
                _k = (0 : stdgo.GoInt);
                _f = _x;
                _iu = (1i64 : stdgo.GoUInt64);
            };
        };
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if (_k != ((0 : stdgo.GoInt))) {
            var _u:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_absx < (9.007199254740992e+15 : stdgo.GoFloat64) : Bool)) {
                _u = ((1 : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
                _iu = stdgo._internal.math.Math_float64bits.float64bits(_u);
                _k = ((((_iu >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (1023i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
                if ((_k > (0 : stdgo.GoInt) : Bool)) {
                    _c = ((1 : stdgo.GoFloat64) - ((_u - _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                } else {
                    _c = (_x - ((_u - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                };
                _c = (_c / (_u) : stdgo.GoFloat64);
            } else {
                _u = _x;
                _iu = stdgo._internal.math.Math_float64bits.float64bits(_u);
                _k = ((((_iu >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (1023i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
                _c = (0 : stdgo.GoFloat64);
            };
            _iu = (_iu & ((4503599627370495i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_iu < (1865452045155277i64 : stdgo.GoUInt64) : Bool)) {
                _u = stdgo._internal.math.Math_float64frombits.float64frombits((_iu | (4607182418800017408i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
            } else {
                _k++;
                _u = stdgo._internal.math.Math_float64frombits.float64frombits((_iu | (4602678819172646912i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
                _iu = ((((4503599627370496i64 : stdgo.GoUInt64) - _iu : stdgo.GoUInt64)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            };
            _f = (_u - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _hfsq = (((0.5 : stdgo.GoFloat64) * _f : stdgo.GoFloat64) * _f : stdgo.GoFloat64);
        var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _z = __2, r = __1, _s = __0;
        if (_iu == ((0i64 : stdgo.GoUInt64))) {
            if (_f == (0 : stdgo.GoFloat64)) {
                if (_k == ((0 : stdgo.GoInt))) {
                    return (0 : stdgo.GoFloat64);
                };
                _c = (_c + (((_k : stdgo.GoFloat64) * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                return (((_k : stdgo.GoFloat64) * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) + _c : stdgo.GoFloat64);
            };
            r = (_hfsq * (((1 : stdgo.GoFloat64) - ((0.6666666666666666 : stdgo.GoFloat64) * _f : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if (_k == ((0 : stdgo.GoInt))) {
                return (_f - r : stdgo.GoFloat64);
            };
            return (((_k : stdgo.GoFloat64) * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) - ((((r - ((((_k : stdgo.GoFloat64) * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) + _c : stdgo.GoFloat64)) : stdgo.GoFloat64)) - _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        _s = (_f / (((2 : stdgo.GoFloat64) + _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _z = (_s * _s : stdgo.GoFloat64);
        r = (_z * (((0.6666666666666735 : stdgo.GoFloat64) + (_z * (((0.3999999999940942 : stdgo.GoFloat64) + (_z * (((0.2857142874366239 : stdgo.GoFloat64) + (_z * (((0.22222198432149784 : stdgo.GoFloat64) + (_z * (((0.1818357216161805 : stdgo.GoFloat64) + (_z * (((0.15313837699209373 : stdgo.GoFloat64) + (_z * (0.14798198605116586 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if (_k == ((0 : stdgo.GoInt))) {
            return (_f - ((_hfsq - (_s * ((_hfsq + r : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        return (((_k : stdgo.GoFloat64) * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) - ((((_hfsq - (((_s * ((_hfsq + r : stdgo.GoFloat64)) : stdgo.GoFloat64) + ((((_k : stdgo.GoFloat64) * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) + _c : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64)) - _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
    }
