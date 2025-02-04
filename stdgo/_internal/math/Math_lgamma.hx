package stdgo._internal.math;
function lgamma(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _lgamma = (0 : stdgo.GoFloat64), _sign = (0 : stdgo.GoInt);
        {};
        _sign = (1 : stdgo.GoInt);
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            _lgamma = _x;
            return { _0 : _lgamma, _1 : _sign };
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            _lgamma = _x;
            return { _0 : _lgamma, _1 : _sign };
        } else if (_x == (0 : stdgo.GoFloat64)) {
            _lgamma = stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            return { _0 : _lgamma, _1 : _sign };
        };
        var _neg = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _neg = true;
        };
        if ((_x < (8.470329472543003e-22 : stdgo.GoFloat64) : Bool)) {
            if (_neg) {
                _sign = (-1 : stdgo.GoInt);
            };
            _lgamma = -stdgo._internal.math.Math_log.log(_x);
            return { _0 : _lgamma, _1 : _sign };
        };
        var _nadj:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if (_neg) {
            if ((_x >= (4.503599627370496e+15 : stdgo.GoFloat64) : Bool)) {
                _lgamma = stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                return { _0 : _lgamma, _1 : _sign };
            };
            var _t = (stdgo._internal.math.Math__sinpi._sinPi(_x) : stdgo.GoFloat64);
            if (_t == (0 : stdgo.GoFloat64)) {
                _lgamma = stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                return { _0 : _lgamma, _1 : _sign };
            };
            _nadj = stdgo._internal.math.Math_log.log(((3.141592653589793 : stdgo.GoFloat64) / stdgo._internal.math.Math_abs.abs((_t * _x : stdgo.GoFloat64)) : stdgo.GoFloat64));
            if ((_t < (0 : stdgo.GoFloat64) : Bool)) {
                _sign = (-1 : stdgo.GoInt);
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (((_x == (1 : stdgo.GoFloat64)) || (_x == (2 : stdgo.GoFloat64)) : Bool)) {
                    _lgamma = (0 : stdgo.GoFloat64);
                    return { _0 : _lgamma, _1 : _sign };
                    break;
                } else if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                    var _y:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    if ((_x <= (0.9 : stdgo.GoFloat64) : Bool)) {
                        _lgamma = -stdgo._internal.math.Math_log.log(_x);
                        if ((_x >= (0.7316321449683623 : stdgo.GoFloat64) : Bool)) {
                            _y = ((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64);
                            _i = (0 : stdgo.GoInt);
                        } else if ((_x >= (0.19163214496836226 : stdgo.GoFloat64) : Bool)) {
                            _y = (_x - (0.46163214496836225 : stdgo.GoFloat64) : stdgo.GoFloat64);
                            _i = (1 : stdgo.GoInt);
                        } else {
                            _y = _x;
                            _i = (2 : stdgo.GoInt);
                        };
                    } else {
                        _lgamma = (0 : stdgo.GoFloat64);
                        if ((_x >= (1.7316321449683623 : stdgo.GoFloat64) : Bool)) {
                            _y = ((2 : stdgo.GoFloat64) - _x : stdgo.GoFloat64);
                            _i = (0 : stdgo.GoInt);
                        } else if ((_x >= (1.1916321449683622 : stdgo.GoFloat64) : Bool)) {
                            _y = (_x - (1.4616321449683622 : stdgo.GoFloat64) : stdgo.GoFloat64);
                            _i = (1 : stdgo.GoInt);
                        } else {
                            _y = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                            _i = (2 : stdgo.GoInt);
                        };
                    };
                    {
                        final __value__ = _i;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            var _z = (_y * _y : stdgo.GoFloat64);
                            var _p1 = (stdgo._internal.math.Math___lgama.__lgamA[(0 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(2 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(4 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(6 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(8 : stdgo.GoInt)] + (_z * stdgo._internal.math.Math___lgama.__lgamA[(10 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            var _p2 = (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(1 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(3 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(5 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(7 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgama.__lgamA[(9 : stdgo.GoInt)] + (_z * stdgo._internal.math.Math___lgama.__lgamA[(11 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            var _p = ((_y * _p1 : stdgo.GoFloat64) + _p2 : stdgo.GoFloat64);
                            _lgamma = (_lgamma + ((_p - ((0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            var _z = (_y * _y : stdgo.GoFloat64);
                            var _w = (_z * _y : stdgo.GoFloat64);
                            var _p1 = (stdgo._internal.math.Math___lgamt.__lgamT[(0 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(3 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(6 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(9 : stdgo.GoInt)] + (_w * stdgo._internal.math.Math___lgamt.__lgamT[(12 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            var _p2 = (stdgo._internal.math.Math___lgamt.__lgamT[(1 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(4 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(7 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(10 : stdgo.GoInt)] + (_w * stdgo._internal.math.Math___lgamt.__lgamT[(13 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            var _p3 = (stdgo._internal.math.Math___lgamt.__lgamT[(2 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(5 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(8 : stdgo.GoInt)] + (_w * ((stdgo._internal.math.Math___lgamt.__lgamT[(11 : stdgo.GoInt)] + (_w * stdgo._internal.math.Math___lgamt.__lgamT[(14 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            var _p = ((_z * _p1 : stdgo.GoFloat64) - (((-3.638676997039505e-18 : stdgo.GoFloat64) - (_w * ((_p2 + (_y * _p3 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            _lgamma = (_lgamma + (((-0.12148629053584961 : stdgo.GoFloat64) + _p : stdgo.GoFloat64)) : stdgo.GoFloat64);
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            var _p1 = (_y * ((stdgo._internal.math.Math___lgamu.__lgamU[(0 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamu.__lgamU[(1 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamu.__lgamU[(2 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamu.__lgamU[(3 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamu.__lgamU[(4 : stdgo.GoInt)] + (_y * stdgo._internal.math.Math___lgamu.__lgamU[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            var _p2 = ((1 : stdgo.GoFloat64) + (_y * ((stdgo._internal.math.Math___lgamv.__lgamV[(1 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamv.__lgamV[(2 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamv.__lgamV[(3 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamv.__lgamV[(4 : stdgo.GoInt)] + (_y * stdgo._internal.math.Math___lgamv.__lgamV[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            _lgamma = (_lgamma + ((((-0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64) + (_p1 / _p2 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                        };
                    };
                    break;
                } else if ((_x < (8 : stdgo.GoFloat64) : Bool)) {
                    var _i = (_x : stdgo.GoInt);
                    var _y = (_x - (_i : stdgo.GoFloat64) : stdgo.GoFloat64);
                    var _p = (_y * ((stdgo._internal.math.Math___lgams.__lgamS[(0 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgams.__lgamS[(1 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgams.__lgamS[(2 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgams.__lgamS[(3 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgams.__lgamS[(4 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgams.__lgamS[(5 : stdgo.GoInt)] + (_y * stdgo._internal.math.Math___lgams.__lgamS[(6 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    var _q = ((1 : stdgo.GoFloat64) + (_y * ((stdgo._internal.math.Math___lgamr.__lgamR[(1 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamr.__lgamR[(2 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamr.__lgamR[(3 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamr.__lgamR[(4 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamr.__lgamR[(5 : stdgo.GoInt)] + (_y * stdgo._internal.math.Math___lgamr.__lgamR[(6 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lgamma = (((0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64) + (_p / _q : stdgo.GoFloat64) : stdgo.GoFloat64);
                    var _z = (1 : stdgo.GoFloat64);
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _i;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (7 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (6 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    @:fallthrough {
                                        __switchIndex__ = 1;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (6 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    @:fallthrough {
                                        __switchIndex__ = 2;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (5 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (4 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    @:fallthrough {
                                        __switchIndex__ = 3;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (3 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    @:fallthrough {
                                        __switchIndex__ = 4;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (2 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    _lgamma = (_lgamma + (stdgo._internal.math.Math_log.log(_z)) : stdgo.GoFloat64);
                                    break;
                                    break;
                                };
                            };
                            break;
                        };
                    };
                    break;
                } else if ((_x < (2.8823037615171174e+17 : stdgo.GoFloat64) : Bool)) {
                    var _t = (stdgo._internal.math.Math_log.log(_x) : stdgo.GoFloat64);
                    var _z = ((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
                    var _y = (_z * _z : stdgo.GoFloat64);
                    var _w = (stdgo._internal.math.Math___lgamw.__lgamW[(0 : stdgo.GoInt)] + (_z * ((stdgo._internal.math.Math___lgamw.__lgamW[(1 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamw.__lgamW[(2 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamw.__lgamW[(3 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamw.__lgamW[(4 : stdgo.GoInt)] + (_y * ((stdgo._internal.math.Math___lgamw.__lgamW[(5 : stdgo.GoInt)] + (_y * stdgo._internal.math.Math___lgamw.__lgamW[(6 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lgamma = ((((_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) * ((_t - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) + _w : stdgo.GoFloat64);
                    break;
                } else {
                    _lgamma = (_x * ((stdgo._internal.math.Math_log.log(_x) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                };
                break;
            };
        };
        if (_neg) {
            _lgamma = (_nadj - _lgamma : stdgo.GoFloat64);
        };
        return { _0 : _lgamma, _1 : _sign };
    }
