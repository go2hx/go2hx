package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_2204421:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_2204276:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_2204226:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_2203919:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_2203635;
        var _signgam_2204208:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_2203967:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_2203906:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_2204592:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_2204400:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_2204395:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_2204438:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_2203963:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_2203635 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 2203726i32;
                } else if (__value__ == (2203726i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 2203736i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 2203798i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 2203833i32;
                    } else {
                        _gotoNext = 2203906i32;
                    };
                } else if (__value__ == (2203736i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 2203906i32;
                } else if (__value__ == (2203798i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 2203906i32;
                } else if (__value__ == (2203833i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 2203862i32;
                    } else {
                        _gotoNext = 2203888i32;
                    };
                } else if (__value__ == (2203862i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 2203888i32;
                } else if (__value__ == (2203888i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 2203906i32;
                } else if (__value__ == (2203906i32)) {
                    _q_2203906 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2203919 = stdgo._internal.math.Math_floor.floor(_q_2203906);
                    if ((_q_2203906 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2203944i32;
                    } else {
                        _gotoNext = 2204592i32;
                    };
                } else if (__value__ == (2203944i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2203958i32;
                    } else {
                        _gotoNext = 2204208i32;
                    };
                } else if (__value__ == (2203958i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_2203963 = __tmp__._0;
                        _y2_2203967 = __tmp__._1;
                    };
                    return (_y1_2203963 * _y2_2203967 : stdgo.GoFloat64);
                    _gotoNext = 2204208i32;
                } else if (__value__ == (2204208i32)) {
                    _signgam_2204208 = (1 : stdgo.GoInt);
                    {
                        _ip_2204226 = (_p_2203919 : stdgo.GoInt64);
                        if ((_ip_2204226 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 2204252i32;
                        } else {
                            _gotoNext = 2204276i32;
                        };
                    };
                } else if (__value__ == (2204252i32)) {
                    _signgam_2204208 = (-1 : stdgo.GoInt);
                    _gotoNext = 2204276i32;
                } else if (__value__ == (2204276i32)) {
                    _z_2204276 = (_q_2203906 - _p_2203919 : stdgo.GoFloat64);
                    if ((_z_2204276 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2204300i32;
                    } else {
                        _gotoNext = 2204334i32;
                    };
                } else if (__value__ == (2204300i32)) {
                    _p_2203919 = (_p_2203919 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_2204276 = (_q_2203906 - _p_2203919 : stdgo.GoFloat64);
                    _gotoNext = 2204334i32;
                } else if (__value__ == (2204334i32)) {
                    _z_2204276 = (_q_2203906 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_2204276 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_2204276 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 2204364i32;
                    } else {
                        _gotoNext = 2204395i32;
                    };
                } else if (__value__ == (2204364i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_2204208);
                    _gotoNext = 2204395i32;
                } else if (__value__ == (2204395i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_2203906);
                        _sq1_2204395 = __tmp__._0;
                        _sq2_2204400 = __tmp__._1;
                    };
                    _absz_2204421 = stdgo._internal.math.Math_abs.abs(_z_2204276);
                    _d_2204438 = ((_absz_2204421 * _sq1_2204395 : stdgo.GoFloat64) * _sq2_2204400 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_2204438, (0 : stdgo.GoInt))) {
                        _gotoNext = 2204477i32;
                    } else {
                        _gotoNext = 2204517i32;
                    };
                } else if (__value__ == (2204477i32)) {
                    _z_2204276 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_2204421 : stdgo.GoFloat64) / _sq1_2204395 : stdgo.GoFloat64) / _sq2_2204400 : stdgo.GoFloat64);
                    _gotoNext = 2204539i32;
                } else if (__value__ == (2204517i32)) {
                    _z_2204276 = ((3.141592653589793 : stdgo.GoFloat64) / _d_2204438 : stdgo.GoFloat64);
                    _gotoNext = 2204539i32;
                } else if (__value__ == (2204539i32)) {
                    return ((_signgam_2204208 : stdgo.GoFloat64) * _z_2204276 : stdgo.GoFloat64);
                    _gotoNext = 2204592i32;
                } else if (__value__ == (2204592i32)) {
                    _z_2204592 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 2204602i32;
                } else if (__value__ == (2204602i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2204613i32;
                    } else {
                        _gotoNext = 2204643i32;
                    };
                } else if (__value__ == (2204613i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_2204592 = (_z_2204592 * _x : stdgo.GoFloat64);
                    _gotoNext = 2204602i32;
                } else if (__value__ == (2204643i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2204643i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2204653i32;
                    } else {
                        _gotoNext = 2204719i32;
                    };
                } else if (__value__ == (2204653i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2204671i32;
                    } else {
                        _gotoNext = 2204693i32;
                    };
                } else if (__value__ == (2204671i32)) {
                    _gotoNext = 2205049i32;
                } else if (__value__ == (2204693i32)) {
                    _z_2204592 = (_z_2204592 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 2204643i32;
                } else if (__value__ == (2204719i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2204719i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2204729i32;
                    } else {
                        _gotoNext = 2204795i32;
                    };
                } else if (__value__ == (2204729i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2204746i32;
                    } else {
                        _gotoNext = 2204768i32;
                    };
                } else if (__value__ == (2204746i32)) {
                    _gotoNext = 2205049i32;
                } else if (__value__ == (2204768i32)) {
                    _z_2204592 = (_z_2204592 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 2204719i32;
                } else if (__value__ == (2204795i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 2204805i32;
                    } else {
                        _gotoNext = 2204823i32;
                    };
                } else if (__value__ == (2204805i32)) {
                    return _z_2204592;
                    _gotoNext = 2204823i32;
                } else if (__value__ == (2204823i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2203919 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_2203906 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_2204592 * _p_2203919 : stdgo.GoFloat64) / _q_2203906 : stdgo.GoFloat64);
                    _gotoNext = 2205049i32;
                } else if (__value__ == (2205049i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 2205067i32;
                    } else {
                        _gotoNext = 2205089i32;
                    };
                } else if (__value__ == (2205067i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 2205089i32;
                } else if (__value__ == (2205089i32)) {
                    return (_z_2204592 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
