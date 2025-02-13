package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_469896:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_469394:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_469110;
        var _z_469751:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_469701:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_469683:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_469442:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_469438:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_470067:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_469913:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_469381:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_469875:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_469870:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_469110 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 469201i32;
                } else if (__value__ == (469201i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 469211i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 469273i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 469308i32;
                    } else {
                        _gotoNext = 469381i32;
                    };
                } else if (__value__ == (469211i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 469381i32;
                } else if (__value__ == (469273i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 469381i32;
                } else if (__value__ == (469308i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 469337i32;
                    } else {
                        _gotoNext = 469363i32;
                    };
                } else if (__value__ == (469337i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 469363i32;
                } else if (__value__ == (469363i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 469381i32;
                } else if (__value__ == (469381i32)) {
                    _q_469381 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_469394 = stdgo._internal.math.Math_floor.floor(_q_469381);
                    if ((_q_469381 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 469419i32;
                    } else {
                        _gotoNext = 470067i32;
                    };
                } else if (__value__ == (469419i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 469433i32;
                    } else {
                        _gotoNext = 469683i32;
                    };
                } else if (__value__ == (469433i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_469438 = @:tmpset0 __tmp__._0;
                        _y2_469442 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_469438 * _y2_469442 : stdgo.GoFloat64);
                    _gotoNext = 469683i32;
                } else if (__value__ == (469683i32)) {
                    _signgam_469683 = (1 : stdgo.GoInt);
                    {
                        _ip_469701 = (_p_469394 : stdgo.GoInt64);
                        if ((_ip_469701 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 469727i32;
                        } else {
                            _gotoNext = 469751i32;
                        };
                    };
                } else if (__value__ == (469727i32)) {
                    _signgam_469683 = (-1 : stdgo.GoInt);
                    _gotoNext = 469751i32;
                } else if (__value__ == (469751i32)) {
                    _z_469751 = (_q_469381 - _p_469394 : stdgo.GoFloat64);
                    if ((_z_469751 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 469775i32;
                    } else {
                        _gotoNext = 469809i32;
                    };
                } else if (__value__ == (469775i32)) {
                    _p_469394 = (_p_469394 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_469751 = (_q_469381 - _p_469394 : stdgo.GoFloat64);
                    _gotoNext = 469809i32;
                } else if (__value__ == (469809i32)) {
                    _z_469751 = (_q_469381 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_469751 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_469751 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 469839i32;
                    } else {
                        _gotoNext = 469870i32;
                    };
                } else if (__value__ == (469839i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_469683);
                    _gotoNext = 469870i32;
                } else if (__value__ == (469870i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_469381);
                        _sq1_469870 = @:tmpset0 __tmp__._0;
                        _sq2_469875 = @:tmpset0 __tmp__._1;
                    };
                    _absz_469896 = stdgo._internal.math.Math_abs.abs(_z_469751);
                    _d_469913 = ((_absz_469896 * _sq1_469870 : stdgo.GoFloat64) * _sq2_469875 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_469913, (0 : stdgo.GoInt))) {
                        _gotoNext = 469952i32;
                    } else {
                        _gotoNext = 469992i32;
                    };
                } else if (__value__ == (469952i32)) {
                    _z_469751 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_469896 : stdgo.GoFloat64) / _sq1_469870 : stdgo.GoFloat64) / _sq2_469875 : stdgo.GoFloat64);
                    _gotoNext = 470014i32;
                } else if (__value__ == (469992i32)) {
                    _gotoNext = 469992i32;
                    _z_469751 = ((3.141592653589793 : stdgo.GoFloat64) / _d_469913 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 470014i32;
                } else if (__value__ == (470014i32)) {
                    return ((_signgam_469683 : stdgo.GoFloat64) * _z_469751 : stdgo.GoFloat64);
                    _gotoNext = 470067i32;
                } else if (__value__ == (470067i32)) {
                    _z_470067 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 470077i32;
                } else if (__value__ == (470077i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 470088i32;
                    } else {
                        _gotoNext = 470118i32;
                    };
                } else if (__value__ == (470088i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_470067 = (_z_470067 * _x : stdgo.GoFloat64);
                    _gotoNext = 470077i32;
                } else if (__value__ == (470118i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 470118i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 470128i32;
                    } else {
                        _gotoNext = 470194i32;
                    };
                } else if (__value__ == (470128i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 470146i32;
                    } else {
                        _gotoNext = 470168i32;
                    };
                } else if (__value__ == (470146i32)) {
                    _gotoNext = 470524i32;
                } else if (__value__ == (470168i32)) {
                    _z_470067 = (_z_470067 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 470118i32;
                } else if (__value__ == (470194i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 470194i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 470204i32;
                    } else {
                        _gotoNext = 470270i32;
                    };
                } else if (__value__ == (470204i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 470221i32;
                    } else {
                        _gotoNext = 470243i32;
                    };
                } else if (__value__ == (470221i32)) {
                    _gotoNext = 470524i32;
                } else if (__value__ == (470243i32)) {
                    _z_470067 = (_z_470067 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 470194i32;
                } else if (__value__ == (470270i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 470280i32;
                    } else {
                        _gotoNext = 470298i32;
                    };
                } else if (__value__ == (470280i32)) {
                    return _z_470067;
                    _gotoNext = 470298i32;
                } else if (__value__ == (470298i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_469394 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_469381 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_470067 * _p_469394 : stdgo.GoFloat64) / _q_469381 : stdgo.GoFloat64);
                    _gotoNext = 470524i32;
                } else if (__value__ == (470524i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 470542i32;
                    } else {
                        _gotoNext = 470564i32;
                    };
                } else if (__value__ == (470542i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 470564i32;
                } else if (__value__ == (470564i32)) {
                    return (_z_470067 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
