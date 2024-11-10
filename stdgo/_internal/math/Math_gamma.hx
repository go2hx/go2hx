package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y1_465507:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_465179;
        var _absz_465965:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_465770:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_465752:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_466136:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_465939:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_465511:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_465450:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_465944:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_465982:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_465820:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_465463:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_465179 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 465270i32;
                } else if (__value__ == (465270i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 465280i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 465342i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 465377i32;
                    } else {
                        _gotoNext = 465450i32;
                    };
                } else if (__value__ == (465280i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 465450i32;
                } else if (__value__ == (465342i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 465450i32;
                } else if (__value__ == (465377i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 465406i32;
                    } else {
                        _gotoNext = 465432i32;
                    };
                } else if (__value__ == (465406i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 465432i32;
                } else if (__value__ == (465432i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 465450i32;
                } else if (__value__ == (465450i32)) {
                    _q_465450 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_465463 = stdgo._internal.math.Math_floor.floor(_q_465450);
                    if ((_q_465450 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 465488i32;
                    } else {
                        _gotoNext = 466136i32;
                    };
                } else if (__value__ == (465488i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 465502i32;
                    } else {
                        _gotoNext = 465752i32;
                    };
                } else if (__value__ == (465502i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_465507 = __tmp__._0;
                        _y2_465511 = __tmp__._1;
                    };
                    return (_y1_465507 * _y2_465511 : stdgo.GoFloat64);
                    _gotoNext = 465752i32;
                } else if (__value__ == (465752i32)) {
                    _signgam_465752 = (1 : stdgo.GoInt);
                    {
                        _ip_465770 = (_p_465463 : stdgo.GoInt64);
                        if ((_ip_465770 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 465796i32;
                        } else {
                            _gotoNext = 465820i32;
                        };
                    };
                } else if (__value__ == (465796i32)) {
                    _signgam_465752 = (-1 : stdgo.GoInt);
                    _gotoNext = 465820i32;
                } else if (__value__ == (465820i32)) {
                    _z_465820 = (_q_465450 - _p_465463 : stdgo.GoFloat64);
                    if ((_z_465820 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 465844i32;
                    } else {
                        _gotoNext = 465878i32;
                    };
                } else if (__value__ == (465844i32)) {
                    _p_465463 = (_p_465463 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_465820 = (_q_465450 - _p_465463 : stdgo.GoFloat64);
                    _gotoNext = 465878i32;
                } else if (__value__ == (465878i32)) {
                    _z_465820 = (_q_465450 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_465820 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_465820 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 465908i32;
                    } else {
                        _gotoNext = 465939i32;
                    };
                } else if (__value__ == (465908i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_465752);
                    _gotoNext = 465939i32;
                } else if (__value__ == (465939i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_465450);
                        _sq1_465939 = __tmp__._0;
                        _sq2_465944 = __tmp__._1;
                    };
                    _absz_465965 = stdgo._internal.math.Math_abs.abs(_z_465820);
                    _d_465982 = ((_absz_465965 * _sq1_465939 : stdgo.GoFloat64) * _sq2_465944 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_465982, (0 : stdgo.GoInt))) {
                        _gotoNext = 466021i32;
                    } else {
                        _gotoNext = 466061i32;
                    };
                } else if (__value__ == (466021i32)) {
                    _z_465820 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_465965 : stdgo.GoFloat64) / _sq1_465939 : stdgo.GoFloat64) / _sq2_465944 : stdgo.GoFloat64);
                    _gotoNext = 466083i32;
                } else if (__value__ == (466061i32)) {
                    _gotoNext = 466061i32;
                    _z_465820 = ((3.141592653589793 : stdgo.GoFloat64) / _d_465982 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 466083i32;
                } else if (__value__ == (466083i32)) {
                    return ((_signgam_465752 : stdgo.GoFloat64) * _z_465820 : stdgo.GoFloat64);
                    _gotoNext = 466136i32;
                } else if (__value__ == (466136i32)) {
                    _z_466136 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 466146i32;
                } else if (__value__ == (466146i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 466157i32;
                    } else {
                        _gotoNext = 466187i32;
                    };
                } else if (__value__ == (466157i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_466136 = (_z_466136 * _x : stdgo.GoFloat64);
                    _gotoNext = 466146i32;
                } else if (__value__ == (466187i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 466187i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 466197i32;
                    } else {
                        _gotoNext = 466263i32;
                    };
                } else if (__value__ == (466197i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 466215i32;
                    } else {
                        _gotoNext = 466237i32;
                    };
                } else if (__value__ == (466215i32)) {
                    _gotoNext = 466593i32;
                } else if (__value__ == (466237i32)) {
                    _z_466136 = (_z_466136 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 466187i32;
                } else if (__value__ == (466263i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 466263i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 466273i32;
                    } else {
                        _gotoNext = 466339i32;
                    };
                } else if (__value__ == (466273i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 466290i32;
                    } else {
                        _gotoNext = 466312i32;
                    };
                } else if (__value__ == (466290i32)) {
                    _gotoNext = 466593i32;
                } else if (__value__ == (466312i32)) {
                    _z_466136 = (_z_466136 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 466263i32;
                } else if (__value__ == (466339i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 466349i32;
                    } else {
                        _gotoNext = 466367i32;
                    };
                } else if (__value__ == (466349i32)) {
                    return _z_466136;
                    _gotoNext = 466367i32;
                } else if (__value__ == (466367i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_465463 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_465450 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_466136 * _p_465463 : stdgo.GoFloat64) / _q_465450 : stdgo.GoFloat64);
                    _gotoNext = 466593i32;
                } else if (__value__ == (466593i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 466611i32;
                    } else {
                        _gotoNext = 466633i32;
                    };
                } else if (__value__ == (466611i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 466633i32;
                } else if (__value__ == (466633i32)) {
                    return (_z_466136 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
