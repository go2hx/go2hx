package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_380915:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_380877:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_380872:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_380703:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_380112;
        var _z_381069:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_380898:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_380753:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_380685:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_380444:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_380383:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_380396:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_380440:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_380112 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 380203i32;
                } else if (__value__ == (380203i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 380213i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 380275i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 380310i32;
                    } else {
                        _gotoNext = 380383i32;
                    };
                } else if (__value__ == (380213i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 380383i32;
                } else if (__value__ == (380275i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 380383i32;
                } else if (__value__ == (380310i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 380339i32;
                    } else {
                        _gotoNext = 380365i32;
                    };
                } else if (__value__ == (380339i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 380365i32;
                } else if (__value__ == (380365i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 380383i32;
                } else if (__value__ == (380383i32)) {
                    _q_380383 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_380396 = stdgo._internal.math.Math_floor.floor(_q_380383);
                    if ((_q_380383 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380421i32;
                    } else {
                        _gotoNext = 381069i32;
                    };
                } else if (__value__ == (380421i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380435i32;
                    } else {
                        _gotoNext = 380685i32;
                    };
                } else if (__value__ == (380435i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_380440 = __tmp__._0;
                        _y2_380444 = __tmp__._1;
                    };
                    return (_y1_380440 * _y2_380444 : stdgo.GoFloat64);
                    _gotoNext = 380685i32;
                } else if (__value__ == (380685i32)) {
                    _signgam_380685 = (1 : stdgo.GoInt);
                    {
                        _ip_380703 = (_p_380396 : stdgo.GoInt64);
                        if ((_ip_380703 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 380729i32;
                        } else {
                            _gotoNext = 380753i32;
                        };
                    };
                } else if (__value__ == (380729i32)) {
                    _signgam_380685 = (-1 : stdgo.GoInt);
                    _gotoNext = 380753i32;
                } else if (__value__ == (380753i32)) {
                    _z_380753 = (_q_380383 - _p_380396 : stdgo.GoFloat64);
                    if ((_z_380753 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380777i32;
                    } else {
                        _gotoNext = 380811i32;
                    };
                } else if (__value__ == (380777i32)) {
                    _p_380396 = (_p_380396 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_380753 = (_q_380383 - _p_380396 : stdgo.GoFloat64);
                    _gotoNext = 380811i32;
                } else if (__value__ == (380811i32)) {
                    _z_380753 = (_q_380383 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_380753 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_380753 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 380841i32;
                    } else {
                        _gotoNext = 380872i32;
                    };
                } else if (__value__ == (380841i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_380685);
                    _gotoNext = 380872i32;
                } else if (__value__ == (380872i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_380383);
                        _sq1_380872 = __tmp__._0;
                        _sq2_380877 = __tmp__._1;
                    };
                    _absz_380898 = stdgo._internal.math.Math_abs.abs(_z_380753);
                    _d_380915 = ((_absz_380898 * _sq1_380872 : stdgo.GoFloat64) * _sq2_380877 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_380915, (0 : stdgo.GoInt))) {
                        _gotoNext = 380954i32;
                    } else {
                        _gotoNext = 380994i32;
                    };
                } else if (__value__ == (380954i32)) {
                    _z_380753 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_380898 : stdgo.GoFloat64) / _sq1_380872 : stdgo.GoFloat64) / _sq2_380877 : stdgo.GoFloat64);
                    _gotoNext = 381016i32;
                } else if (__value__ == (380994i32)) {
                    _gotoNext = 380994i32;
                    _z_380753 = ((3.141592653589793 : stdgo.GoFloat64) / _d_380915 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 381016i32;
                } else if (__value__ == (381016i32)) {
                    return ((_signgam_380685 : stdgo.GoFloat64) * _z_380753 : stdgo.GoFloat64);
                    _gotoNext = 381069i32;
                } else if (__value__ == (381069i32)) {
                    _z_381069 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 381079i32;
                } else if (__value__ == (381079i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 381090i32;
                    } else {
                        _gotoNext = 381120i32;
                    };
                } else if (__value__ == (381090i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_381069 = (_z_381069 * _x : stdgo.GoFloat64);
                    _gotoNext = 381079i32;
                } else if (__value__ == (381120i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 381120i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 381130i32;
                    } else {
                        _gotoNext = 381196i32;
                    };
                } else if (__value__ == (381130i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 381148i32;
                    } else {
                        _gotoNext = 381170i32;
                    };
                } else if (__value__ == (381148i32)) {
                    _gotoNext = 381526i32;
                } else if (__value__ == (381170i32)) {
                    _z_381069 = (_z_381069 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 381120i32;
                } else if (__value__ == (381196i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 381196i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 381206i32;
                    } else {
                        _gotoNext = 381272i32;
                    };
                } else if (__value__ == (381206i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 381223i32;
                    } else {
                        _gotoNext = 381245i32;
                    };
                } else if (__value__ == (381223i32)) {
                    _gotoNext = 381526i32;
                } else if (__value__ == (381245i32)) {
                    _z_381069 = (_z_381069 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 381196i32;
                } else if (__value__ == (381272i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 381282i32;
                    } else {
                        _gotoNext = 381300i32;
                    };
                } else if (__value__ == (381282i32)) {
                    return _z_381069;
                    _gotoNext = 381300i32;
                } else if (__value__ == (381300i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_380396 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_380383 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_381069 * _p_380396 : stdgo.GoFloat64) / _q_380383 : stdgo.GoFloat64);
                    _gotoNext = 381526i32;
                } else if (__value__ == (381526i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 381544i32;
                    } else {
                        _gotoNext = 381566i32;
                    };
                } else if (__value__ == (381544i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 381566i32;
                } else if (__value__ == (381566i32)) {
                    return (_z_381069 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
