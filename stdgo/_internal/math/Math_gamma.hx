package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_118521:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_118516:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_118027:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_117756;
        var _d_118559:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_118397:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_118329:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ip_118347:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_118088:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_118084:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_118040:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_118713:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_118542:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_117756 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 117847i32;
                } else if (__value__ == (117847i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 117857i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 117919i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 117954i32;
                    } else {
                        _gotoNext = 118027i32;
                    };
                } else if (__value__ == (117857i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 118027i32;
                } else if (__value__ == (117919i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 118027i32;
                } else if (__value__ == (117954i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 117983i32;
                    } else {
                        _gotoNext = 118009i32;
                    };
                } else if (__value__ == (117983i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 118009i32;
                } else if (__value__ == (118009i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 118027i32;
                } else if (__value__ == (118027i32)) {
                    _q_118027 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_118040 = stdgo._internal.math.Math_floor.floor(_q_118027);
                    if ((_q_118027 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 118065i32;
                    } else {
                        _gotoNext = 118713i32;
                    };
                } else if (__value__ == (118065i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 118079i32;
                    } else {
                        _gotoNext = 118329i32;
                    };
                } else if (__value__ == (118079i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_118084 = @:tmpset0 __tmp__._0;
                        _y2_118088 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_118084 * _y2_118088 : stdgo.GoFloat64);
                    _gotoNext = 118329i32;
                } else if (__value__ == (118329i32)) {
                    _signgam_118329 = (1 : stdgo.GoInt);
                    {
                        _ip_118347 = (_p_118040 : stdgo.GoInt64);
                        if ((_ip_118347 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 118373i32;
                        } else {
                            _gotoNext = 118397i32;
                        };
                    };
                } else if (__value__ == (118373i32)) {
                    _signgam_118329 = (-1 : stdgo.GoInt);
                    _gotoNext = 118397i32;
                } else if (__value__ == (118397i32)) {
                    _z_118397 = (_q_118027 - _p_118040 : stdgo.GoFloat64);
                    if ((_z_118397 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 118421i32;
                    } else {
                        _gotoNext = 118455i32;
                    };
                } else if (__value__ == (118421i32)) {
                    _p_118040 = (_p_118040 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_118397 = (_q_118027 - _p_118040 : stdgo.GoFloat64);
                    _gotoNext = 118455i32;
                } else if (__value__ == (118455i32)) {
                    _z_118397 = (_q_118027 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_118397 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_118397 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 118485i32;
                    } else {
                        _gotoNext = 118516i32;
                    };
                } else if (__value__ == (118485i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_118329);
                    _gotoNext = 118516i32;
                } else if (__value__ == (118516i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_118027);
                        _sq1_118516 = @:tmpset0 __tmp__._0;
                        _sq2_118521 = @:tmpset0 __tmp__._1;
                    };
                    _absz_118542 = stdgo._internal.math.Math_abs.abs(_z_118397);
                    _d_118559 = ((_absz_118542 * _sq1_118516 : stdgo.GoFloat64) * _sq2_118521 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_118559, (0 : stdgo.GoInt))) {
                        _gotoNext = 118598i32;
                    } else {
                        _gotoNext = 118638i32;
                    };
                } else if (__value__ == (118598i32)) {
                    _z_118397 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_118542 : stdgo.GoFloat64) / _sq1_118516 : stdgo.GoFloat64) / _sq2_118521 : stdgo.GoFloat64);
                    _gotoNext = 118660i32;
                } else if (__value__ == (118638i32)) {
                    _gotoNext = 118638i32;
                    _z_118397 = ((3.141592653589793 : stdgo.GoFloat64) / _d_118559 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 118660i32;
                } else if (__value__ == (118660i32)) {
                    return ((_signgam_118329 : stdgo.GoFloat64) * _z_118397 : stdgo.GoFloat64);
                    _gotoNext = 118713i32;
                } else if (__value__ == (118713i32)) {
                    _z_118713 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 118723i32;
                } else if (__value__ == (118723i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 118734i32;
                    } else {
                        _gotoNext = 118764i32;
                    };
                } else if (__value__ == (118734i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_118713 = (_z_118713 * _x : stdgo.GoFloat64);
                    _gotoNext = 118723i32;
                } else if (__value__ == (118764i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 118764i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 118774i32;
                    } else {
                        _gotoNext = 118840i32;
                    };
                } else if (__value__ == (118774i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 118792i32;
                    } else {
                        _gotoNext = 118814i32;
                    };
                } else if (__value__ == (118792i32)) {
                    _gotoNext = 119170i32;
                } else if (__value__ == (118814i32)) {
                    _z_118713 = (_z_118713 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 118764i32;
                } else if (__value__ == (118840i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 118840i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 118850i32;
                    } else {
                        _gotoNext = 118916i32;
                    };
                } else if (__value__ == (118850i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 118867i32;
                    } else {
                        _gotoNext = 118889i32;
                    };
                } else if (__value__ == (118867i32)) {
                    _gotoNext = 119170i32;
                } else if (__value__ == (118889i32)) {
                    _z_118713 = (_z_118713 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 118840i32;
                } else if (__value__ == (118916i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 118926i32;
                    } else {
                        _gotoNext = 118944i32;
                    };
                } else if (__value__ == (118926i32)) {
                    return _z_118713;
                    _gotoNext = 118944i32;
                } else if (__value__ == (118944i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_118040 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_118027 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_118713 * _p_118040 : stdgo.GoFloat64) / _q_118027 : stdgo.GoFloat64);
                    _gotoNext = 119170i32;
                } else if (__value__ == (119170i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 119188i32;
                    } else {
                        _gotoNext = 119210i32;
                    };
                } else if (__value__ == (119188i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 119210i32;
                } else if (__value__ == (119210i32)) {
                    return (_z_118713 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
