package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _p_1165546:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_1166022:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_1165903:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_1165594:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_1165590:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_1166048:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_1165853:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_1165262;
        var _z_1166219:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_1166065:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_1166027:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_1165835:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_1165533:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_1165262 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 1165353i32;
                } else if (__value__ == (1165353i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 1165363i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 1165425i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 1165460i32;
                    } else {
                        _gotoNext = 1165533i32;
                    };
                } else if (__value__ == (1165363i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 1165533i32;
                } else if (__value__ == (1165425i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 1165533i32;
                } else if (__value__ == (1165460i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 1165489i32;
                    } else {
                        _gotoNext = 1165515i32;
                    };
                } else if (__value__ == (1165489i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 1165515i32;
                } else if (__value__ == (1165515i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 1165533i32;
                } else if (__value__ == (1165533i32)) {
                    _q_1165533 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_1165546 = stdgo._internal.math.Math_floor.floor(_q_1165533);
                    if ((_q_1165533 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 1165571i32;
                    } else {
                        _gotoNext = 1166219i32;
                    };
                } else if (__value__ == (1165571i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 1165585i32;
                    } else {
                        _gotoNext = 1165835i32;
                    };
                } else if (__value__ == (1165585i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_1165590 = @:tmpset0 __tmp__._0;
                        _y2_1165594 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_1165590 * _y2_1165594 : stdgo.GoFloat64);
                    _gotoNext = 1165835i32;
                } else if (__value__ == (1165835i32)) {
                    _signgam_1165835 = (1 : stdgo.GoInt);
                    {
                        _ip_1165853 = (_p_1165546 : stdgo.GoInt64);
                        if ((_ip_1165853 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 1165879i32;
                        } else {
                            _gotoNext = 1165903i32;
                        };
                    };
                } else if (__value__ == (1165879i32)) {
                    _signgam_1165835 = (-1 : stdgo.GoInt);
                    _gotoNext = 1165903i32;
                } else if (__value__ == (1165903i32)) {
                    _z_1165903 = (_q_1165533 - _p_1165546 : stdgo.GoFloat64);
                    if ((_z_1165903 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 1165927i32;
                    } else {
                        _gotoNext = 1165961i32;
                    };
                } else if (__value__ == (1165927i32)) {
                    _p_1165546 = (_p_1165546 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_1165903 = (_q_1165533 - _p_1165546 : stdgo.GoFloat64);
                    _gotoNext = 1165961i32;
                } else if (__value__ == (1165961i32)) {
                    _z_1165903 = (_q_1165533 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_1165903 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_1165903 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 1165991i32;
                    } else {
                        _gotoNext = 1166022i32;
                    };
                } else if (__value__ == (1165991i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_1165835);
                    _gotoNext = 1166022i32;
                } else if (__value__ == (1166022i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1165533);
                        _sq1_1166022 = @:tmpset0 __tmp__._0;
                        _sq2_1166027 = @:tmpset0 __tmp__._1;
                    };
                    _absz_1166048 = stdgo._internal.math.Math_abs.abs(_z_1165903);
                    _d_1166065 = ((_absz_1166048 * _sq1_1166022 : stdgo.GoFloat64) * _sq2_1166027 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_1166065, (0 : stdgo.GoInt))) {
                        _gotoNext = 1166104i32;
                    } else {
                        _gotoNext = 1166144i32;
                    };
                } else if (__value__ == (1166104i32)) {
                    _z_1165903 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_1166048 : stdgo.GoFloat64) / _sq1_1166022 : stdgo.GoFloat64) / _sq2_1166027 : stdgo.GoFloat64);
                    _gotoNext = 1166166i32;
                } else if (__value__ == (1166144i32)) {
                    _gotoNext = 1166144i32;
                    _z_1165903 = ((3.141592653589793 : stdgo.GoFloat64) / _d_1166065 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 1166166i32;
                } else if (__value__ == (1166166i32)) {
                    return ((_signgam_1165835 : stdgo.GoFloat64) * _z_1165903 : stdgo.GoFloat64);
                    _gotoNext = 1166219i32;
                } else if (__value__ == (1166219i32)) {
                    _z_1166219 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 1166229i32;
                } else if (__value__ == (1166229i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 1166240i32;
                    } else {
                        _gotoNext = 1166270i32;
                    };
                } else if (__value__ == (1166240i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_1166219 = (_z_1166219 * _x : stdgo.GoFloat64);
                    _gotoNext = 1166229i32;
                } else if (__value__ == (1166270i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 1166270i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 1166280i32;
                    } else {
                        _gotoNext = 1166346i32;
                    };
                } else if (__value__ == (1166280i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 1166298i32;
                    } else {
                        _gotoNext = 1166320i32;
                    };
                } else if (__value__ == (1166298i32)) {
                    _gotoNext = 1166676i32;
                } else if (__value__ == (1166320i32)) {
                    _z_1166219 = (_z_1166219 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 1166270i32;
                } else if (__value__ == (1166346i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 1166346i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 1166356i32;
                    } else {
                        _gotoNext = 1166422i32;
                    };
                } else if (__value__ == (1166356i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 1166373i32;
                    } else {
                        _gotoNext = 1166395i32;
                    };
                } else if (__value__ == (1166373i32)) {
                    _gotoNext = 1166676i32;
                } else if (__value__ == (1166395i32)) {
                    _z_1166219 = (_z_1166219 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 1166346i32;
                } else if (__value__ == (1166422i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 1166432i32;
                    } else {
                        _gotoNext = 1166450i32;
                    };
                } else if (__value__ == (1166432i32)) {
                    return _z_1166219;
                    _gotoNext = 1166450i32;
                } else if (__value__ == (1166450i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_1165546 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1165533 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_1166219 * _p_1165546 : stdgo.GoFloat64) / _q_1165533 : stdgo.GoFloat64);
                    _gotoNext = 1166676i32;
                } else if (__value__ == (1166676i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 1166694i32;
                    } else {
                        _gotoNext = 1166716i32;
                    };
                } else if (__value__ == (1166694i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 1166716i32;
                } else if (__value__ == (1166716i32)) {
                    return (_z_1166219 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
