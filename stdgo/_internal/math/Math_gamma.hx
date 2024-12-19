package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_496609:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_495652;
        var _absz_496438:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_496417:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_496412:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_496293:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_496243:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_496225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _d_496455:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_495936:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_495923:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_495984:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_495980:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_495652 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 495743i32;
                } else if (__value__ == (495743i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 495753i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 495815i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 495850i32;
                    } else {
                        _gotoNext = 495923i32;
                    };
                } else if (__value__ == (495753i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 495923i32;
                } else if (__value__ == (495815i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 495923i32;
                } else if (__value__ == (495850i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 495879i32;
                    } else {
                        _gotoNext = 495905i32;
                    };
                } else if (__value__ == (495879i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 495905i32;
                } else if (__value__ == (495905i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 495923i32;
                } else if (__value__ == (495923i32)) {
                    _q_495923 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_495936 = stdgo._internal.math.Math_floor.floor(_q_495923);
                    if ((_q_495923 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 495961i32;
                    } else {
                        _gotoNext = 496609i32;
                    };
                } else if (__value__ == (495961i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 495975i32;
                    } else {
                        _gotoNext = 496225i32;
                    };
                } else if (__value__ == (495975i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_495980 = __tmp__._0;
                        _y2_495984 = __tmp__._1;
                    };
                    return (_y1_495980 * _y2_495984 : stdgo.GoFloat64);
                    _gotoNext = 496225i32;
                } else if (__value__ == (496225i32)) {
                    _signgam_496225 = (1 : stdgo.GoInt);
                    {
                        _ip_496243 = (_p_495936 : stdgo.GoInt64);
                        if ((_ip_496243 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 496269i32;
                        } else {
                            _gotoNext = 496293i32;
                        };
                    };
                } else if (__value__ == (496269i32)) {
                    _signgam_496225 = (-1 : stdgo.GoInt);
                    _gotoNext = 496293i32;
                } else if (__value__ == (496293i32)) {
                    _z_496293 = (_q_495923 - _p_495936 : stdgo.GoFloat64);
                    if ((_z_496293 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 496317i32;
                    } else {
                        _gotoNext = 496351i32;
                    };
                } else if (__value__ == (496317i32)) {
                    _p_495936 = (_p_495936 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_496293 = (_q_495923 - _p_495936 : stdgo.GoFloat64);
                    _gotoNext = 496351i32;
                } else if (__value__ == (496351i32)) {
                    _z_496293 = (_q_495923 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_496293 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_496293 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 496381i32;
                    } else {
                        _gotoNext = 496412i32;
                    };
                } else if (__value__ == (496381i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_496225);
                    _gotoNext = 496412i32;
                } else if (__value__ == (496412i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_495923);
                        _sq1_496412 = __tmp__._0;
                        _sq2_496417 = __tmp__._1;
                    };
                    _absz_496438 = stdgo._internal.math.Math_abs.abs(_z_496293);
                    _d_496455 = ((_absz_496438 * _sq1_496412 : stdgo.GoFloat64) * _sq2_496417 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_496455, (0 : stdgo.GoInt))) {
                        _gotoNext = 496494i32;
                    } else {
                        _gotoNext = 496534i32;
                    };
                } else if (__value__ == (496494i32)) {
                    _z_496293 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_496438 : stdgo.GoFloat64) / _sq1_496412 : stdgo.GoFloat64) / _sq2_496417 : stdgo.GoFloat64);
                    _gotoNext = 496556i32;
                } else if (__value__ == (496534i32)) {
                    _gotoNext = 496534i32;
                    _z_496293 = ((3.141592653589793 : stdgo.GoFloat64) / _d_496455 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 496556i32;
                } else if (__value__ == (496556i32)) {
                    return ((_signgam_496225 : stdgo.GoFloat64) * _z_496293 : stdgo.GoFloat64);
                    _gotoNext = 496609i32;
                } else if (__value__ == (496609i32)) {
                    _z_496609 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 496619i32;
                } else if (__value__ == (496619i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 496630i32;
                    } else {
                        _gotoNext = 496660i32;
                    };
                } else if (__value__ == (496630i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_496609 = (_z_496609 * _x : stdgo.GoFloat64);
                    _gotoNext = 496619i32;
                } else if (__value__ == (496660i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 496660i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 496670i32;
                    } else {
                        _gotoNext = 496736i32;
                    };
                } else if (__value__ == (496670i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 496688i32;
                    } else {
                        _gotoNext = 496710i32;
                    };
                } else if (__value__ == (496688i32)) {
                    _gotoNext = 497066i32;
                } else if (__value__ == (496710i32)) {
                    _z_496609 = (_z_496609 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 496660i32;
                } else if (__value__ == (496736i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 496736i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 496746i32;
                    } else {
                        _gotoNext = 496812i32;
                    };
                } else if (__value__ == (496746i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 496763i32;
                    } else {
                        _gotoNext = 496785i32;
                    };
                } else if (__value__ == (496763i32)) {
                    _gotoNext = 497066i32;
                } else if (__value__ == (496785i32)) {
                    _z_496609 = (_z_496609 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 496736i32;
                } else if (__value__ == (496812i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 496822i32;
                    } else {
                        _gotoNext = 496840i32;
                    };
                } else if (__value__ == (496822i32)) {
                    return _z_496609;
                    _gotoNext = 496840i32;
                } else if (__value__ == (496840i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_495936 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_495923 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_496609 * _p_495936 : stdgo.GoFloat64) / _q_495923 : stdgo.GoFloat64);
                    _gotoNext = 497066i32;
                } else if (__value__ == (497066i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 497084i32;
                    } else {
                        _gotoNext = 497106i32;
                    };
                } else if (__value__ == (497084i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 497106i32;
                } else if (__value__ == (497106i32)) {
                    return (_z_496609 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
