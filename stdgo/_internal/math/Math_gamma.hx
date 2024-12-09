package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_295124:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _absz_295319:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_295174:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_295293:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_295336:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_294817:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_295490:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_295298:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_294865:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_294861:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_294533;
        var _signgam_295106:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_294804:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_294533 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 294624i32;
                } else if (__value__ == (294624i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 294634i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 294696i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 294731i32;
                    } else {
                        _gotoNext = 294804i32;
                    };
                } else if (__value__ == (294634i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 294804i32;
                } else if (__value__ == (294696i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 294804i32;
                } else if (__value__ == (294731i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 294760i32;
                    } else {
                        _gotoNext = 294786i32;
                    };
                } else if (__value__ == (294760i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 294786i32;
                } else if (__value__ == (294786i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 294804i32;
                } else if (__value__ == (294804i32)) {
                    _q_294804 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_294817 = stdgo._internal.math.Math_floor.floor(_q_294804);
                    if ((_q_294804 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 294842i32;
                    } else {
                        _gotoNext = 295490i32;
                    };
                } else if (__value__ == (294842i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 294856i32;
                    } else {
                        _gotoNext = 295106i32;
                    };
                } else if (__value__ == (294856i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_294861 = __tmp__._0;
                        _y2_294865 = __tmp__._1;
                    };
                    return (_y1_294861 * _y2_294865 : stdgo.GoFloat64);
                    _gotoNext = 295106i32;
                } else if (__value__ == (295106i32)) {
                    _signgam_295106 = (1 : stdgo.GoInt);
                    {
                        _ip_295124 = (_p_294817 : stdgo.GoInt64);
                        if ((_ip_295124 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 295150i32;
                        } else {
                            _gotoNext = 295174i32;
                        };
                    };
                } else if (__value__ == (295150i32)) {
                    _signgam_295106 = (-1 : stdgo.GoInt);
                    _gotoNext = 295174i32;
                } else if (__value__ == (295174i32)) {
                    _z_295174 = (_q_294804 - _p_294817 : stdgo.GoFloat64);
                    if ((_z_295174 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 295198i32;
                    } else {
                        _gotoNext = 295232i32;
                    };
                } else if (__value__ == (295198i32)) {
                    _p_294817 = (_p_294817 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_295174 = (_q_294804 - _p_294817 : stdgo.GoFloat64);
                    _gotoNext = 295232i32;
                } else if (__value__ == (295232i32)) {
                    _z_295174 = (_q_294804 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_295174 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_295174 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 295262i32;
                    } else {
                        _gotoNext = 295293i32;
                    };
                } else if (__value__ == (295262i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_295106);
                    _gotoNext = 295293i32;
                } else if (__value__ == (295293i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_294804);
                        _sq1_295293 = __tmp__._0;
                        _sq2_295298 = __tmp__._1;
                    };
                    _absz_295319 = stdgo._internal.math.Math_abs.abs(_z_295174);
                    _d_295336 = ((_absz_295319 * _sq1_295293 : stdgo.GoFloat64) * _sq2_295298 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_295336, (0 : stdgo.GoInt))) {
                        _gotoNext = 295375i32;
                    } else {
                        _gotoNext = 295415i32;
                    };
                } else if (__value__ == (295375i32)) {
                    _z_295174 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_295319 : stdgo.GoFloat64) / _sq1_295293 : stdgo.GoFloat64) / _sq2_295298 : stdgo.GoFloat64);
                    _gotoNext = 295437i32;
                } else if (__value__ == (295415i32)) {
                    _gotoNext = 295415i32;
                    _z_295174 = ((3.141592653589793 : stdgo.GoFloat64) / _d_295336 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 295437i32;
                } else if (__value__ == (295437i32)) {
                    return ((_signgam_295106 : stdgo.GoFloat64) * _z_295174 : stdgo.GoFloat64);
                    _gotoNext = 295490i32;
                } else if (__value__ == (295490i32)) {
                    _z_295490 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 295500i32;
                } else if (__value__ == (295500i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 295511i32;
                    } else {
                        _gotoNext = 295541i32;
                    };
                } else if (__value__ == (295511i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_295490 = (_z_295490 * _x : stdgo.GoFloat64);
                    _gotoNext = 295500i32;
                } else if (__value__ == (295541i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 295541i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 295551i32;
                    } else {
                        _gotoNext = 295617i32;
                    };
                } else if (__value__ == (295551i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 295569i32;
                    } else {
                        _gotoNext = 295591i32;
                    };
                } else if (__value__ == (295569i32)) {
                    _gotoNext = 295947i32;
                } else if (__value__ == (295591i32)) {
                    _z_295490 = (_z_295490 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 295541i32;
                } else if (__value__ == (295617i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 295617i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 295627i32;
                    } else {
                        _gotoNext = 295693i32;
                    };
                } else if (__value__ == (295627i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 295644i32;
                    } else {
                        _gotoNext = 295666i32;
                    };
                } else if (__value__ == (295644i32)) {
                    _gotoNext = 295947i32;
                } else if (__value__ == (295666i32)) {
                    _z_295490 = (_z_295490 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 295617i32;
                } else if (__value__ == (295693i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 295703i32;
                    } else {
                        _gotoNext = 295721i32;
                    };
                } else if (__value__ == (295703i32)) {
                    return _z_295490;
                    _gotoNext = 295721i32;
                } else if (__value__ == (295721i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_294817 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_294804 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_295490 * _p_294817 : stdgo.GoFloat64) / _q_294804 : stdgo.GoFloat64);
                    _gotoNext = 295947i32;
                } else if (__value__ == (295947i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 295965i32;
                    } else {
                        _gotoNext = 295987i32;
                    };
                } else if (__value__ == (295965i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 295987i32;
                } else if (__value__ == (295987i32)) {
                    return (_z_295490 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
