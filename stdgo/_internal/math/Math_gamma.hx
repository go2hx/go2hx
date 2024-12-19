package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_28729:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_28043:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_28345:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_28100:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_27772;
        var _sq2_28537:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_28363:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _z_28413:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_28056:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_28558:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_28532:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_28104:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_28575:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_27772 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 27863i32;
                } else if (__value__ == (27863i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 27873i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 27935i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 27970i32;
                    } else {
                        _gotoNext = 28043i32;
                    };
                } else if (__value__ == (27873i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 28043i32;
                } else if (__value__ == (27935i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 28043i32;
                } else if (__value__ == (27970i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 27999i32;
                    } else {
                        _gotoNext = 28025i32;
                    };
                } else if (__value__ == (27999i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 28025i32;
                } else if (__value__ == (28025i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 28043i32;
                } else if (__value__ == (28043i32)) {
                    _q_28043 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_28056 = stdgo._internal.math.Math_floor.floor(_q_28043);
                    if ((_q_28043 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 28081i32;
                    } else {
                        _gotoNext = 28729i32;
                    };
                } else if (__value__ == (28081i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 28095i32;
                    } else {
                        _gotoNext = 28345i32;
                    };
                } else if (__value__ == (28095i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_28100 = __tmp__._0;
                        _y2_28104 = __tmp__._1;
                    };
                    return (_y1_28100 * _y2_28104 : stdgo.GoFloat64);
                    _gotoNext = 28345i32;
                } else if (__value__ == (28345i32)) {
                    _signgam_28345 = (1 : stdgo.GoInt);
                    {
                        _ip_28363 = (_p_28056 : stdgo.GoInt64);
                        if ((_ip_28363 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 28389i32;
                        } else {
                            _gotoNext = 28413i32;
                        };
                    };
                } else if (__value__ == (28389i32)) {
                    _signgam_28345 = (-1 : stdgo.GoInt);
                    _gotoNext = 28413i32;
                } else if (__value__ == (28413i32)) {
                    _z_28413 = (_q_28043 - _p_28056 : stdgo.GoFloat64);
                    if ((_z_28413 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 28437i32;
                    } else {
                        _gotoNext = 28471i32;
                    };
                } else if (__value__ == (28437i32)) {
                    _p_28056 = (_p_28056 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_28413 = (_q_28043 - _p_28056 : stdgo.GoFloat64);
                    _gotoNext = 28471i32;
                } else if (__value__ == (28471i32)) {
                    _z_28413 = (_q_28043 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_28413 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_28413 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 28501i32;
                    } else {
                        _gotoNext = 28532i32;
                    };
                } else if (__value__ == (28501i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_28345);
                    _gotoNext = 28532i32;
                } else if (__value__ == (28532i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_28043);
                        _sq1_28532 = __tmp__._0;
                        _sq2_28537 = __tmp__._1;
                    };
                    _absz_28558 = stdgo._internal.math.Math_abs.abs(_z_28413);
                    _d_28575 = ((_absz_28558 * _sq1_28532 : stdgo.GoFloat64) * _sq2_28537 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_28575, (0 : stdgo.GoInt))) {
                        _gotoNext = 28614i32;
                    } else {
                        _gotoNext = 28654i32;
                    };
                } else if (__value__ == (28614i32)) {
                    _z_28413 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_28558 : stdgo.GoFloat64) / _sq1_28532 : stdgo.GoFloat64) / _sq2_28537 : stdgo.GoFloat64);
                    _gotoNext = 28676i32;
                } else if (__value__ == (28654i32)) {
                    _gotoNext = 28654i32;
                    _z_28413 = ((3.141592653589793 : stdgo.GoFloat64) / _d_28575 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 28676i32;
                } else if (__value__ == (28676i32)) {
                    return ((_signgam_28345 : stdgo.GoFloat64) * _z_28413 : stdgo.GoFloat64);
                    _gotoNext = 28729i32;
                } else if (__value__ == (28729i32)) {
                    _z_28729 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 28739i32;
                } else if (__value__ == (28739i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 28750i32;
                    } else {
                        _gotoNext = 28780i32;
                    };
                } else if (__value__ == (28750i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_28729 = (_z_28729 * _x : stdgo.GoFloat64);
                    _gotoNext = 28739i32;
                } else if (__value__ == (28780i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 28780i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 28790i32;
                    } else {
                        _gotoNext = 28856i32;
                    };
                } else if (__value__ == (28790i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 28808i32;
                    } else {
                        _gotoNext = 28830i32;
                    };
                } else if (__value__ == (28808i32)) {
                    _gotoNext = 29186i32;
                } else if (__value__ == (28830i32)) {
                    _z_28729 = (_z_28729 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 28780i32;
                } else if (__value__ == (28856i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 28856i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 28866i32;
                    } else {
                        _gotoNext = 28932i32;
                    };
                } else if (__value__ == (28866i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 28883i32;
                    } else {
                        _gotoNext = 28905i32;
                    };
                } else if (__value__ == (28883i32)) {
                    _gotoNext = 29186i32;
                } else if (__value__ == (28905i32)) {
                    _z_28729 = (_z_28729 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 28856i32;
                } else if (__value__ == (28932i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 28942i32;
                    } else {
                        _gotoNext = 28960i32;
                    };
                } else if (__value__ == (28942i32)) {
                    return _z_28729;
                    _gotoNext = 28960i32;
                } else if (__value__ == (28960i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_28056 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_28043 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_28729 * _p_28056 : stdgo.GoFloat64) / _q_28043 : stdgo.GoFloat64);
                    _gotoNext = 29186i32;
                } else if (__value__ == (29186i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 29204i32;
                    } else {
                        _gotoNext = 29226i32;
                    };
                } else if (__value__ == (29204i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 29226i32;
                } else if (__value__ == (29226i32)) {
                    return (_z_28729 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
