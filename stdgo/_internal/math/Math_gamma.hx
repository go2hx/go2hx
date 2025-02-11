package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_595558:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_595404:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_595387:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_595361:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_595174:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_594885:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_594601;
        var _sq2_595366:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_595242:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_595192:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_594933:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_594929:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_594872:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_594601 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 594692i32;
                } else if (__value__ == (594692i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 594702i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 594764i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 594799i32;
                    } else {
                        _gotoNext = 594872i32;
                    };
                } else if (__value__ == (594702i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 594872i32;
                } else if (__value__ == (594764i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 594872i32;
                } else if (__value__ == (594799i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 594828i32;
                    } else {
                        _gotoNext = 594854i32;
                    };
                } else if (__value__ == (594828i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 594854i32;
                } else if (__value__ == (594854i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 594872i32;
                } else if (__value__ == (594872i32)) {
                    _q_594872 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_594885 = stdgo._internal.math.Math_floor.floor(_q_594872);
                    if ((_q_594872 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 594910i32;
                    } else {
                        _gotoNext = 595558i32;
                    };
                } else if (__value__ == (594910i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 594924i32;
                    } else {
                        _gotoNext = 595174i32;
                    };
                } else if (__value__ == (594924i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_594929 = @:tmpset0 __tmp__._0;
                        _y2_594933 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_594929 * _y2_594933 : stdgo.GoFloat64);
                    _gotoNext = 595174i32;
                } else if (__value__ == (595174i32)) {
                    _signgam_595174 = (1 : stdgo.GoInt);
                    {
                        _ip_595192 = (_p_594885 : stdgo.GoInt64);
                        if ((_ip_595192 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 595218i32;
                        } else {
                            _gotoNext = 595242i32;
                        };
                    };
                } else if (__value__ == (595218i32)) {
                    _signgam_595174 = (-1 : stdgo.GoInt);
                    _gotoNext = 595242i32;
                } else if (__value__ == (595242i32)) {
                    _z_595242 = (_q_594872 - _p_594885 : stdgo.GoFloat64);
                    if ((_z_595242 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 595266i32;
                    } else {
                        _gotoNext = 595300i32;
                    };
                } else if (__value__ == (595266i32)) {
                    _p_594885 = (_p_594885 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_595242 = (_q_594872 - _p_594885 : stdgo.GoFloat64);
                    _gotoNext = 595300i32;
                } else if (__value__ == (595300i32)) {
                    _z_595242 = (_q_594872 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_595242 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_595242 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 595330i32;
                    } else {
                        _gotoNext = 595361i32;
                    };
                } else if (__value__ == (595330i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_595174);
                    _gotoNext = 595361i32;
                } else if (__value__ == (595361i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_594872);
                        _sq1_595361 = @:tmpset0 __tmp__._0;
                        _sq2_595366 = @:tmpset0 __tmp__._1;
                    };
                    _absz_595387 = stdgo._internal.math.Math_abs.abs(_z_595242);
                    _d_595404 = ((_absz_595387 * _sq1_595361 : stdgo.GoFloat64) * _sq2_595366 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_595404, (0 : stdgo.GoInt))) {
                        _gotoNext = 595443i32;
                    } else {
                        _gotoNext = 595483i32;
                    };
                } else if (__value__ == (595443i32)) {
                    _z_595242 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_595387 : stdgo.GoFloat64) / _sq1_595361 : stdgo.GoFloat64) / _sq2_595366 : stdgo.GoFloat64);
                    _gotoNext = 595505i32;
                } else if (__value__ == (595483i32)) {
                    _gotoNext = 595483i32;
                    _z_595242 = ((3.141592653589793 : stdgo.GoFloat64) / _d_595404 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 595505i32;
                } else if (__value__ == (595505i32)) {
                    return ((_signgam_595174 : stdgo.GoFloat64) * _z_595242 : stdgo.GoFloat64);
                    _gotoNext = 595558i32;
                } else if (__value__ == (595558i32)) {
                    _z_595558 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 595568i32;
                } else if (__value__ == (595568i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 595579i32;
                    } else {
                        _gotoNext = 595609i32;
                    };
                } else if (__value__ == (595579i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_595558 = (_z_595558 * _x : stdgo.GoFloat64);
                    _gotoNext = 595568i32;
                } else if (__value__ == (595609i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 595609i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 595619i32;
                    } else {
                        _gotoNext = 595685i32;
                    };
                } else if (__value__ == (595619i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 595637i32;
                    } else {
                        _gotoNext = 595659i32;
                    };
                } else if (__value__ == (595637i32)) {
                    _gotoNext = 596015i32;
                } else if (__value__ == (595659i32)) {
                    _z_595558 = (_z_595558 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 595609i32;
                } else if (__value__ == (595685i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 595685i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 595695i32;
                    } else {
                        _gotoNext = 595761i32;
                    };
                } else if (__value__ == (595695i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 595712i32;
                    } else {
                        _gotoNext = 595734i32;
                    };
                } else if (__value__ == (595712i32)) {
                    _gotoNext = 596015i32;
                } else if (__value__ == (595734i32)) {
                    _z_595558 = (_z_595558 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 595685i32;
                } else if (__value__ == (595761i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 595771i32;
                    } else {
                        _gotoNext = 595789i32;
                    };
                } else if (__value__ == (595771i32)) {
                    return _z_595558;
                    _gotoNext = 595789i32;
                } else if (__value__ == (595789i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_594885 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_594872 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_595558 * _p_594885 : stdgo.GoFloat64) / _q_594872 : stdgo.GoFloat64);
                    _gotoNext = 596015i32;
                } else if (__value__ == (596015i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 596033i32;
                    } else {
                        _gotoNext = 596055i32;
                    };
                } else if (__value__ == (596033i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 596055i32;
                } else if (__value__ == (596055i32)) {
                    return (_z_595558 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
