package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_447168;
        var _z_448125:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_447933:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_447500:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_447954:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_447439:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_447971:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_447759:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_447741:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_447496:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_447452:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_447809:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_447928:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_447168 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 447259i32;
                } else if (__value__ == (447259i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 447269i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 447331i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 447366i32;
                    } else {
                        _gotoNext = 447439i32;
                    };
                } else if (__value__ == (447269i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 447439i32;
                } else if (__value__ == (447331i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 447439i32;
                } else if (__value__ == (447366i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 447395i32;
                    } else {
                        _gotoNext = 447421i32;
                    };
                } else if (__value__ == (447395i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 447421i32;
                } else if (__value__ == (447421i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 447439i32;
                } else if (__value__ == (447439i32)) {
                    _q_447439 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_447452 = stdgo._internal.math.Math_floor.floor(_q_447439);
                    if ((_q_447439 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 447477i32;
                    } else {
                        _gotoNext = 448125i32;
                    };
                } else if (__value__ == (447477i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 447491i32;
                    } else {
                        _gotoNext = 447741i32;
                    };
                } else if (__value__ == (447491i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_447496 = __tmp__._0;
                        _y2_447500 = __tmp__._1;
                    };
                    return (_y1_447496 * _y2_447500 : stdgo.GoFloat64);
                    _gotoNext = 447741i32;
                } else if (__value__ == (447741i32)) {
                    _signgam_447741 = (1 : stdgo.GoInt);
                    {
                        _ip_447759 = (_p_447452 : stdgo.GoInt64);
                        if ((_ip_447759 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 447785i32;
                        } else {
                            _gotoNext = 447809i32;
                        };
                    };
                } else if (__value__ == (447785i32)) {
                    _signgam_447741 = (-1 : stdgo.GoInt);
                    _gotoNext = 447809i32;
                } else if (__value__ == (447809i32)) {
                    _z_447809 = (_q_447439 - _p_447452 : stdgo.GoFloat64);
                    if ((_z_447809 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 447833i32;
                    } else {
                        _gotoNext = 447867i32;
                    };
                } else if (__value__ == (447833i32)) {
                    _p_447452 = (_p_447452 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_447809 = (_q_447439 - _p_447452 : stdgo.GoFloat64);
                    _gotoNext = 447867i32;
                } else if (__value__ == (447867i32)) {
                    _z_447809 = (_q_447439 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_447809 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_447809 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 447897i32;
                    } else {
                        _gotoNext = 447928i32;
                    };
                } else if (__value__ == (447897i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_447741);
                    _gotoNext = 447928i32;
                } else if (__value__ == (447928i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_447439);
                        _sq1_447928 = __tmp__._0;
                        _sq2_447933 = __tmp__._1;
                    };
                    _absz_447954 = stdgo._internal.math.Math_abs.abs(_z_447809);
                    _d_447971 = ((_absz_447954 * _sq1_447928 : stdgo.GoFloat64) * _sq2_447933 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_447971, (0 : stdgo.GoInt))) {
                        _gotoNext = 448010i32;
                    } else {
                        _gotoNext = 448050i32;
                    };
                } else if (__value__ == (448010i32)) {
                    _z_447809 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_447954 : stdgo.GoFloat64) / _sq1_447928 : stdgo.GoFloat64) / _sq2_447933 : stdgo.GoFloat64);
                    _gotoNext = 448072i32;
                } else if (__value__ == (448050i32)) {
                    _gotoNext = 448050i32;
                    _z_447809 = ((3.141592653589793 : stdgo.GoFloat64) / _d_447971 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 448072i32;
                } else if (__value__ == (448072i32)) {
                    return ((_signgam_447741 : stdgo.GoFloat64) * _z_447809 : stdgo.GoFloat64);
                    _gotoNext = 448125i32;
                } else if (__value__ == (448125i32)) {
                    _z_448125 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 448135i32;
                } else if (__value__ == (448135i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448146i32;
                    } else {
                        _gotoNext = 448176i32;
                    };
                } else if (__value__ == (448146i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_448125 = (_z_448125 * _x : stdgo.GoFloat64);
                    _gotoNext = 448135i32;
                } else if (__value__ == (448176i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 448176i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448186i32;
                    } else {
                        _gotoNext = 448252i32;
                    };
                } else if (__value__ == (448186i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448204i32;
                    } else {
                        _gotoNext = 448226i32;
                    };
                } else if (__value__ == (448204i32)) {
                    _gotoNext = 448582i32;
                } else if (__value__ == (448226i32)) {
                    _z_448125 = (_z_448125 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 448176i32;
                } else if (__value__ == (448252i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 448252i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448262i32;
                    } else {
                        _gotoNext = 448328i32;
                    };
                } else if (__value__ == (448262i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448279i32;
                    } else {
                        _gotoNext = 448301i32;
                    };
                } else if (__value__ == (448279i32)) {
                    _gotoNext = 448582i32;
                } else if (__value__ == (448301i32)) {
                    _z_448125 = (_z_448125 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 448252i32;
                } else if (__value__ == (448328i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 448338i32;
                    } else {
                        _gotoNext = 448356i32;
                    };
                } else if (__value__ == (448338i32)) {
                    return _z_448125;
                    _gotoNext = 448356i32;
                } else if (__value__ == (448356i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_447452 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_447439 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_448125 * _p_447452 : stdgo.GoFloat64) / _q_447439 : stdgo.GoFloat64);
                    _gotoNext = 448582i32;
                } else if (__value__ == (448582i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 448600i32;
                    } else {
                        _gotoNext = 448622i32;
                    };
                } else if (__value__ == (448600i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 448622i32;
                } else if (__value__ == (448622i32)) {
                    return (_z_448125 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
