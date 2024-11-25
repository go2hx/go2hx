package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_376155:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_375914:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_376539:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_376223:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_375853:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_375582;
        var _absz_376368:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_376347:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_376342:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_375866:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_376385:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_376173:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_375910:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_375582 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 375673i32;
                } else if (__value__ == (375673i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 375683i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 375745i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 375780i32;
                    } else {
                        _gotoNext = 375853i32;
                    };
                } else if (__value__ == (375683i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 375853i32;
                } else if (__value__ == (375745i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 375853i32;
                } else if (__value__ == (375780i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 375809i32;
                    } else {
                        _gotoNext = 375835i32;
                    };
                } else if (__value__ == (375809i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 375835i32;
                } else if (__value__ == (375835i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 375853i32;
                } else if (__value__ == (375853i32)) {
                    _q_375853 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_375866 = stdgo._internal.math.Math_floor.floor(_q_375853);
                    if ((_q_375853 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 375891i32;
                    } else {
                        _gotoNext = 376539i32;
                    };
                } else if (__value__ == (375891i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 375905i32;
                    } else {
                        _gotoNext = 376155i32;
                    };
                } else if (__value__ == (375905i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_375910 = __tmp__._0;
                        _y2_375914 = __tmp__._1;
                    };
                    return (_y1_375910 * _y2_375914 : stdgo.GoFloat64);
                    _gotoNext = 376155i32;
                } else if (__value__ == (376155i32)) {
                    _signgam_376155 = (1 : stdgo.GoInt);
                    {
                        _ip_376173 = (_p_375866 : stdgo.GoInt64);
                        if ((_ip_376173 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 376199i32;
                        } else {
                            _gotoNext = 376223i32;
                        };
                    };
                } else if (__value__ == (376199i32)) {
                    _signgam_376155 = (-1 : stdgo.GoInt);
                    _gotoNext = 376223i32;
                } else if (__value__ == (376223i32)) {
                    _z_376223 = (_q_375853 - _p_375866 : stdgo.GoFloat64);
                    if ((_z_376223 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376247i32;
                    } else {
                        _gotoNext = 376281i32;
                    };
                } else if (__value__ == (376247i32)) {
                    _p_375866 = (_p_375866 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_376223 = (_q_375853 - _p_375866 : stdgo.GoFloat64);
                    _gotoNext = 376281i32;
                } else if (__value__ == (376281i32)) {
                    _z_376223 = (_q_375853 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_376223 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_376223 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 376311i32;
                    } else {
                        _gotoNext = 376342i32;
                    };
                } else if (__value__ == (376311i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_376155);
                    _gotoNext = 376342i32;
                } else if (__value__ == (376342i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_375853);
                        _sq1_376342 = __tmp__._0;
                        _sq2_376347 = __tmp__._1;
                    };
                    _absz_376368 = stdgo._internal.math.Math_abs.abs(_z_376223);
                    _d_376385 = ((_absz_376368 * _sq1_376342 : stdgo.GoFloat64) * _sq2_376347 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_376385, (0 : stdgo.GoInt))) {
                        _gotoNext = 376424i32;
                    } else {
                        _gotoNext = 376464i32;
                    };
                } else if (__value__ == (376424i32)) {
                    _z_376223 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_376368 : stdgo.GoFloat64) / _sq1_376342 : stdgo.GoFloat64) / _sq2_376347 : stdgo.GoFloat64);
                    _gotoNext = 376486i32;
                } else if (__value__ == (376464i32)) {
                    _gotoNext = 376464i32;
                    _z_376223 = ((3.141592653589793 : stdgo.GoFloat64) / _d_376385 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 376486i32;
                } else if (__value__ == (376486i32)) {
                    return ((_signgam_376155 : stdgo.GoFloat64) * _z_376223 : stdgo.GoFloat64);
                    _gotoNext = 376539i32;
                } else if (__value__ == (376539i32)) {
                    _z_376539 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 376549i32;
                } else if (__value__ == (376549i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376560i32;
                    } else {
                        _gotoNext = 376590i32;
                    };
                } else if (__value__ == (376560i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_376539 = (_z_376539 * _x : stdgo.GoFloat64);
                    _gotoNext = 376549i32;
                } else if (__value__ == (376590i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 376590i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376600i32;
                    } else {
                        _gotoNext = 376666i32;
                    };
                } else if (__value__ == (376600i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376618i32;
                    } else {
                        _gotoNext = 376640i32;
                    };
                } else if (__value__ == (376618i32)) {
                    _gotoNext = 376996i32;
                } else if (__value__ == (376640i32)) {
                    _z_376539 = (_z_376539 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 376590i32;
                } else if (__value__ == (376666i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 376666i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376676i32;
                    } else {
                        _gotoNext = 376742i32;
                    };
                } else if (__value__ == (376676i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 376693i32;
                    } else {
                        _gotoNext = 376715i32;
                    };
                } else if (__value__ == (376693i32)) {
                    _gotoNext = 376996i32;
                } else if (__value__ == (376715i32)) {
                    _z_376539 = (_z_376539 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 376666i32;
                } else if (__value__ == (376742i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 376752i32;
                    } else {
                        _gotoNext = 376770i32;
                    };
                } else if (__value__ == (376752i32)) {
                    return _z_376539;
                    _gotoNext = 376770i32;
                } else if (__value__ == (376770i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_375866 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_375853 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_376539 * _p_375866 : stdgo.GoFloat64) / _q_375853 : stdgo.GoFloat64);
                    _gotoNext = 376996i32;
                } else if (__value__ == (376996i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 377014i32;
                    } else {
                        _gotoNext = 377036i32;
                    };
                } else if (__value__ == (377014i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 377036i32;
                } else if (__value__ == (377036i32)) {
                    return (_z_376539 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
