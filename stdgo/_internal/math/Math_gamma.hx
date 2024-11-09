package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y1_504630:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_505105:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_505067:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_504893:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_504302;
        var _absz_505088:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_504943:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_504875:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_504586:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_504573:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_505062:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_504634:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_505259:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_504302 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 504393i32;
                } else if (__value__ == (504393i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 504403i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 504465i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 504500i32;
                    } else {
                        _gotoNext = 504573i32;
                    };
                } else if (__value__ == (504403i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 504573i32;
                } else if (__value__ == (504465i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 504573i32;
                } else if (__value__ == (504500i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 504529i32;
                    } else {
                        _gotoNext = 504555i32;
                    };
                } else if (__value__ == (504529i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 504555i32;
                } else if (__value__ == (504555i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 504573i32;
                } else if (__value__ == (504573i32)) {
                    _q_504573 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_504586 = stdgo._internal.math.Math_floor.floor(_q_504573);
                    if ((_q_504573 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 504611i32;
                    } else {
                        _gotoNext = 505259i32;
                    };
                } else if (__value__ == (504611i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 504625i32;
                    } else {
                        _gotoNext = 504875i32;
                    };
                } else if (__value__ == (504625i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_504630 = __tmp__._0;
                        _y2_504634 = __tmp__._1;
                    };
                    return (_y1_504630 * _y2_504634 : stdgo.GoFloat64);
                    _gotoNext = 504875i32;
                } else if (__value__ == (504875i32)) {
                    _signgam_504875 = (1 : stdgo.GoInt);
                    {
                        _ip_504893 = (_p_504586 : stdgo.GoInt64);
                        if ((_ip_504893 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 504919i32;
                        } else {
                            _gotoNext = 504943i32;
                        };
                    };
                } else if (__value__ == (504919i32)) {
                    _signgam_504875 = (-1 : stdgo.GoInt);
                    _gotoNext = 504943i32;
                } else if (__value__ == (504943i32)) {
                    _z_504943 = (_q_504573 - _p_504586 : stdgo.GoFloat64);
                    if ((_z_504943 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 504967i32;
                    } else {
                        _gotoNext = 505001i32;
                    };
                } else if (__value__ == (504967i32)) {
                    _p_504586 = (_p_504586 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_504943 = (_q_504573 - _p_504586 : stdgo.GoFloat64);
                    _gotoNext = 505001i32;
                } else if (__value__ == (505001i32)) {
                    _z_504943 = (_q_504573 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_504943 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_504943 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 505031i32;
                    } else {
                        _gotoNext = 505062i32;
                    };
                } else if (__value__ == (505031i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_504875);
                    _gotoNext = 505062i32;
                } else if (__value__ == (505062i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_504573);
                        _sq1_505062 = __tmp__._0;
                        _sq2_505067 = __tmp__._1;
                    };
                    _absz_505088 = stdgo._internal.math.Math_abs.abs(_z_504943);
                    _d_505105 = ((_absz_505088 * _sq1_505062 : stdgo.GoFloat64) * _sq2_505067 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_505105, (0 : stdgo.GoInt))) {
                        _gotoNext = 505144i32;
                    } else {
                        _gotoNext = 505184i32;
                    };
                } else if (__value__ == (505144i32)) {
                    _z_504943 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_505088 : stdgo.GoFloat64) / _sq1_505062 : stdgo.GoFloat64) / _sq2_505067 : stdgo.GoFloat64);
                    _gotoNext = 505206i32;
                } else if (__value__ == (505184i32)) {
                    _gotoNext = 505184i32;
                    _z_504943 = ((3.141592653589793 : stdgo.GoFloat64) / _d_505105 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 505206i32;
                } else if (__value__ == (505206i32)) {
                    return ((_signgam_504875 : stdgo.GoFloat64) * _z_504943 : stdgo.GoFloat64);
                    _gotoNext = 505259i32;
                } else if (__value__ == (505259i32)) {
                    _z_505259 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 505269i32;
                } else if (__value__ == (505269i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 505280i32;
                    } else {
                        _gotoNext = 505310i32;
                    };
                } else if (__value__ == (505280i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_505259 = (_z_505259 * _x : stdgo.GoFloat64);
                    _gotoNext = 505269i32;
                } else if (__value__ == (505310i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 505310i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 505320i32;
                    } else {
                        _gotoNext = 505386i32;
                    };
                } else if (__value__ == (505320i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 505338i32;
                    } else {
                        _gotoNext = 505360i32;
                    };
                } else if (__value__ == (505338i32)) {
                    _gotoNext = 505716i32;
                } else if (__value__ == (505360i32)) {
                    _z_505259 = (_z_505259 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 505310i32;
                } else if (__value__ == (505386i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 505386i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 505396i32;
                    } else {
                        _gotoNext = 505462i32;
                    };
                } else if (__value__ == (505396i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 505413i32;
                    } else {
                        _gotoNext = 505435i32;
                    };
                } else if (__value__ == (505413i32)) {
                    _gotoNext = 505716i32;
                } else if (__value__ == (505435i32)) {
                    _z_505259 = (_z_505259 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 505386i32;
                } else if (__value__ == (505462i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 505472i32;
                    } else {
                        _gotoNext = 505490i32;
                    };
                } else if (__value__ == (505472i32)) {
                    return _z_505259;
                    _gotoNext = 505490i32;
                } else if (__value__ == (505490i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_504586 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_504573 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_505259 * _p_504586 : stdgo.GoFloat64) / _q_504573 : stdgo.GoFloat64);
                    _gotoNext = 505716i32;
                } else if (__value__ == (505716i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 505734i32;
                    } else {
                        _gotoNext = 505756i32;
                    };
                } else if (__value__ == (505734i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 505756i32;
                } else if (__value__ == (505756i32)) {
                    return (_z_505259 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
