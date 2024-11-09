package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_145457;
        var _z_146414:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_146098:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_145741:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_146260:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_146243:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_146222:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_146048:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_145785:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_145728:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_146217:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_146030:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_145789:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_145457 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 145548i32;
                } else if (__value__ == (145548i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 145558i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 145620i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 145655i32;
                    } else {
                        _gotoNext = 145728i32;
                    };
                } else if (__value__ == (145558i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 145728i32;
                } else if (__value__ == (145620i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 145728i32;
                } else if (__value__ == (145655i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 145684i32;
                    } else {
                        _gotoNext = 145710i32;
                    };
                } else if (__value__ == (145684i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 145710i32;
                } else if (__value__ == (145710i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 145728i32;
                } else if (__value__ == (145728i32)) {
                    _q_145728 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_145741 = stdgo._internal.math.Math_floor.floor(_q_145728);
                    if ((_q_145728 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 145766i32;
                    } else {
                        _gotoNext = 146414i32;
                    };
                } else if (__value__ == (145766i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 145780i32;
                    } else {
                        _gotoNext = 146030i32;
                    };
                } else if (__value__ == (145780i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_145785 = __tmp__._0;
                        _y2_145789 = __tmp__._1;
                    };
                    return (_y1_145785 * _y2_145789 : stdgo.GoFloat64);
                    _gotoNext = 146030i32;
                } else if (__value__ == (146030i32)) {
                    _signgam_146030 = (1 : stdgo.GoInt);
                    {
                        _ip_146048 = (_p_145741 : stdgo.GoInt64);
                        if ((_ip_146048 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 146074i32;
                        } else {
                            _gotoNext = 146098i32;
                        };
                    };
                } else if (__value__ == (146074i32)) {
                    _signgam_146030 = (-1 : stdgo.GoInt);
                    _gotoNext = 146098i32;
                } else if (__value__ == (146098i32)) {
                    _z_146098 = (_q_145728 - _p_145741 : stdgo.GoFloat64);
                    if ((_z_146098 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 146122i32;
                    } else {
                        _gotoNext = 146156i32;
                    };
                } else if (__value__ == (146122i32)) {
                    _p_145741 = (_p_145741 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_146098 = (_q_145728 - _p_145741 : stdgo.GoFloat64);
                    _gotoNext = 146156i32;
                } else if (__value__ == (146156i32)) {
                    _z_146098 = (_q_145728 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_146098 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_146098 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 146186i32;
                    } else {
                        _gotoNext = 146217i32;
                    };
                } else if (__value__ == (146186i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_146030);
                    _gotoNext = 146217i32;
                } else if (__value__ == (146217i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_145728);
                        _sq1_146217 = __tmp__._0;
                        _sq2_146222 = __tmp__._1;
                    };
                    _absz_146243 = stdgo._internal.math.Math_abs.abs(_z_146098);
                    _d_146260 = ((_absz_146243 * _sq1_146217 : stdgo.GoFloat64) * _sq2_146222 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_146260, (0 : stdgo.GoInt))) {
                        _gotoNext = 146299i32;
                    } else {
                        _gotoNext = 146339i32;
                    };
                } else if (__value__ == (146299i32)) {
                    _z_146098 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_146243 : stdgo.GoFloat64) / _sq1_146217 : stdgo.GoFloat64) / _sq2_146222 : stdgo.GoFloat64);
                    _gotoNext = 146361i32;
                } else if (__value__ == (146339i32)) {
                    _gotoNext = 146339i32;
                    _z_146098 = ((3.141592653589793 : stdgo.GoFloat64) / _d_146260 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 146361i32;
                } else if (__value__ == (146361i32)) {
                    return ((_signgam_146030 : stdgo.GoFloat64) * _z_146098 : stdgo.GoFloat64);
                    _gotoNext = 146414i32;
                } else if (__value__ == (146414i32)) {
                    _z_146414 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 146424i32;
                } else if (__value__ == (146424i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 146435i32;
                    } else {
                        _gotoNext = 146465i32;
                    };
                } else if (__value__ == (146435i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_146414 = (_z_146414 * _x : stdgo.GoFloat64);
                    _gotoNext = 146424i32;
                } else if (__value__ == (146465i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 146465i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 146475i32;
                    } else {
                        _gotoNext = 146541i32;
                    };
                } else if (__value__ == (146475i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 146493i32;
                    } else {
                        _gotoNext = 146515i32;
                    };
                } else if (__value__ == (146493i32)) {
                    _gotoNext = 146871i32;
                } else if (__value__ == (146515i32)) {
                    _z_146414 = (_z_146414 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 146465i32;
                } else if (__value__ == (146541i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 146541i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 146551i32;
                    } else {
                        _gotoNext = 146617i32;
                    };
                } else if (__value__ == (146551i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 146568i32;
                    } else {
                        _gotoNext = 146590i32;
                    };
                } else if (__value__ == (146568i32)) {
                    _gotoNext = 146871i32;
                } else if (__value__ == (146590i32)) {
                    _z_146414 = (_z_146414 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 146541i32;
                } else if (__value__ == (146617i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 146627i32;
                    } else {
                        _gotoNext = 146645i32;
                    };
                } else if (__value__ == (146627i32)) {
                    return _z_146414;
                    _gotoNext = 146645i32;
                } else if (__value__ == (146645i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_145741 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_145728 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_146414 * _p_145741 : stdgo.GoFloat64) / _q_145728 : stdgo.GoFloat64);
                    _gotoNext = 146871i32;
                } else if (__value__ == (146871i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 146889i32;
                    } else {
                        _gotoNext = 146911i32;
                    };
                } else if (__value__ == (146889i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 146911i32;
                } else if (__value__ == (146911i32)) {
                    return (_z_146414 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
