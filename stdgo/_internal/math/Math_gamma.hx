package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_0 = (0.5772156649015329f64 : stdgo.GoFloat64);
        var _z_12:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_10:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_9:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_4:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_11:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_7:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_6:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_3:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_8:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 331888i32;
                } else if (__value__ == (331888i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 331898i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 331960i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 331995i32;
                    } else {
                        _gotoNext = 332068i32;
                    };
                } else if (__value__ == (331898i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 332068i32;
                } else if (__value__ == (331960i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 332068i32;
                } else if (__value__ == (331995i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 332024i32;
                    } else {
                        _gotoNext = 332050i32;
                    };
                } else if (__value__ == (332024i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 332050i32;
                } else if (__value__ == (332050i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 332068i32;
                } else if (__value__ == (332068i32)) {
                    _q_1 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2 = stdgo._internal.math.Math_floor.floor(_q_1);
                    if ((_q_1 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 332106i32;
                    } else {
                        _gotoNext = 332754i32;
                    };
                } else if (__value__ == (332106i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 332120i32;
                    } else {
                        _gotoNext = 332370i32;
                    };
                } else if (__value__ == (332120i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_3 = @:tmpset0 __tmp__._0;
                        _y2_4 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_3 * _y2_4 : stdgo.GoFloat64);
                    _gotoNext = 332370i32;
                } else if (__value__ == (332370i32)) {
                    _signgam_5 = (1 : stdgo.GoInt);
                    {
                        _ip_6 = (_p_2 : stdgo.GoInt64);
                        if ((_ip_6 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 332414i32;
                        } else {
                            _gotoNext = 332438i32;
                        };
                    };
                } else if (__value__ == (332414i32)) {
                    _signgam_5 = (-1 : stdgo.GoInt);
                    _gotoNext = 332438i32;
                } else if (__value__ == (332438i32)) {
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    if ((_z_7 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 332462i32;
                    } else {
                        _gotoNext = 332496i32;
                    };
                } else if (__value__ == (332462i32)) {
                    _p_2 = (_p_2 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    _gotoNext = 332496i32;
                } else if (__value__ == (332496i32)) {
                    _z_7 = (_q_1 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_7 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 332526i32;
                    } else {
                        _gotoNext = 332557i32;
                    };
                } else if (__value__ == (332526i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_5);
                    _gotoNext = 332557i32;
                } else if (__value__ == (332557i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1);
                        _sq1_8 = @:tmpset0 __tmp__._0;
                        _sq2_9 = @:tmpset0 __tmp__._1;
                    };
                    _absz_10 = stdgo._internal.math.Math_abs.abs(_z_7);
                    _d_11 = ((_absz_10 * _sq1_8 : stdgo.GoFloat64) * _sq2_9 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_11, (0 : stdgo.GoInt))) {
                        _gotoNext = 332639i32;
                    } else {
                        _gotoNext = 332679i32;
                    };
                } else if (__value__ == (332639i32)) {
                    _z_7 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_10 : stdgo.GoFloat64) / _sq1_8 : stdgo.GoFloat64) / _sq2_9 : stdgo.GoFloat64);
                    _gotoNext = 332701i32;
                } else if (__value__ == (332679i32)) {
                    _gotoNext = 332679i32;
                    _z_7 = ((3.141592653589793 : stdgo.GoFloat64) / _d_11 : stdgo.GoFloat64);
                    0i32;
                    _gotoNext = 332701i32;
                } else if (__value__ == (332701i32)) {
                    return ((_signgam_5 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64);
                    _gotoNext = 332754i32;
                } else if (__value__ == (332754i32)) {
                    _z_12 = (1 : stdgo.GoFloat64);
                    0i32;
                    _gotoNext = 332764i32;
                } else if (__value__ == (332764i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 332775i32;
                    } else {
                        _gotoNext = 332805i32;
                    };
                } else if (__value__ == (332775i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_12 = (_z_12 * _x : stdgo.GoFloat64);
                    _gotoNext = 332764i32;
                } else if (__value__ == (332805i32)) {
                    0i32;
                    _gotoNext = 332805i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 332815i32;
                    } else {
                        _gotoNext = 332881i32;
                    };
                } else if (__value__ == (332815i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 332833i32;
                    } else {
                        _gotoNext = 332855i32;
                    };
                } else if (__value__ == (332833i32)) {
                    _gotoNext = 333211i32;
                } else if (__value__ == (332855i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 332805i32;
                } else if (__value__ == (332881i32)) {
                    0i32;
                    _gotoNext = 332881i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 332891i32;
                    } else {
                        _gotoNext = 332957i32;
                    };
                } else if (__value__ == (332891i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 332908i32;
                    } else {
                        _gotoNext = 332930i32;
                    };
                } else if (__value__ == (332908i32)) {
                    _gotoNext = 333211i32;
                } else if (__value__ == (332930i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 332881i32;
                } else if (__value__ == (332957i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 332967i32;
                    } else {
                        _gotoNext = 332985i32;
                    };
                } else if (__value__ == (332967i32)) {
                    return _z_12;
                    _gotoNext = 332985i32;
                } else if (__value__ == (332985i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_12 * _p_2 : stdgo.GoFloat64) / _q_1 : stdgo.GoFloat64);
                    _gotoNext = 333211i32;
                } else if (__value__ == (333211i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 333229i32;
                    } else {
                        _gotoNext = 333251i32;
                    };
                } else if (__value__ == (333229i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 333251i32;
                } else if (__value__ == (333251i32)) {
                    return (_z_12 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
