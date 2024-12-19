package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_376609:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_376172:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_376630:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_376435:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_376115:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_375844;
        var _z_376801:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_376647:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_376604:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_376485:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_376417:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_376176:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_376128:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_375844 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 375935i32;
                } else if (__value__ == (375935i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 375945i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 376007i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 376042i32;
                    } else {
                        _gotoNext = 376115i32;
                    };
                } else if (__value__ == (375945i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 376115i32;
                } else if (__value__ == (376007i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 376115i32;
                } else if (__value__ == (376042i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 376071i32;
                    } else {
                        _gotoNext = 376097i32;
                    };
                } else if (__value__ == (376071i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 376097i32;
                } else if (__value__ == (376097i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 376115i32;
                } else if (__value__ == (376115i32)) {
                    _q_376115 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_376128 = stdgo._internal.math.Math_floor.floor(_q_376115);
                    if ((_q_376115 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376153i32;
                    } else {
                        _gotoNext = 376801i32;
                    };
                } else if (__value__ == (376153i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376167i32;
                    } else {
                        _gotoNext = 376417i32;
                    };
                } else if (__value__ == (376167i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_376172 = __tmp__._0;
                        _y2_376176 = __tmp__._1;
                    };
                    return (_y1_376172 * _y2_376176 : stdgo.GoFloat64);
                    _gotoNext = 376417i32;
                } else if (__value__ == (376417i32)) {
                    _signgam_376417 = (1 : stdgo.GoInt);
                    {
                        _ip_376435 = (_p_376128 : stdgo.GoInt64);
                        if ((_ip_376435 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 376461i32;
                        } else {
                            _gotoNext = 376485i32;
                        };
                    };
                } else if (__value__ == (376461i32)) {
                    _signgam_376417 = (-1 : stdgo.GoInt);
                    _gotoNext = 376485i32;
                } else if (__value__ == (376485i32)) {
                    _z_376485 = (_q_376115 - _p_376128 : stdgo.GoFloat64);
                    if ((_z_376485 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376509i32;
                    } else {
                        _gotoNext = 376543i32;
                    };
                } else if (__value__ == (376509i32)) {
                    _p_376128 = (_p_376128 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_376485 = (_q_376115 - _p_376128 : stdgo.GoFloat64);
                    _gotoNext = 376543i32;
                } else if (__value__ == (376543i32)) {
                    _z_376485 = (_q_376115 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_376485 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_376485 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 376573i32;
                    } else {
                        _gotoNext = 376604i32;
                    };
                } else if (__value__ == (376573i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_376417);
                    _gotoNext = 376604i32;
                } else if (__value__ == (376604i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_376115);
                        _sq1_376604 = __tmp__._0;
                        _sq2_376609 = __tmp__._1;
                    };
                    _absz_376630 = stdgo._internal.math.Math_abs.abs(_z_376485);
                    _d_376647 = ((_absz_376630 * _sq1_376604 : stdgo.GoFloat64) * _sq2_376609 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_376647, (0 : stdgo.GoInt))) {
                        _gotoNext = 376686i32;
                    } else {
                        _gotoNext = 376726i32;
                    };
                } else if (__value__ == (376686i32)) {
                    _z_376485 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_376630 : stdgo.GoFloat64) / _sq1_376604 : stdgo.GoFloat64) / _sq2_376609 : stdgo.GoFloat64);
                    _gotoNext = 376748i32;
                } else if (__value__ == (376726i32)) {
                    _gotoNext = 376726i32;
                    _z_376485 = ((3.141592653589793 : stdgo.GoFloat64) / _d_376647 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 376748i32;
                } else if (__value__ == (376748i32)) {
                    return ((_signgam_376417 : stdgo.GoFloat64) * _z_376485 : stdgo.GoFloat64);
                    _gotoNext = 376801i32;
                } else if (__value__ == (376801i32)) {
                    _z_376801 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 376811i32;
                } else if (__value__ == (376811i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376822i32;
                    } else {
                        _gotoNext = 376852i32;
                    };
                } else if (__value__ == (376822i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_376801 = (_z_376801 * _x : stdgo.GoFloat64);
                    _gotoNext = 376811i32;
                } else if (__value__ == (376852i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 376852i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376862i32;
                    } else {
                        _gotoNext = 376928i32;
                    };
                } else if (__value__ == (376862i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376880i32;
                    } else {
                        _gotoNext = 376902i32;
                    };
                } else if (__value__ == (376880i32)) {
                    _gotoNext = 377258i32;
                } else if (__value__ == (376902i32)) {
                    _z_376801 = (_z_376801 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 376852i32;
                } else if (__value__ == (376928i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 376928i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376938i32;
                    } else {
                        _gotoNext = 377004i32;
                    };
                } else if (__value__ == (376938i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376955i32;
                    } else {
                        _gotoNext = 376977i32;
                    };
                } else if (__value__ == (376955i32)) {
                    _gotoNext = 377258i32;
                } else if (__value__ == (376977i32)) {
                    _z_376801 = (_z_376801 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 376928i32;
                } else if (__value__ == (377004i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 377014i32;
                    } else {
                        _gotoNext = 377032i32;
                    };
                } else if (__value__ == (377014i32)) {
                    return _z_376801;
                    _gotoNext = 377032i32;
                } else if (__value__ == (377032i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_376128 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_376115 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_376801 * _p_376128 : stdgo.GoFloat64) / _q_376115 : stdgo.GoFloat64);
                    _gotoNext = 377258i32;
                } else if (__value__ == (377258i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 377276i32;
                    } else {
                        _gotoNext = 377298i32;
                    };
                } else if (__value__ == (377276i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 377298i32;
                } else if (__value__ == (377298i32)) {
                    return (_z_376801 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
