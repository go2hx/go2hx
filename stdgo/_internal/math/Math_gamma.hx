package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_441805:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_441273:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_441959:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_441767:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_441762:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_441643:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_441334:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_441330:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_441002;
        var _absz_441788:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_441593:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_441575:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_441286:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_441002 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 441093i32;
                } else if (__value__ == (441093i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 441103i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 441165i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 441200i32;
                    } else {
                        _gotoNext = 441273i32;
                    };
                } else if (__value__ == (441103i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 441273i32;
                } else if (__value__ == (441165i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 441273i32;
                } else if (__value__ == (441200i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 441229i32;
                    } else {
                        _gotoNext = 441255i32;
                    };
                } else if (__value__ == (441229i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 441255i32;
                } else if (__value__ == (441255i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 441273i32;
                } else if (__value__ == (441273i32)) {
                    _q_441273 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_441286 = stdgo._internal.math.Math_floor.floor(_q_441273);
                    if ((_q_441273 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 441311i32;
                    } else {
                        _gotoNext = 441959i32;
                    };
                } else if (__value__ == (441311i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 441325i32;
                    } else {
                        _gotoNext = 441575i32;
                    };
                } else if (__value__ == (441325i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_441330 = __tmp__._0;
                        _y2_441334 = __tmp__._1;
                    };
                    return (_y1_441330 * _y2_441334 : stdgo.GoFloat64);
                    _gotoNext = 441575i32;
                } else if (__value__ == (441575i32)) {
                    _signgam_441575 = (1 : stdgo.GoInt);
                    {
                        _ip_441593 = (_p_441286 : stdgo.GoInt64);
                        if ((_ip_441593 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 441619i32;
                        } else {
                            _gotoNext = 441643i32;
                        };
                    };
                } else if (__value__ == (441619i32)) {
                    _signgam_441575 = (-1 : stdgo.GoInt);
                    _gotoNext = 441643i32;
                } else if (__value__ == (441643i32)) {
                    _z_441643 = (_q_441273 - _p_441286 : stdgo.GoFloat64);
                    if ((_z_441643 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 441667i32;
                    } else {
                        _gotoNext = 441701i32;
                    };
                } else if (__value__ == (441667i32)) {
                    _p_441286 = (_p_441286 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_441643 = (_q_441273 - _p_441286 : stdgo.GoFloat64);
                    _gotoNext = 441701i32;
                } else if (__value__ == (441701i32)) {
                    _z_441643 = (_q_441273 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_441643 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_441643 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 441731i32;
                    } else {
                        _gotoNext = 441762i32;
                    };
                } else if (__value__ == (441731i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_441575);
                    _gotoNext = 441762i32;
                } else if (__value__ == (441762i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_441273);
                        _sq1_441762 = __tmp__._0;
                        _sq2_441767 = __tmp__._1;
                    };
                    _absz_441788 = stdgo._internal.math.Math_abs.abs(_z_441643);
                    _d_441805 = ((_absz_441788 * _sq1_441762 : stdgo.GoFloat64) * _sq2_441767 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_441805, (0 : stdgo.GoInt))) {
                        _gotoNext = 441844i32;
                    } else {
                        _gotoNext = 441884i32;
                    };
                } else if (__value__ == (441844i32)) {
                    _z_441643 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_441788 : stdgo.GoFloat64) / _sq1_441762 : stdgo.GoFloat64) / _sq2_441767 : stdgo.GoFloat64);
                    _gotoNext = 441906i32;
                } else if (__value__ == (441884i32)) {
                    _z_441643 = ((3.141592653589793 : stdgo.GoFloat64) / _d_441805 : stdgo.GoFloat64);
                    _gotoNext = 441906i32;
                } else if (__value__ == (441906i32)) {
                    return ((_signgam_441575 : stdgo.GoFloat64) * _z_441643 : stdgo.GoFloat64);
                    _gotoNext = 441959i32;
                } else if (__value__ == (441959i32)) {
                    _z_441959 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 441969i32;
                } else if (__value__ == (441969i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 441980i32;
                    } else {
                        _gotoNext = 442010i32;
                    };
                } else if (__value__ == (441980i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_441959 = (_z_441959 * _x : stdgo.GoFloat64);
                    _gotoNext = 441969i32;
                } else if (__value__ == (442010i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 442010i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442020i32;
                    } else {
                        _gotoNext = 442086i32;
                    };
                } else if (__value__ == (442020i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442038i32;
                    } else {
                        _gotoNext = 442060i32;
                    };
                } else if (__value__ == (442038i32)) {
                    _gotoNext = 442416i32;
                } else if (__value__ == (442060i32)) {
                    _z_441959 = (_z_441959 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 442010i32;
                } else if (__value__ == (442086i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 442086i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442096i32;
                    } else {
                        _gotoNext = 442162i32;
                    };
                } else if (__value__ == (442096i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442113i32;
                    } else {
                        _gotoNext = 442135i32;
                    };
                } else if (__value__ == (442113i32)) {
                    _gotoNext = 442416i32;
                } else if (__value__ == (442135i32)) {
                    _z_441959 = (_z_441959 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 442086i32;
                } else if (__value__ == (442162i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 442172i32;
                    } else {
                        _gotoNext = 442190i32;
                    };
                } else if (__value__ == (442172i32)) {
                    return _z_441959;
                    _gotoNext = 442190i32;
                } else if (__value__ == (442190i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_441286 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_441273 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_441959 * _p_441286 : stdgo.GoFloat64) / _q_441273 : stdgo.GoFloat64);
                    _gotoNext = 442416i32;
                } else if (__value__ == (442416i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 442434i32;
                    } else {
                        _gotoNext = 442456i32;
                    };
                } else if (__value__ == (442434i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 442456i32;
                } else if (__value__ == (442456i32)) {
                    return (_z_441959 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
