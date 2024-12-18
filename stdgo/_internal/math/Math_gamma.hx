package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_406723:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_406531:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_406050:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_405766;
        var _sq1_406526:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_406339:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_406094:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_406357:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _d_406569:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_406552:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_406407:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_406098:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_406037:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_405766 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 405857i32;
                } else if (__value__ == (405857i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 405867i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 405929i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 405964i32;
                    } else {
                        _gotoNext = 406037i32;
                    };
                } else if (__value__ == (405867i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 406037i32;
                } else if (__value__ == (405929i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 406037i32;
                } else if (__value__ == (405964i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 405993i32;
                    } else {
                        _gotoNext = 406019i32;
                    };
                } else if (__value__ == (405993i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 406019i32;
                } else if (__value__ == (406019i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 406037i32;
                } else if (__value__ == (406037i32)) {
                    _q_406037 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_406050 = stdgo._internal.math.Math_floor.floor(_q_406037);
                    if ((_q_406037 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 406075i32;
                    } else {
                        _gotoNext = 406723i32;
                    };
                } else if (__value__ == (406075i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 406089i32;
                    } else {
                        _gotoNext = 406339i32;
                    };
                } else if (__value__ == (406089i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_406094 = __tmp__._0;
                        _y2_406098 = __tmp__._1;
                    };
                    return (_y1_406094 * _y2_406098 : stdgo.GoFloat64);
                    _gotoNext = 406339i32;
                } else if (__value__ == (406339i32)) {
                    _signgam_406339 = (1 : stdgo.GoInt);
                    {
                        _ip_406357 = (_p_406050 : stdgo.GoInt64);
                        if ((_ip_406357 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 406383i32;
                        } else {
                            _gotoNext = 406407i32;
                        };
                    };
                } else if (__value__ == (406383i32)) {
                    _signgam_406339 = (-1 : stdgo.GoInt);
                    _gotoNext = 406407i32;
                } else if (__value__ == (406407i32)) {
                    _z_406407 = (_q_406037 - _p_406050 : stdgo.GoFloat64);
                    if ((_z_406407 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 406431i32;
                    } else {
                        _gotoNext = 406465i32;
                    };
                } else if (__value__ == (406431i32)) {
                    _p_406050 = (_p_406050 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_406407 = (_q_406037 - _p_406050 : stdgo.GoFloat64);
                    _gotoNext = 406465i32;
                } else if (__value__ == (406465i32)) {
                    _z_406407 = (_q_406037 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_406407 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_406407 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 406495i32;
                    } else {
                        _gotoNext = 406526i32;
                    };
                } else if (__value__ == (406495i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_406339);
                    _gotoNext = 406526i32;
                } else if (__value__ == (406526i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_406037);
                        _sq1_406526 = __tmp__._0;
                        _sq2_406531 = __tmp__._1;
                    };
                    _absz_406552 = stdgo._internal.math.Math_abs.abs(_z_406407);
                    _d_406569 = ((_absz_406552 * _sq1_406526 : stdgo.GoFloat64) * _sq2_406531 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_406569, (0 : stdgo.GoInt))) {
                        _gotoNext = 406608i32;
                    } else {
                        _gotoNext = 406648i32;
                    };
                } else if (__value__ == (406608i32)) {
                    _z_406407 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_406552 : stdgo.GoFloat64) / _sq1_406526 : stdgo.GoFloat64) / _sq2_406531 : stdgo.GoFloat64);
                    _gotoNext = 406670i32;
                } else if (__value__ == (406648i32)) {
                    _gotoNext = 406648i32;
                    _z_406407 = ((3.141592653589793 : stdgo.GoFloat64) / _d_406569 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 406670i32;
                } else if (__value__ == (406670i32)) {
                    return ((_signgam_406339 : stdgo.GoFloat64) * _z_406407 : stdgo.GoFloat64);
                    _gotoNext = 406723i32;
                } else if (__value__ == (406723i32)) {
                    _z_406723 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 406733i32;
                } else if (__value__ == (406733i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 406744i32;
                    } else {
                        _gotoNext = 406774i32;
                    };
                } else if (__value__ == (406744i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_406723 = (_z_406723 * _x : stdgo.GoFloat64);
                    _gotoNext = 406733i32;
                } else if (__value__ == (406774i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 406774i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 406784i32;
                    } else {
                        _gotoNext = 406850i32;
                    };
                } else if (__value__ == (406784i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 406802i32;
                    } else {
                        _gotoNext = 406824i32;
                    };
                } else if (__value__ == (406802i32)) {
                    _gotoNext = 407180i32;
                } else if (__value__ == (406824i32)) {
                    _z_406723 = (_z_406723 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 406774i32;
                } else if (__value__ == (406850i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 406850i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 406860i32;
                    } else {
                        _gotoNext = 406926i32;
                    };
                } else if (__value__ == (406860i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 406877i32;
                    } else {
                        _gotoNext = 406899i32;
                    };
                } else if (__value__ == (406877i32)) {
                    _gotoNext = 407180i32;
                } else if (__value__ == (406899i32)) {
                    _z_406723 = (_z_406723 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 406850i32;
                } else if (__value__ == (406926i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 406936i32;
                    } else {
                        _gotoNext = 406954i32;
                    };
                } else if (__value__ == (406936i32)) {
                    return _z_406723;
                    _gotoNext = 406954i32;
                } else if (__value__ == (406954i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_406050 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_406037 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_406723 * _p_406050 : stdgo.GoFloat64) / _q_406037 : stdgo.GoFloat64);
                    _gotoNext = 407180i32;
                } else if (__value__ == (407180i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 407198i32;
                    } else {
                        _gotoNext = 407220i32;
                    };
                } else if (__value__ == (407198i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 407220i32;
                } else if (__value__ == (407220i32)) {
                    return (_z_406723 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
