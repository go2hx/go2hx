package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_365608;
        var _absz_366394:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_366181:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_365936:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_366565:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_366373:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_366368:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_365940:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_366411:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_366199:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_365879:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_366249:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_365892:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_365608 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 365699i32;
                } else if (__value__ == (365699i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 365709i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 365771i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 365806i32;
                    } else {
                        _gotoNext = 365879i32;
                    };
                } else if (__value__ == (365709i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 365879i32;
                } else if (__value__ == (365771i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 365879i32;
                } else if (__value__ == (365806i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 365835i32;
                    } else {
                        _gotoNext = 365861i32;
                    };
                } else if (__value__ == (365835i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 365861i32;
                } else if (__value__ == (365861i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 365879i32;
                } else if (__value__ == (365879i32)) {
                    _q_365879 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_365892 = stdgo._internal.math.Math_floor.floor(_q_365879);
                    if ((_q_365879 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 365917i32;
                    } else {
                        _gotoNext = 366565i32;
                    };
                } else if (__value__ == (365917i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 365931i32;
                    } else {
                        _gotoNext = 366181i32;
                    };
                } else if (__value__ == (365931i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_365936 = __tmp__._0;
                        _y2_365940 = __tmp__._1;
                    };
                    return (_y1_365936 * _y2_365940 : stdgo.GoFloat64);
                    _gotoNext = 366181i32;
                } else if (__value__ == (366181i32)) {
                    _signgam_366181 = (1 : stdgo.GoInt);
                    {
                        _ip_366199 = (_p_365892 : stdgo.GoInt64);
                        if ((_ip_366199 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 366225i32;
                        } else {
                            _gotoNext = 366249i32;
                        };
                    };
                } else if (__value__ == (366225i32)) {
                    _signgam_366181 = (-1 : stdgo.GoInt);
                    _gotoNext = 366249i32;
                } else if (__value__ == (366249i32)) {
                    _z_366249 = (_q_365879 - _p_365892 : stdgo.GoFloat64);
                    if ((_z_366249 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 366273i32;
                    } else {
                        _gotoNext = 366307i32;
                    };
                } else if (__value__ == (366273i32)) {
                    _p_365892 = (_p_365892 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_366249 = (_q_365879 - _p_365892 : stdgo.GoFloat64);
                    _gotoNext = 366307i32;
                } else if (__value__ == (366307i32)) {
                    _z_366249 = (_q_365879 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_366249 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_366249 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 366337i32;
                    } else {
                        _gotoNext = 366368i32;
                    };
                } else if (__value__ == (366337i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_366181);
                    _gotoNext = 366368i32;
                } else if (__value__ == (366368i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_365879);
                        _sq1_366368 = __tmp__._0;
                        _sq2_366373 = __tmp__._1;
                    };
                    _absz_366394 = stdgo._internal.math.Math_abs.abs(_z_366249);
                    _d_366411 = ((_absz_366394 * _sq1_366368 : stdgo.GoFloat64) * _sq2_366373 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_366411, (0 : stdgo.GoInt))) {
                        _gotoNext = 366450i32;
                    } else {
                        _gotoNext = 366490i32;
                    };
                } else if (__value__ == (366450i32)) {
                    _z_366249 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_366394 : stdgo.GoFloat64) / _sq1_366368 : stdgo.GoFloat64) / _sq2_366373 : stdgo.GoFloat64);
                    _gotoNext = 366512i32;
                } else if (__value__ == (366490i32)) {
                    _gotoNext = 366490i32;
                    _z_366249 = ((3.141592653589793 : stdgo.GoFloat64) / _d_366411 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 366512i32;
                } else if (__value__ == (366512i32)) {
                    return ((_signgam_366181 : stdgo.GoFloat64) * _z_366249 : stdgo.GoFloat64);
                    _gotoNext = 366565i32;
                } else if (__value__ == (366565i32)) {
                    _z_366565 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 366575i32;
                } else if (__value__ == (366575i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 366586i32;
                    } else {
                        _gotoNext = 366616i32;
                    };
                } else if (__value__ == (366586i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_366565 = (_z_366565 * _x : stdgo.GoFloat64);
                    _gotoNext = 366575i32;
                } else if (__value__ == (366616i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 366616i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 366626i32;
                    } else {
                        _gotoNext = 366692i32;
                    };
                } else if (__value__ == (366626i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 366644i32;
                    } else {
                        _gotoNext = 366666i32;
                    };
                } else if (__value__ == (366644i32)) {
                    _gotoNext = 367022i32;
                } else if (__value__ == (366666i32)) {
                    _z_366565 = (_z_366565 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 366616i32;
                } else if (__value__ == (366692i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 366692i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 366702i32;
                    } else {
                        _gotoNext = 366768i32;
                    };
                } else if (__value__ == (366702i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 366719i32;
                    } else {
                        _gotoNext = 366741i32;
                    };
                } else if (__value__ == (366719i32)) {
                    _gotoNext = 367022i32;
                } else if (__value__ == (366741i32)) {
                    _z_366565 = (_z_366565 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 366692i32;
                } else if (__value__ == (366768i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 366778i32;
                    } else {
                        _gotoNext = 366796i32;
                    };
                } else if (__value__ == (366778i32)) {
                    return _z_366565;
                    _gotoNext = 366796i32;
                } else if (__value__ == (366796i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_365892 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_365879 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_366565 * _p_365892 : stdgo.GoFloat64) / _q_365879 : stdgo.GoFloat64);
                    _gotoNext = 367022i32;
                } else if (__value__ == (367022i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 367040i32;
                    } else {
                        _gotoNext = 367062i32;
                    };
                } else if (__value__ == (367040i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 367062i32;
                } else if (__value__ == (367062i32)) {
                    return (_z_366565 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
