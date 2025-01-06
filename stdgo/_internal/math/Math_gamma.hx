package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_328082:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_327890:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_327885:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_327457:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_327396:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_327928:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_327911:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_327698:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_327125;
        var _ip_327716:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _z_327766:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_327453:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_327409:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_327125 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 327216i32;
                } else if (__value__ == (327216i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 327226i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 327288i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 327323i32;
                    } else {
                        _gotoNext = 327396i32;
                    };
                } else if (__value__ == (327226i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 327396i32;
                } else if (__value__ == (327288i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 327396i32;
                } else if (__value__ == (327323i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 327352i32;
                    } else {
                        _gotoNext = 327378i32;
                    };
                } else if (__value__ == (327352i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 327378i32;
                } else if (__value__ == (327378i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 327396i32;
                } else if (__value__ == (327396i32)) {
                    _q_327396 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_327409 = stdgo._internal.math.Math_floor.floor(_q_327396);
                    if ((_q_327396 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 327434i32;
                    } else {
                        _gotoNext = 328082i32;
                    };
                } else if (__value__ == (327434i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 327448i32;
                    } else {
                        _gotoNext = 327698i32;
                    };
                } else if (__value__ == (327448i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_327453 = __tmp__._0;
                        _y2_327457 = __tmp__._1;
                    };
                    return (_y1_327453 * _y2_327457 : stdgo.GoFloat64);
                    _gotoNext = 327698i32;
                } else if (__value__ == (327698i32)) {
                    _signgam_327698 = (1 : stdgo.GoInt);
                    {
                        _ip_327716 = (_p_327409 : stdgo.GoInt64);
                        if ((_ip_327716 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 327742i32;
                        } else {
                            _gotoNext = 327766i32;
                        };
                    };
                } else if (__value__ == (327742i32)) {
                    _signgam_327698 = (-1 : stdgo.GoInt);
                    _gotoNext = 327766i32;
                } else if (__value__ == (327766i32)) {
                    _z_327766 = (_q_327396 - _p_327409 : stdgo.GoFloat64);
                    if ((_z_327766 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 327790i32;
                    } else {
                        _gotoNext = 327824i32;
                    };
                } else if (__value__ == (327790i32)) {
                    _p_327409 = (_p_327409 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_327766 = (_q_327396 - _p_327409 : stdgo.GoFloat64);
                    _gotoNext = 327824i32;
                } else if (__value__ == (327824i32)) {
                    _z_327766 = (_q_327396 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_327766 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_327766 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 327854i32;
                    } else {
                        _gotoNext = 327885i32;
                    };
                } else if (__value__ == (327854i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_327698);
                    _gotoNext = 327885i32;
                } else if (__value__ == (327885i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_327396);
                        _sq1_327885 = __tmp__._0;
                        _sq2_327890 = __tmp__._1;
                    };
                    _absz_327911 = stdgo._internal.math.Math_abs.abs(_z_327766);
                    _d_327928 = ((_absz_327911 * _sq1_327885 : stdgo.GoFloat64) * _sq2_327890 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_327928, (0 : stdgo.GoInt))) {
                        _gotoNext = 327967i32;
                    } else {
                        _gotoNext = 328007i32;
                    };
                } else if (__value__ == (327967i32)) {
                    _z_327766 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_327911 : stdgo.GoFloat64) / _sq1_327885 : stdgo.GoFloat64) / _sq2_327890 : stdgo.GoFloat64);
                    _gotoNext = 328029i32;
                } else if (__value__ == (328007i32)) {
                    _gotoNext = 328007i32;
                    _z_327766 = ((3.141592653589793 : stdgo.GoFloat64) / _d_327928 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 328029i32;
                } else if (__value__ == (328029i32)) {
                    return ((_signgam_327698 : stdgo.GoFloat64) * _z_327766 : stdgo.GoFloat64);
                    _gotoNext = 328082i32;
                } else if (__value__ == (328082i32)) {
                    _z_328082 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 328092i32;
                } else if (__value__ == (328092i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 328103i32;
                    } else {
                        _gotoNext = 328133i32;
                    };
                } else if (__value__ == (328103i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_328082 = (_z_328082 * _x : stdgo.GoFloat64);
                    _gotoNext = 328092i32;
                } else if (__value__ == (328133i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 328133i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 328143i32;
                    } else {
                        _gotoNext = 328209i32;
                    };
                } else if (__value__ == (328143i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 328161i32;
                    } else {
                        _gotoNext = 328183i32;
                    };
                } else if (__value__ == (328161i32)) {
                    _gotoNext = 328539i32;
                } else if (__value__ == (328183i32)) {
                    _z_328082 = (_z_328082 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 328133i32;
                } else if (__value__ == (328209i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 328209i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 328219i32;
                    } else {
                        _gotoNext = 328285i32;
                    };
                } else if (__value__ == (328219i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 328236i32;
                    } else {
                        _gotoNext = 328258i32;
                    };
                } else if (__value__ == (328236i32)) {
                    _gotoNext = 328539i32;
                } else if (__value__ == (328258i32)) {
                    _z_328082 = (_z_328082 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 328209i32;
                } else if (__value__ == (328285i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 328295i32;
                    } else {
                        _gotoNext = 328313i32;
                    };
                } else if (__value__ == (328295i32)) {
                    return _z_328082;
                    _gotoNext = 328313i32;
                } else if (__value__ == (328313i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_327409 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_327396 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_328082 * _p_327409 : stdgo.GoFloat64) / _q_327396 : stdgo.GoFloat64);
                    _gotoNext = 328539i32;
                } else if (__value__ == (328539i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 328557i32;
                    } else {
                        _gotoNext = 328579i32;
                    };
                } else if (__value__ == (328557i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 328579i32;
                } else if (__value__ == (328579i32)) {
                    return (_z_328082 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
