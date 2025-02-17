package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_11:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_12:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_0;
        var _absz_10:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_8:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_4:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_3:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_9:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_7:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_6:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_0 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 480833i32;
                } else if (__value__ == (480833i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 480843i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 480905i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 480940i32;
                    } else {
                        _gotoNext = 481013i32;
                    };
                } else if (__value__ == (480843i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 481013i32;
                } else if (__value__ == (480905i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 481013i32;
                } else if (__value__ == (480940i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 480969i32;
                    } else {
                        _gotoNext = 480995i32;
                    };
                } else if (__value__ == (480969i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 480995i32;
                } else if (__value__ == (480995i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 481013i32;
                } else if (__value__ == (481013i32)) {
                    _q_1 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2 = stdgo._internal.math.Math_floor.floor(_q_1);
                    if ((_q_1 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481051i32;
                    } else {
                        _gotoNext = 481699i32;
                    };
                } else if (__value__ == (481051i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481065i32;
                    } else {
                        _gotoNext = 481315i32;
                    };
                } else if (__value__ == (481065i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_3 = @:tmpset0 __tmp__._0;
                        _y2_4 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_3 * _y2_4 : stdgo.GoFloat64);
                    _gotoNext = 481315i32;
                } else if (__value__ == (481315i32)) {
                    _signgam_5 = (1 : stdgo.GoInt);
                    {
                        _ip_6 = (_p_2 : stdgo.GoInt64);
                        if ((_ip_6 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 481359i32;
                        } else {
                            _gotoNext = 481383i32;
                        };
                    };
                } else if (__value__ == (481359i32)) {
                    _signgam_5 = (-1 : stdgo.GoInt);
                    _gotoNext = 481383i32;
                } else if (__value__ == (481383i32)) {
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    if ((_z_7 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481407i32;
                    } else {
                        _gotoNext = 481441i32;
                    };
                } else if (__value__ == (481407i32)) {
                    _p_2 = (_p_2 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    _gotoNext = 481441i32;
                } else if (__value__ == (481441i32)) {
                    _z_7 = (_q_1 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_7 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 481471i32;
                    } else {
                        _gotoNext = 481502i32;
                    };
                } else if (__value__ == (481471i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_5);
                    _gotoNext = 481502i32;
                } else if (__value__ == (481502i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1);
                        _sq1_8 = @:tmpset0 __tmp__._0;
                        _sq2_9 = @:tmpset0 __tmp__._1;
                    };
                    _absz_10 = stdgo._internal.math.Math_abs.abs(_z_7);
                    _d_11 = ((_absz_10 * _sq1_8 : stdgo.GoFloat64) * _sq2_9 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_11, (0 : stdgo.GoInt))) {
                        _gotoNext = 481584i32;
                    } else {
                        _gotoNext = 481624i32;
                    };
                } else if (__value__ == (481584i32)) {
                    _z_7 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_10 : stdgo.GoFloat64) / _sq1_8 : stdgo.GoFloat64) / _sq2_9 : stdgo.GoFloat64);
                    _gotoNext = 481646i32;
                } else if (__value__ == (481624i32)) {
                    _gotoNext = 481624i32;
                    _z_7 = ((3.141592653589793 : stdgo.GoFloat64) / _d_11 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 481646i32;
                } else if (__value__ == (481646i32)) {
                    return ((_signgam_5 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64);
                    _gotoNext = 481699i32;
                } else if (__value__ == (481699i32)) {
                    _z_12 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 481709i32;
                } else if (__value__ == (481709i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481720i32;
                    } else {
                        _gotoNext = 481750i32;
                    };
                } else if (__value__ == (481720i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_12 = (_z_12 * _x : stdgo.GoFloat64);
                    _gotoNext = 481709i32;
                } else if (__value__ == (481750i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 481750i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481760i32;
                    } else {
                        _gotoNext = 481826i32;
                    };
                } else if (__value__ == (481760i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481778i32;
                    } else {
                        _gotoNext = 481800i32;
                    };
                } else if (__value__ == (481778i32)) {
                    _gotoNext = 482156i32;
                } else if (__value__ == (481800i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 481750i32;
                } else if (__value__ == (481826i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 481826i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481836i32;
                    } else {
                        _gotoNext = 481902i32;
                    };
                } else if (__value__ == (481836i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481853i32;
                    } else {
                        _gotoNext = 481875i32;
                    };
                } else if (__value__ == (481853i32)) {
                    _gotoNext = 482156i32;
                } else if (__value__ == (481875i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 481826i32;
                } else if (__value__ == (481902i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 481912i32;
                    } else {
                        _gotoNext = 481930i32;
                    };
                } else if (__value__ == (481912i32)) {
                    return _z_12;
                    _gotoNext = 481930i32;
                } else if (__value__ == (481930i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_12 * _p_2 : stdgo.GoFloat64) / _q_1 : stdgo.GoFloat64);
                    _gotoNext = 482156i32;
                } else if (__value__ == (482156i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 482174i32;
                    } else {
                        _gotoNext = 482196i32;
                    };
                } else if (__value__ == (482174i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 482196i32;
                } else if (__value__ == (482196i32)) {
                    return (_z_12 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
