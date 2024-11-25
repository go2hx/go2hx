package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_459853:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_459827:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_459658:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_459351:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_459832:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_460024:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_459870:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_459395:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_459338:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_459708:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_459640:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_459399:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_459067;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_459067 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 459158i32;
                } else if (__value__ == (459158i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 459168i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 459230i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 459265i32;
                    } else {
                        _gotoNext = 459338i32;
                    };
                } else if (__value__ == (459168i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 459338i32;
                } else if (__value__ == (459230i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 459338i32;
                } else if (__value__ == (459265i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 459294i32;
                    } else {
                        _gotoNext = 459320i32;
                    };
                } else if (__value__ == (459294i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 459320i32;
                } else if (__value__ == (459320i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 459338i32;
                } else if (__value__ == (459338i32)) {
                    _q_459338 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_459351 = stdgo._internal.math.Math_floor.floor(_q_459338);
                    if ((_q_459338 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459376i32;
                    } else {
                        _gotoNext = 460024i32;
                    };
                } else if (__value__ == (459376i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459390i32;
                    } else {
                        _gotoNext = 459640i32;
                    };
                } else if (__value__ == (459390i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_459395 = __tmp__._0;
                        _y2_459399 = __tmp__._1;
                    };
                    return (_y1_459395 * _y2_459399 : stdgo.GoFloat64);
                    _gotoNext = 459640i32;
                } else if (__value__ == (459640i32)) {
                    _signgam_459640 = (1 : stdgo.GoInt);
                    {
                        _ip_459658 = (_p_459351 : stdgo.GoInt64);
                        if ((_ip_459658 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 459684i32;
                        } else {
                            _gotoNext = 459708i32;
                        };
                    };
                } else if (__value__ == (459684i32)) {
                    _signgam_459640 = (-1 : stdgo.GoInt);
                    _gotoNext = 459708i32;
                } else if (__value__ == (459708i32)) {
                    _z_459708 = (_q_459338 - _p_459351 : stdgo.GoFloat64);
                    if ((_z_459708 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459732i32;
                    } else {
                        _gotoNext = 459766i32;
                    };
                } else if (__value__ == (459732i32)) {
                    _p_459351 = (_p_459351 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_459708 = (_q_459338 - _p_459351 : stdgo.GoFloat64);
                    _gotoNext = 459766i32;
                } else if (__value__ == (459766i32)) {
                    _z_459708 = (_q_459338 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_459708 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_459708 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 459796i32;
                    } else {
                        _gotoNext = 459827i32;
                    };
                } else if (__value__ == (459796i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_459640);
                    _gotoNext = 459827i32;
                } else if (__value__ == (459827i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_459338);
                        _sq1_459827 = __tmp__._0;
                        _sq2_459832 = __tmp__._1;
                    };
                    _absz_459853 = stdgo._internal.math.Math_abs.abs(_z_459708);
                    _d_459870 = ((_absz_459853 * _sq1_459827 : stdgo.GoFloat64) * _sq2_459832 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_459870, (0 : stdgo.GoInt))) {
                        _gotoNext = 459909i32;
                    } else {
                        _gotoNext = 459949i32;
                    };
                } else if (__value__ == (459909i32)) {
                    _z_459708 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_459853 : stdgo.GoFloat64) / _sq1_459827 : stdgo.GoFloat64) / _sq2_459832 : stdgo.GoFloat64);
                    _gotoNext = 459971i32;
                } else if (__value__ == (459949i32)) {
                    _gotoNext = 459949i32;
                    _z_459708 = ((3.141592653589793 : stdgo.GoFloat64) / _d_459870 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 459971i32;
                } else if (__value__ == (459971i32)) {
                    return ((_signgam_459640 : stdgo.GoFloat64) * _z_459708 : stdgo.GoFloat64);
                    _gotoNext = 460024i32;
                } else if (__value__ == (460024i32)) {
                    _z_460024 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 460034i32;
                } else if (__value__ == (460034i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 460045i32;
                    } else {
                        _gotoNext = 460075i32;
                    };
                } else if (__value__ == (460045i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_460024 = (_z_460024 * _x : stdgo.GoFloat64);
                    _gotoNext = 460034i32;
                } else if (__value__ == (460075i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 460075i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 460085i32;
                    } else {
                        _gotoNext = 460151i32;
                    };
                } else if (__value__ == (460085i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 460103i32;
                    } else {
                        _gotoNext = 460125i32;
                    };
                } else if (__value__ == (460103i32)) {
                    _gotoNext = 460481i32;
                } else if (__value__ == (460125i32)) {
                    _z_460024 = (_z_460024 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 460075i32;
                } else if (__value__ == (460151i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 460151i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 460161i32;
                    } else {
                        _gotoNext = 460227i32;
                    };
                } else if (__value__ == (460161i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 460178i32;
                    } else {
                        _gotoNext = 460200i32;
                    };
                } else if (__value__ == (460178i32)) {
                    _gotoNext = 460481i32;
                } else if (__value__ == (460200i32)) {
                    _z_460024 = (_z_460024 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 460151i32;
                } else if (__value__ == (460227i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 460237i32;
                    } else {
                        _gotoNext = 460255i32;
                    };
                } else if (__value__ == (460237i32)) {
                    return _z_460024;
                    _gotoNext = 460255i32;
                } else if (__value__ == (460255i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_459351 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_459338 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_460024 * _p_459351 : stdgo.GoFloat64) / _q_459338 : stdgo.GoFloat64);
                    _gotoNext = 460481i32;
                } else if (__value__ == (460481i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 460499i32;
                    } else {
                        _gotoNext = 460521i32;
                    };
                } else if (__value__ == (460499i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 460521i32;
                } else if (__value__ == (460521i32)) {
                    return (_z_460024 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
