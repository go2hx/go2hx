package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_420999:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_420982:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_420467:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_420196;
        var _sq2_420961:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_420769:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_420528:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_420524:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_420956:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_420837:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_420787:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_420480:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_421153:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_420196 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 420287i32;
                } else if (__value__ == (420287i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 420297i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 420359i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 420394i32;
                    } else {
                        _gotoNext = 420467i32;
                    };
                } else if (__value__ == (420297i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 420467i32;
                } else if (__value__ == (420359i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 420467i32;
                } else if (__value__ == (420394i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 420423i32;
                    } else {
                        _gotoNext = 420449i32;
                    };
                } else if (__value__ == (420423i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 420449i32;
                } else if (__value__ == (420449i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 420467i32;
                } else if (__value__ == (420467i32)) {
                    _q_420467 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_420480 = stdgo._internal.math.Math_floor.floor(_q_420467);
                    if ((_q_420467 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420505i32;
                    } else {
                        _gotoNext = 421153i32;
                    };
                } else if (__value__ == (420505i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420519i32;
                    } else {
                        _gotoNext = 420769i32;
                    };
                } else if (__value__ == (420519i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_420524 = __tmp__._0;
                        _y2_420528 = __tmp__._1;
                    };
                    return (_y1_420524 * _y2_420528 : stdgo.GoFloat64);
                    _gotoNext = 420769i32;
                } else if (__value__ == (420769i32)) {
                    _signgam_420769 = (1 : stdgo.GoInt);
                    {
                        _ip_420787 = (_p_420480 : stdgo.GoInt64);
                        if ((_ip_420787 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 420813i32;
                        } else {
                            _gotoNext = 420837i32;
                        };
                    };
                } else if (__value__ == (420813i32)) {
                    _signgam_420769 = (-1 : stdgo.GoInt);
                    _gotoNext = 420837i32;
                } else if (__value__ == (420837i32)) {
                    _z_420837 = (_q_420467 - _p_420480 : stdgo.GoFloat64);
                    if ((_z_420837 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420861i32;
                    } else {
                        _gotoNext = 420895i32;
                    };
                } else if (__value__ == (420861i32)) {
                    _p_420480 = (_p_420480 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_420837 = (_q_420467 - _p_420480 : stdgo.GoFloat64);
                    _gotoNext = 420895i32;
                } else if (__value__ == (420895i32)) {
                    _z_420837 = (_q_420467 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_420837 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_420837 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 420925i32;
                    } else {
                        _gotoNext = 420956i32;
                    };
                } else if (__value__ == (420925i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_420769);
                    _gotoNext = 420956i32;
                } else if (__value__ == (420956i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_420467);
                        _sq1_420956 = __tmp__._0;
                        _sq2_420961 = __tmp__._1;
                    };
                    _absz_420982 = stdgo._internal.math.Math_abs.abs(_z_420837);
                    _d_420999 = ((_absz_420982 * _sq1_420956 : stdgo.GoFloat64) * _sq2_420961 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_420999, (0 : stdgo.GoInt))) {
                        _gotoNext = 421038i32;
                    } else {
                        _gotoNext = 421078i32;
                    };
                } else if (__value__ == (421038i32)) {
                    _z_420837 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_420982 : stdgo.GoFloat64) / _sq1_420956 : stdgo.GoFloat64) / _sq2_420961 : stdgo.GoFloat64);
                    _gotoNext = 421100i32;
                } else if (__value__ == (421078i32)) {
                    _gotoNext = 421078i32;
                    _z_420837 = ((3.141592653589793 : stdgo.GoFloat64) / _d_420999 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 421100i32;
                } else if (__value__ == (421100i32)) {
                    return ((_signgam_420769 : stdgo.GoFloat64) * _z_420837 : stdgo.GoFloat64);
                    _gotoNext = 421153i32;
                } else if (__value__ == (421153i32)) {
                    _z_421153 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 421163i32;
                } else if (__value__ == (421163i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 421174i32;
                    } else {
                        _gotoNext = 421204i32;
                    };
                } else if (__value__ == (421174i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_421153 = (_z_421153 * _x : stdgo.GoFloat64);
                    _gotoNext = 421163i32;
                } else if (__value__ == (421204i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 421204i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 421214i32;
                    } else {
                        _gotoNext = 421280i32;
                    };
                } else if (__value__ == (421214i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 421232i32;
                    } else {
                        _gotoNext = 421254i32;
                    };
                } else if (__value__ == (421232i32)) {
                    _gotoNext = 421610i32;
                } else if (__value__ == (421254i32)) {
                    _z_421153 = (_z_421153 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 421204i32;
                } else if (__value__ == (421280i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 421280i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 421290i32;
                    } else {
                        _gotoNext = 421356i32;
                    };
                } else if (__value__ == (421290i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 421307i32;
                    } else {
                        _gotoNext = 421329i32;
                    };
                } else if (__value__ == (421307i32)) {
                    _gotoNext = 421610i32;
                } else if (__value__ == (421329i32)) {
                    _z_421153 = (_z_421153 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 421280i32;
                } else if (__value__ == (421356i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 421366i32;
                    } else {
                        _gotoNext = 421384i32;
                    };
                } else if (__value__ == (421366i32)) {
                    return _z_421153;
                    _gotoNext = 421384i32;
                } else if (__value__ == (421384i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_420480 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_420467 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_421153 * _p_420480 : stdgo.GoFloat64) / _q_420467 : stdgo.GoFloat64);
                    _gotoNext = 421610i32;
                } else if (__value__ == (421610i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 421628i32;
                    } else {
                        _gotoNext = 421650i32;
                    };
                } else if (__value__ == (421628i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 421650i32;
                } else if (__value__ == (421650i32)) {
                    return (_z_421153 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
