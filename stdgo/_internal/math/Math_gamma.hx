package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y1_73541:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_74170:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_73978:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_73545:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_73999:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_73973:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_73786:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_73213;
        var _z_73854:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_73804:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_73484:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_74016:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_73497:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_73213 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 73304i32;
                } else if (__value__ == (73304i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 73314i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 73376i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 73411i32;
                    } else {
                        _gotoNext = 73484i32;
                    };
                } else if (__value__ == (73314i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 73484i32;
                } else if (__value__ == (73376i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 73484i32;
                } else if (__value__ == (73411i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 73440i32;
                    } else {
                        _gotoNext = 73466i32;
                    };
                } else if (__value__ == (73440i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 73466i32;
                } else if (__value__ == (73466i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 73484i32;
                } else if (__value__ == (73484i32)) {
                    _q_73484 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_73497 = stdgo._internal.math.Math_floor.floor(_q_73484);
                    if ((_q_73484 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 73522i32;
                    } else {
                        _gotoNext = 74170i32;
                    };
                } else if (__value__ == (73522i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 73536i32;
                    } else {
                        _gotoNext = 73786i32;
                    };
                } else if (__value__ == (73536i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_73541 = @:tmpset0 __tmp__._0;
                        _y2_73545 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_73541 * _y2_73545 : stdgo.GoFloat64);
                    _gotoNext = 73786i32;
                } else if (__value__ == (73786i32)) {
                    _signgam_73786 = (1 : stdgo.GoInt);
                    {
                        _ip_73804 = (_p_73497 : stdgo.GoInt64);
                        if ((_ip_73804 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 73830i32;
                        } else {
                            _gotoNext = 73854i32;
                        };
                    };
                } else if (__value__ == (73830i32)) {
                    _signgam_73786 = (-1 : stdgo.GoInt);
                    _gotoNext = 73854i32;
                } else if (__value__ == (73854i32)) {
                    _z_73854 = (_q_73484 - _p_73497 : stdgo.GoFloat64);
                    if ((_z_73854 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 73878i32;
                    } else {
                        _gotoNext = 73912i32;
                    };
                } else if (__value__ == (73878i32)) {
                    _p_73497 = (_p_73497 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_73854 = (_q_73484 - _p_73497 : stdgo.GoFloat64);
                    _gotoNext = 73912i32;
                } else if (__value__ == (73912i32)) {
                    _z_73854 = (_q_73484 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_73854 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_73854 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 73942i32;
                    } else {
                        _gotoNext = 73973i32;
                    };
                } else if (__value__ == (73942i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_73786);
                    _gotoNext = 73973i32;
                } else if (__value__ == (73973i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_73484);
                        _sq1_73973 = @:tmpset0 __tmp__._0;
                        _sq2_73978 = @:tmpset0 __tmp__._1;
                    };
                    _absz_73999 = stdgo._internal.math.Math_abs.abs(_z_73854);
                    _d_74016 = ((_absz_73999 * _sq1_73973 : stdgo.GoFloat64) * _sq2_73978 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_74016, (0 : stdgo.GoInt))) {
                        _gotoNext = 74055i32;
                    } else {
                        _gotoNext = 74095i32;
                    };
                } else if (__value__ == (74055i32)) {
                    _z_73854 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_73999 : stdgo.GoFloat64) / _sq1_73973 : stdgo.GoFloat64) / _sq2_73978 : stdgo.GoFloat64);
                    _gotoNext = 74117i32;
                } else if (__value__ == (74095i32)) {
                    _gotoNext = 74095i32;
                    _z_73854 = ((3.141592653589793 : stdgo.GoFloat64) / _d_74016 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 74117i32;
                } else if (__value__ == (74117i32)) {
                    return ((_signgam_73786 : stdgo.GoFloat64) * _z_73854 : stdgo.GoFloat64);
                    _gotoNext = 74170i32;
                } else if (__value__ == (74170i32)) {
                    _z_74170 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 74180i32;
                } else if (__value__ == (74180i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 74191i32;
                    } else {
                        _gotoNext = 74221i32;
                    };
                } else if (__value__ == (74191i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_74170 = (_z_74170 * _x : stdgo.GoFloat64);
                    _gotoNext = 74180i32;
                } else if (__value__ == (74221i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 74221i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 74231i32;
                    } else {
                        _gotoNext = 74297i32;
                    };
                } else if (__value__ == (74231i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 74249i32;
                    } else {
                        _gotoNext = 74271i32;
                    };
                } else if (__value__ == (74249i32)) {
                    _gotoNext = 74627i32;
                } else if (__value__ == (74271i32)) {
                    _z_74170 = (_z_74170 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 74221i32;
                } else if (__value__ == (74297i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 74297i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 74307i32;
                    } else {
                        _gotoNext = 74373i32;
                    };
                } else if (__value__ == (74307i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 74324i32;
                    } else {
                        _gotoNext = 74346i32;
                    };
                } else if (__value__ == (74324i32)) {
                    _gotoNext = 74627i32;
                } else if (__value__ == (74346i32)) {
                    _z_74170 = (_z_74170 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 74297i32;
                } else if (__value__ == (74373i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 74383i32;
                    } else {
                        _gotoNext = 74401i32;
                    };
                } else if (__value__ == (74383i32)) {
                    return _z_74170;
                    _gotoNext = 74401i32;
                } else if (__value__ == (74401i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_73497 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_73484 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_74170 * _p_73497 : stdgo.GoFloat64) / _q_73484 : stdgo.GoFloat64);
                    _gotoNext = 74627i32;
                } else if (__value__ == (74627i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 74645i32;
                    } else {
                        _gotoNext = 74667i32;
                    };
                } else if (__value__ == (74645i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 74667i32;
                } else if (__value__ == (74667i32)) {
                    return (_z_74170 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
