package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_0;
        var _y2_4:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_9:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_7:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_3:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_12:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_11:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_10:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_8:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_6:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_0 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 419092i32;
                } else if (__value__ == (419092i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 419102i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 419164i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 419199i32;
                    } else {
                        _gotoNext = 419272i32;
                    };
                } else if (__value__ == (419102i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 419272i32;
                } else if (__value__ == (419164i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 419272i32;
                } else if (__value__ == (419199i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 419228i32;
                    } else {
                        _gotoNext = 419254i32;
                    };
                } else if (__value__ == (419228i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 419254i32;
                } else if (__value__ == (419254i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 419272i32;
                } else if (__value__ == (419272i32)) {
                    _q_1 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2 = stdgo._internal.math.Math_floor.floor(_q_1);
                    if ((_q_1 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 419310i32;
                    } else {
                        _gotoNext = 419958i32;
                    };
                } else if (__value__ == (419310i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 419324i32;
                    } else {
                        _gotoNext = 419574i32;
                    };
                } else if (__value__ == (419324i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_3 = @:tmpset0 __tmp__._0;
                        _y2_4 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_3 * _y2_4 : stdgo.GoFloat64);
                    _gotoNext = 419574i32;
                } else if (__value__ == (419574i32)) {
                    _signgam_5 = (1 : stdgo.GoInt);
                    {
                        _ip_6 = (_p_2 : stdgo.GoInt64);
                        if ((_ip_6 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 419618i32;
                        } else {
                            _gotoNext = 419642i32;
                        };
                    };
                } else if (__value__ == (419618i32)) {
                    _signgam_5 = (-1 : stdgo.GoInt);
                    _gotoNext = 419642i32;
                } else if (__value__ == (419642i32)) {
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    if ((_z_7 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 419666i32;
                    } else {
                        _gotoNext = 419700i32;
                    };
                } else if (__value__ == (419666i32)) {
                    _p_2 = (_p_2 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    _gotoNext = 419700i32;
                } else if (__value__ == (419700i32)) {
                    _z_7 = (_q_1 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_7 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 419730i32;
                    } else {
                        _gotoNext = 419761i32;
                    };
                } else if (__value__ == (419730i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_5);
                    _gotoNext = 419761i32;
                } else if (__value__ == (419761i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1);
                        _sq1_8 = @:tmpset0 __tmp__._0;
                        _sq2_9 = @:tmpset0 __tmp__._1;
                    };
                    _absz_10 = stdgo._internal.math.Math_abs.abs(_z_7);
                    _d_11 = ((_absz_10 * _sq1_8 : stdgo.GoFloat64) * _sq2_9 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_11, (0 : stdgo.GoInt))) {
                        _gotoNext = 419843i32;
                    } else {
                        _gotoNext = 419883i32;
                    };
                } else if (__value__ == (419843i32)) {
                    _z_7 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_10 : stdgo.GoFloat64) / _sq1_8 : stdgo.GoFloat64) / _sq2_9 : stdgo.GoFloat64);
                    _gotoNext = 419905i32;
                } else if (__value__ == (419883i32)) {
                    _gotoNext = 419883i32;
                    _z_7 = ((3.141592653589793 : stdgo.GoFloat64) / _d_11 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 419905i32;
                } else if (__value__ == (419905i32)) {
                    return ((_signgam_5 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64);
                    _gotoNext = 419958i32;
                } else if (__value__ == (419958i32)) {
                    _z_12 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 419968i32;
                } else if (__value__ == (419968i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 419979i32;
                    } else {
                        _gotoNext = 420009i32;
                    };
                } else if (__value__ == (419979i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_12 = (_z_12 * _x : stdgo.GoFloat64);
                    _gotoNext = 419968i32;
                } else if (__value__ == (420009i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 420009i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420019i32;
                    } else {
                        _gotoNext = 420085i32;
                    };
                } else if (__value__ == (420019i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420037i32;
                    } else {
                        _gotoNext = 420059i32;
                    };
                } else if (__value__ == (420037i32)) {
                    _gotoNext = 420415i32;
                } else if (__value__ == (420059i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 420009i32;
                } else if (__value__ == (420085i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 420085i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420095i32;
                    } else {
                        _gotoNext = 420161i32;
                    };
                } else if (__value__ == (420095i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420112i32;
                    } else {
                        _gotoNext = 420134i32;
                    };
                } else if (__value__ == (420112i32)) {
                    _gotoNext = 420415i32;
                } else if (__value__ == (420134i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 420085i32;
                } else if (__value__ == (420161i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 420171i32;
                    } else {
                        _gotoNext = 420189i32;
                    };
                } else if (__value__ == (420171i32)) {
                    return _z_12;
                    _gotoNext = 420189i32;
                } else if (__value__ == (420189i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_12 * _p_2 : stdgo.GoFloat64) / _q_1 : stdgo.GoFloat64);
                    _gotoNext = 420415i32;
                } else if (__value__ == (420415i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 420433i32;
                    } else {
                        _gotoNext = 420455i32;
                    };
                } else if (__value__ == (420433i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 420455i32;
                } else if (__value__ == (420455i32)) {
                    return (_z_12 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
