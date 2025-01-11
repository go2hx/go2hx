package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_667783;
        var _absz_668569:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_668054:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_668740:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_668543:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_668424:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_668111:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_668067:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_668548:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_668115:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_668586:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_668374:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_668356:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_667783 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 667874i32;
                } else if (__value__ == (667874i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 667884i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 667946i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 667981i32;
                    } else {
                        _gotoNext = 668054i32;
                    };
                } else if (__value__ == (667884i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 668054i32;
                } else if (__value__ == (667946i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 668054i32;
                } else if (__value__ == (667981i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 668010i32;
                    } else {
                        _gotoNext = 668036i32;
                    };
                } else if (__value__ == (668010i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 668036i32;
                } else if (__value__ == (668036i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 668054i32;
                } else if (__value__ == (668054i32)) {
                    _q_668054 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_668067 = stdgo._internal.math.Math_floor.floor(_q_668054);
                    if ((_q_668054 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 668092i32;
                    } else {
                        _gotoNext = 668740i32;
                    };
                } else if (__value__ == (668092i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 668106i32;
                    } else {
                        _gotoNext = 668356i32;
                    };
                } else if (__value__ == (668106i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_668111 = __tmp__._0;
                        _y2_668115 = __tmp__._1;
                    };
                    return (_y1_668111 * _y2_668115 : stdgo.GoFloat64);
                    _gotoNext = 668356i32;
                } else if (__value__ == (668356i32)) {
                    _signgam_668356 = (1 : stdgo.GoInt);
                    {
                        _ip_668374 = (_p_668067 : stdgo.GoInt64);
                        if ((_ip_668374 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 668400i32;
                        } else {
                            _gotoNext = 668424i32;
                        };
                    };
                } else if (__value__ == (668400i32)) {
                    _signgam_668356 = (-1 : stdgo.GoInt);
                    _gotoNext = 668424i32;
                } else if (__value__ == (668424i32)) {
                    _z_668424 = (_q_668054 - _p_668067 : stdgo.GoFloat64);
                    if ((_z_668424 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 668448i32;
                    } else {
                        _gotoNext = 668482i32;
                    };
                } else if (__value__ == (668448i32)) {
                    _p_668067 = (_p_668067 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_668424 = (_q_668054 - _p_668067 : stdgo.GoFloat64);
                    _gotoNext = 668482i32;
                } else if (__value__ == (668482i32)) {
                    _z_668424 = (_q_668054 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_668424 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_668424 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 668512i32;
                    } else {
                        _gotoNext = 668543i32;
                    };
                } else if (__value__ == (668512i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_668356);
                    _gotoNext = 668543i32;
                } else if (__value__ == (668543i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_668054);
                        _sq1_668543 = __tmp__._0;
                        _sq2_668548 = __tmp__._1;
                    };
                    _absz_668569 = stdgo._internal.math.Math_abs.abs(_z_668424);
                    _d_668586 = ((_absz_668569 * _sq1_668543 : stdgo.GoFloat64) * _sq2_668548 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_668586, (0 : stdgo.GoInt))) {
                        _gotoNext = 668625i32;
                    } else {
                        _gotoNext = 668665i32;
                    };
                } else if (__value__ == (668625i32)) {
                    _z_668424 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_668569 : stdgo.GoFloat64) / _sq1_668543 : stdgo.GoFloat64) / _sq2_668548 : stdgo.GoFloat64);
                    _gotoNext = 668687i32;
                } else if (__value__ == (668665i32)) {
                    _gotoNext = 668665i32;
                    _z_668424 = ((3.141592653589793 : stdgo.GoFloat64) / _d_668586 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 668687i32;
                } else if (__value__ == (668687i32)) {
                    return ((_signgam_668356 : stdgo.GoFloat64) * _z_668424 : stdgo.GoFloat64);
                    _gotoNext = 668740i32;
                } else if (__value__ == (668740i32)) {
                    _z_668740 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 668750i32;
                } else if (__value__ == (668750i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 668761i32;
                    } else {
                        _gotoNext = 668791i32;
                    };
                } else if (__value__ == (668761i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_668740 = (_z_668740 * _x : stdgo.GoFloat64);
                    _gotoNext = 668750i32;
                } else if (__value__ == (668791i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 668791i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 668801i32;
                    } else {
                        _gotoNext = 668867i32;
                    };
                } else if (__value__ == (668801i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 668819i32;
                    } else {
                        _gotoNext = 668841i32;
                    };
                } else if (__value__ == (668819i32)) {
                    _gotoNext = 669197i32;
                } else if (__value__ == (668841i32)) {
                    _z_668740 = (_z_668740 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 668791i32;
                } else if (__value__ == (668867i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 668867i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 668877i32;
                    } else {
                        _gotoNext = 668943i32;
                    };
                } else if (__value__ == (668877i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 668894i32;
                    } else {
                        _gotoNext = 668916i32;
                    };
                } else if (__value__ == (668894i32)) {
                    _gotoNext = 669197i32;
                } else if (__value__ == (668916i32)) {
                    _z_668740 = (_z_668740 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 668867i32;
                } else if (__value__ == (668943i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 668953i32;
                    } else {
                        _gotoNext = 668971i32;
                    };
                } else if (__value__ == (668953i32)) {
                    return _z_668740;
                    _gotoNext = 668971i32;
                } else if (__value__ == (668971i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_668067 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_668054 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_668740 * _p_668067 : stdgo.GoFloat64) / _q_668054 : stdgo.GoFloat64);
                    _gotoNext = 669197i32;
                } else if (__value__ == (669197i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 669215i32;
                    } else {
                        _gotoNext = 669237i32;
                    };
                } else if (__value__ == (669215i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 669237i32;
                } else if (__value__ == (669237i32)) {
                    return (_z_668740 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
