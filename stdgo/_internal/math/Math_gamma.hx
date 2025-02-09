package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_438545:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_438300:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_438758:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_438732:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_438563:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_438304:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_438929:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_438775:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_438737:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_438613:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_438256:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_438243:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_437972;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_437972 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 438063i32;
                } else if (__value__ == (438063i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 438073i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 438135i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 438170i32;
                    } else {
                        _gotoNext = 438243i32;
                    };
                } else if (__value__ == (438073i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 438243i32;
                } else if (__value__ == (438135i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 438243i32;
                } else if (__value__ == (438170i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 438199i32;
                    } else {
                        _gotoNext = 438225i32;
                    };
                } else if (__value__ == (438199i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 438225i32;
                } else if (__value__ == (438225i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 438243i32;
                } else if (__value__ == (438243i32)) {
                    _q_438243 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_438256 = stdgo._internal.math.Math_floor.floor(_q_438243);
                    if ((_q_438243 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438281i32;
                    } else {
                        _gotoNext = 438929i32;
                    };
                } else if (__value__ == (438281i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438295i32;
                    } else {
                        _gotoNext = 438545i32;
                    };
                } else if (__value__ == (438295i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_438300 = @:tmpset0 __tmp__._0;
                        _y2_438304 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_438300 * _y2_438304 : stdgo.GoFloat64);
                    _gotoNext = 438545i32;
                } else if (__value__ == (438545i32)) {
                    _signgam_438545 = (1 : stdgo.GoInt);
                    {
                        _ip_438563 = (_p_438256 : stdgo.GoInt64);
                        if ((_ip_438563 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 438589i32;
                        } else {
                            _gotoNext = 438613i32;
                        };
                    };
                } else if (__value__ == (438589i32)) {
                    _signgam_438545 = (-1 : stdgo.GoInt);
                    _gotoNext = 438613i32;
                } else if (__value__ == (438613i32)) {
                    _z_438613 = (_q_438243 - _p_438256 : stdgo.GoFloat64);
                    if ((_z_438613 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438637i32;
                    } else {
                        _gotoNext = 438671i32;
                    };
                } else if (__value__ == (438637i32)) {
                    _p_438256 = (_p_438256 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_438613 = (_q_438243 - _p_438256 : stdgo.GoFloat64);
                    _gotoNext = 438671i32;
                } else if (__value__ == (438671i32)) {
                    _z_438613 = (_q_438243 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_438613 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_438613 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 438701i32;
                    } else {
                        _gotoNext = 438732i32;
                    };
                } else if (__value__ == (438701i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_438545);
                    _gotoNext = 438732i32;
                } else if (__value__ == (438732i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_438243);
                        _sq1_438732 = @:tmpset0 __tmp__._0;
                        _sq2_438737 = @:tmpset0 __tmp__._1;
                    };
                    _absz_438758 = stdgo._internal.math.Math_abs.abs(_z_438613);
                    _d_438775 = ((_absz_438758 * _sq1_438732 : stdgo.GoFloat64) * _sq2_438737 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_438775, (0 : stdgo.GoInt))) {
                        _gotoNext = 438814i32;
                    } else {
                        _gotoNext = 438854i32;
                    };
                } else if (__value__ == (438814i32)) {
                    _z_438613 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_438758 : stdgo.GoFloat64) / _sq1_438732 : stdgo.GoFloat64) / _sq2_438737 : stdgo.GoFloat64);
                    _gotoNext = 438876i32;
                } else if (__value__ == (438854i32)) {
                    _gotoNext = 438854i32;
                    _z_438613 = ((3.141592653589793 : stdgo.GoFloat64) / _d_438775 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 438876i32;
                } else if (__value__ == (438876i32)) {
                    return ((_signgam_438545 : stdgo.GoFloat64) * _z_438613 : stdgo.GoFloat64);
                    _gotoNext = 438929i32;
                } else if (__value__ == (438929i32)) {
                    _z_438929 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 438939i32;
                } else if (__value__ == (438939i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438950i32;
                    } else {
                        _gotoNext = 438980i32;
                    };
                } else if (__value__ == (438950i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_438929 = (_z_438929 * _x : stdgo.GoFloat64);
                    _gotoNext = 438939i32;
                } else if (__value__ == (438980i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 438980i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438990i32;
                    } else {
                        _gotoNext = 439056i32;
                    };
                } else if (__value__ == (438990i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 439008i32;
                    } else {
                        _gotoNext = 439030i32;
                    };
                } else if (__value__ == (439008i32)) {
                    _gotoNext = 439386i32;
                } else if (__value__ == (439030i32)) {
                    _z_438929 = (_z_438929 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 438980i32;
                } else if (__value__ == (439056i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 439056i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 439066i32;
                    } else {
                        _gotoNext = 439132i32;
                    };
                } else if (__value__ == (439066i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 439083i32;
                    } else {
                        _gotoNext = 439105i32;
                    };
                } else if (__value__ == (439083i32)) {
                    _gotoNext = 439386i32;
                } else if (__value__ == (439105i32)) {
                    _z_438929 = (_z_438929 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 439056i32;
                } else if (__value__ == (439132i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 439142i32;
                    } else {
                        _gotoNext = 439160i32;
                    };
                } else if (__value__ == (439142i32)) {
                    return _z_438929;
                    _gotoNext = 439160i32;
                } else if (__value__ == (439160i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_438256 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_438243 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_438929 * _p_438256 : stdgo.GoFloat64) / _q_438243 : stdgo.GoFloat64);
                    _gotoNext = 439386i32;
                } else if (__value__ == (439386i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 439404i32;
                    } else {
                        _gotoNext = 439426i32;
                    };
                } else if (__value__ == (439404i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 439426i32;
                } else if (__value__ == (439426i32)) {
                    return (_z_438929 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
