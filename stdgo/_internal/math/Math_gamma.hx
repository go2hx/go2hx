package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _q_680407:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_680922:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_680896:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_680464:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_680420:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_680901:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_680727:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_680136;
        var _z_681093:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_680939:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_680777:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_680709:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_680468:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_680136 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 680227i32;
                } else if (__value__ == (680227i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 680237i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 680299i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 680334i32;
                    } else {
                        _gotoNext = 680407i32;
                    };
                } else if (__value__ == (680237i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 680407i32;
                } else if (__value__ == (680299i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 680407i32;
                } else if (__value__ == (680334i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 680363i32;
                    } else {
                        _gotoNext = 680389i32;
                    };
                } else if (__value__ == (680363i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 680389i32;
                } else if (__value__ == (680389i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 680407i32;
                } else if (__value__ == (680407i32)) {
                    _q_680407 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_680420 = stdgo._internal.math.Math_floor.floor(_q_680407);
                    if ((_q_680407 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 680445i32;
                    } else {
                        _gotoNext = 681093i32;
                    };
                } else if (__value__ == (680445i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 680459i32;
                    } else {
                        _gotoNext = 680709i32;
                    };
                } else if (__value__ == (680459i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_680464 = __tmp__._0;
                        _y2_680468 = __tmp__._1;
                    };
                    return (_y1_680464 * _y2_680468 : stdgo.GoFloat64);
                    _gotoNext = 680709i32;
                } else if (__value__ == (680709i32)) {
                    _signgam_680709 = (1 : stdgo.GoInt);
                    {
                        _ip_680727 = (_p_680420 : stdgo.GoInt64);
                        if ((_ip_680727 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 680753i32;
                        } else {
                            _gotoNext = 680777i32;
                        };
                    };
                } else if (__value__ == (680753i32)) {
                    _signgam_680709 = (-1 : stdgo.GoInt);
                    _gotoNext = 680777i32;
                } else if (__value__ == (680777i32)) {
                    _z_680777 = (_q_680407 - _p_680420 : stdgo.GoFloat64);
                    if ((_z_680777 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 680801i32;
                    } else {
                        _gotoNext = 680835i32;
                    };
                } else if (__value__ == (680801i32)) {
                    _p_680420 = (_p_680420 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_680777 = (_q_680407 - _p_680420 : stdgo.GoFloat64);
                    _gotoNext = 680835i32;
                } else if (__value__ == (680835i32)) {
                    _z_680777 = (_q_680407 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_680777 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_680777 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 680865i32;
                    } else {
                        _gotoNext = 680896i32;
                    };
                } else if (__value__ == (680865i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_680709);
                    _gotoNext = 680896i32;
                } else if (__value__ == (680896i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_680407);
                        _sq1_680896 = __tmp__._0;
                        _sq2_680901 = __tmp__._1;
                    };
                    _absz_680922 = stdgo._internal.math.Math_abs.abs(_z_680777);
                    _d_680939 = ((_absz_680922 * _sq1_680896 : stdgo.GoFloat64) * _sq2_680901 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_680939, (0 : stdgo.GoInt))) {
                        _gotoNext = 680978i32;
                    } else {
                        _gotoNext = 681018i32;
                    };
                } else if (__value__ == (680978i32)) {
                    _z_680777 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_680922 : stdgo.GoFloat64) / _sq1_680896 : stdgo.GoFloat64) / _sq2_680901 : stdgo.GoFloat64);
                    _gotoNext = 681040i32;
                } else if (__value__ == (681018i32)) {
                    _gotoNext = 681018i32;
                    _z_680777 = ((3.141592653589793 : stdgo.GoFloat64) / _d_680939 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 681040i32;
                } else if (__value__ == (681040i32)) {
                    return ((_signgam_680709 : stdgo.GoFloat64) * _z_680777 : stdgo.GoFloat64);
                    _gotoNext = 681093i32;
                } else if (__value__ == (681093i32)) {
                    _z_681093 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 681103i32;
                } else if (__value__ == (681103i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 681114i32;
                    } else {
                        _gotoNext = 681144i32;
                    };
                } else if (__value__ == (681114i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_681093 = (_z_681093 * _x : stdgo.GoFloat64);
                    _gotoNext = 681103i32;
                } else if (__value__ == (681144i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 681144i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 681154i32;
                    } else {
                        _gotoNext = 681220i32;
                    };
                } else if (__value__ == (681154i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 681172i32;
                    } else {
                        _gotoNext = 681194i32;
                    };
                } else if (__value__ == (681172i32)) {
                    _gotoNext = 681550i32;
                } else if (__value__ == (681194i32)) {
                    _z_681093 = (_z_681093 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 681144i32;
                } else if (__value__ == (681220i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 681220i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 681230i32;
                    } else {
                        _gotoNext = 681296i32;
                    };
                } else if (__value__ == (681230i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 681247i32;
                    } else {
                        _gotoNext = 681269i32;
                    };
                } else if (__value__ == (681247i32)) {
                    _gotoNext = 681550i32;
                } else if (__value__ == (681269i32)) {
                    _z_681093 = (_z_681093 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 681220i32;
                } else if (__value__ == (681296i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 681306i32;
                    } else {
                        _gotoNext = 681324i32;
                    };
                } else if (__value__ == (681306i32)) {
                    return _z_681093;
                    _gotoNext = 681324i32;
                } else if (__value__ == (681324i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_680420 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_680407 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_681093 * _p_680420 : stdgo.GoFloat64) / _q_680407 : stdgo.GoFloat64);
                    _gotoNext = 681550i32;
                } else if (__value__ == (681550i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 681568i32;
                    } else {
                        _gotoNext = 681590i32;
                    };
                } else if (__value__ == (681568i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 681590i32;
                } else if (__value__ == (681590i32)) {
                    return (_z_681093 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
