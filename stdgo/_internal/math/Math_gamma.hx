package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_461435:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_461146:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_461819:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_461648:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_461622:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_461503:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_461453:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_461190:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_460862;
        var _y2_461194:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_461133:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_461665:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_461627:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_460862 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 460953i32;
                } else if (__value__ == (460953i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 460963i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 461025i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 461060i32;
                    } else {
                        _gotoNext = 461133i32;
                    };
                } else if (__value__ == (460963i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 461133i32;
                } else if (__value__ == (461025i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 461133i32;
                } else if (__value__ == (461060i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 461089i32;
                    } else {
                        _gotoNext = 461115i32;
                    };
                } else if (__value__ == (461089i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 461115i32;
                } else if (__value__ == (461115i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 461133i32;
                } else if (__value__ == (461133i32)) {
                    _q_461133 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_461146 = stdgo._internal.math.Math_floor.floor(_q_461133);
                    if ((_q_461133 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461171i32;
                    } else {
                        _gotoNext = 461819i32;
                    };
                } else if (__value__ == (461171i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461185i32;
                    } else {
                        _gotoNext = 461435i32;
                    };
                } else if (__value__ == (461185i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_461190 = @:tmpset0 __tmp__._0;
                        _y2_461194 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_461190 * _y2_461194 : stdgo.GoFloat64);
                    _gotoNext = 461435i32;
                } else if (__value__ == (461435i32)) {
                    _signgam_461435 = (1 : stdgo.GoInt);
                    {
                        _ip_461453 = (_p_461146 : stdgo.GoInt64);
                        if ((_ip_461453 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 461479i32;
                        } else {
                            _gotoNext = 461503i32;
                        };
                    };
                } else if (__value__ == (461479i32)) {
                    _signgam_461435 = (-1 : stdgo.GoInt);
                    _gotoNext = 461503i32;
                } else if (__value__ == (461503i32)) {
                    _z_461503 = (_q_461133 - _p_461146 : stdgo.GoFloat64);
                    if ((_z_461503 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461527i32;
                    } else {
                        _gotoNext = 461561i32;
                    };
                } else if (__value__ == (461527i32)) {
                    _p_461146 = (_p_461146 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_461503 = (_q_461133 - _p_461146 : stdgo.GoFloat64);
                    _gotoNext = 461561i32;
                } else if (__value__ == (461561i32)) {
                    _z_461503 = (_q_461133 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_461503 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_461503 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 461591i32;
                    } else {
                        _gotoNext = 461622i32;
                    };
                } else if (__value__ == (461591i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_461435);
                    _gotoNext = 461622i32;
                } else if (__value__ == (461622i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_461133);
                        _sq1_461622 = @:tmpset0 __tmp__._0;
                        _sq2_461627 = @:tmpset0 __tmp__._1;
                    };
                    _absz_461648 = stdgo._internal.math.Math_abs.abs(_z_461503);
                    _d_461665 = ((_absz_461648 * _sq1_461622 : stdgo.GoFloat64) * _sq2_461627 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_461665, (0 : stdgo.GoInt))) {
                        _gotoNext = 461704i32;
                    } else {
                        _gotoNext = 461744i32;
                    };
                } else if (__value__ == (461704i32)) {
                    _z_461503 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_461648 : stdgo.GoFloat64) / _sq1_461622 : stdgo.GoFloat64) / _sq2_461627 : stdgo.GoFloat64);
                    _gotoNext = 461766i32;
                } else if (__value__ == (461744i32)) {
                    _gotoNext = 461744i32;
                    _z_461503 = ((3.141592653589793 : stdgo.GoFloat64) / _d_461665 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 461766i32;
                } else if (__value__ == (461766i32)) {
                    return ((_signgam_461435 : stdgo.GoFloat64) * _z_461503 : stdgo.GoFloat64);
                    _gotoNext = 461819i32;
                } else if (__value__ == (461819i32)) {
                    _z_461819 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 461829i32;
                } else if (__value__ == (461829i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461840i32;
                    } else {
                        _gotoNext = 461870i32;
                    };
                } else if (__value__ == (461840i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_461819 = (_z_461819 * _x : stdgo.GoFloat64);
                    _gotoNext = 461829i32;
                } else if (__value__ == (461870i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 461870i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461880i32;
                    } else {
                        _gotoNext = 461946i32;
                    };
                } else if (__value__ == (461880i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461898i32;
                    } else {
                        _gotoNext = 461920i32;
                    };
                } else if (__value__ == (461898i32)) {
                    _gotoNext = 462276i32;
                } else if (__value__ == (461920i32)) {
                    _z_461819 = (_z_461819 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 461870i32;
                } else if (__value__ == (461946i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 461946i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461956i32;
                    } else {
                        _gotoNext = 462022i32;
                    };
                } else if (__value__ == (461956i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461973i32;
                    } else {
                        _gotoNext = 461995i32;
                    };
                } else if (__value__ == (461973i32)) {
                    _gotoNext = 462276i32;
                } else if (__value__ == (461995i32)) {
                    _z_461819 = (_z_461819 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 461946i32;
                } else if (__value__ == (462022i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 462032i32;
                    } else {
                        _gotoNext = 462050i32;
                    };
                } else if (__value__ == (462032i32)) {
                    return _z_461819;
                    _gotoNext = 462050i32;
                } else if (__value__ == (462050i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_461146 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_461133 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_461819 * _p_461146 : stdgo.GoFloat64) / _q_461133 : stdgo.GoFloat64);
                    _gotoNext = 462276i32;
                } else if (__value__ == (462276i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462294i32;
                    } else {
                        _gotoNext = 462316i32;
                    };
                } else if (__value__ == (462294i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 462316i32;
                } else if (__value__ == (462316i32)) {
                    return (_z_461819 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
