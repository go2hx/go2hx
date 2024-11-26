package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_575599:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_575428:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_575407:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_575402:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_575283:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_574926:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_574913:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_574642;
        var _d_575445:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_574974:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_574970:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_575233:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_575215:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_574642 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 574733i32;
                } else if (__value__ == (574733i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 574743i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 574805i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 574840i32;
                    } else {
                        _gotoNext = 574913i32;
                    };
                } else if (__value__ == (574743i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 574913i32;
                } else if (__value__ == (574805i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 574913i32;
                } else if (__value__ == (574840i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 574869i32;
                    } else {
                        _gotoNext = 574895i32;
                    };
                } else if (__value__ == (574869i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 574895i32;
                } else if (__value__ == (574895i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 574913i32;
                } else if (__value__ == (574913i32)) {
                    _q_574913 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_574926 = stdgo._internal.math.Math_floor.floor(_q_574913);
                    if ((_q_574913 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 574951i32;
                    } else {
                        _gotoNext = 575599i32;
                    };
                } else if (__value__ == (574951i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 574965i32;
                    } else {
                        _gotoNext = 575215i32;
                    };
                } else if (__value__ == (574965i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_574970 = __tmp__._0;
                        _y2_574974 = __tmp__._1;
                    };
                    return (_y1_574970 * _y2_574974 : stdgo.GoFloat64);
                    _gotoNext = 575215i32;
                } else if (__value__ == (575215i32)) {
                    _signgam_575215 = (1 : stdgo.GoInt);
                    {
                        _ip_575233 = (_p_574926 : stdgo.GoInt64);
                        if ((_ip_575233 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 575259i32;
                        } else {
                            _gotoNext = 575283i32;
                        };
                    };
                } else if (__value__ == (575259i32)) {
                    _signgam_575215 = (-1 : stdgo.GoInt);
                    _gotoNext = 575283i32;
                } else if (__value__ == (575283i32)) {
                    _z_575283 = (_q_574913 - _p_574926 : stdgo.GoFloat64);
                    if ((_z_575283 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 575307i32;
                    } else {
                        _gotoNext = 575341i32;
                    };
                } else if (__value__ == (575307i32)) {
                    _p_574926 = (_p_574926 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_575283 = (_q_574913 - _p_574926 : stdgo.GoFloat64);
                    _gotoNext = 575341i32;
                } else if (__value__ == (575341i32)) {
                    _z_575283 = (_q_574913 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_575283 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_575283 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 575371i32;
                    } else {
                        _gotoNext = 575402i32;
                    };
                } else if (__value__ == (575371i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_575215);
                    _gotoNext = 575402i32;
                } else if (__value__ == (575402i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_574913);
                        _sq1_575402 = __tmp__._0;
                        _sq2_575407 = __tmp__._1;
                    };
                    _absz_575428 = stdgo._internal.math.Math_abs.abs(_z_575283);
                    _d_575445 = ((_absz_575428 * _sq1_575402 : stdgo.GoFloat64) * _sq2_575407 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_575445, (0 : stdgo.GoInt))) {
                        _gotoNext = 575484i32;
                    } else {
                        _gotoNext = 575524i32;
                    };
                } else if (__value__ == (575484i32)) {
                    _z_575283 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_575428 : stdgo.GoFloat64) / _sq1_575402 : stdgo.GoFloat64) / _sq2_575407 : stdgo.GoFloat64);
                    _gotoNext = 575546i32;
                } else if (__value__ == (575524i32)) {
                    _gotoNext = 575524i32;
                    _z_575283 = ((3.141592653589793 : stdgo.GoFloat64) / _d_575445 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 575546i32;
                } else if (__value__ == (575546i32)) {
                    return ((_signgam_575215 : stdgo.GoFloat64) * _z_575283 : stdgo.GoFloat64);
                    _gotoNext = 575599i32;
                } else if (__value__ == (575599i32)) {
                    _z_575599 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 575609i32;
                } else if (__value__ == (575609i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 575620i32;
                    } else {
                        _gotoNext = 575650i32;
                    };
                } else if (__value__ == (575620i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_575599 = (_z_575599 * _x : stdgo.GoFloat64);
                    _gotoNext = 575609i32;
                } else if (__value__ == (575650i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 575650i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 575660i32;
                    } else {
                        _gotoNext = 575726i32;
                    };
                } else if (__value__ == (575660i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 575678i32;
                    } else {
                        _gotoNext = 575700i32;
                    };
                } else if (__value__ == (575678i32)) {
                    _gotoNext = 576056i32;
                } else if (__value__ == (575700i32)) {
                    _z_575599 = (_z_575599 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 575650i32;
                } else if (__value__ == (575726i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 575726i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 575736i32;
                    } else {
                        _gotoNext = 575802i32;
                    };
                } else if (__value__ == (575736i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 575753i32;
                    } else {
                        _gotoNext = 575775i32;
                    };
                } else if (__value__ == (575753i32)) {
                    _gotoNext = 576056i32;
                } else if (__value__ == (575775i32)) {
                    _z_575599 = (_z_575599 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 575726i32;
                } else if (__value__ == (575802i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 575812i32;
                    } else {
                        _gotoNext = 575830i32;
                    };
                } else if (__value__ == (575812i32)) {
                    return _z_575599;
                    _gotoNext = 575830i32;
                } else if (__value__ == (575830i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_574926 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_574913 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_575599 * _p_574926 : stdgo.GoFloat64) / _q_574913 : stdgo.GoFloat64);
                    _gotoNext = 576056i32;
                } else if (__value__ == (576056i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 576074i32;
                    } else {
                        _gotoNext = 576096i32;
                    };
                } else if (__value__ == (576074i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 576096i32;
                } else if (__value__ == (576096i32)) {
                    return (_z_575599 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
