package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_9:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_12:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_10:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_8:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_4:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_3:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_11:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_0 = (0.5772156649015329f64 : stdgo.GoFloat64);
        var _z_7:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_6:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 374673i32;
                } else if (__value__ == (374673i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 374683i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 374745i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 374780i32;
                    } else {
                        _gotoNext = 374853i32;
                    };
                } else if (__value__ == (374683i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 374853i32;
                } else if (__value__ == (374745i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 374853i32;
                } else if (__value__ == (374780i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 374809i32;
                    } else {
                        _gotoNext = 374835i32;
                    };
                } else if (__value__ == (374809i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 374835i32;
                } else if (__value__ == (374835i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 374853i32;
                } else if (__value__ == (374853i32)) {
                    _q_1 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2 = stdgo._internal.math.Math_floor.floor(_q_1);
                    if ((_q_1 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 374891i32;
                    } else {
                        _gotoNext = 375539i32;
                    };
                } else if (__value__ == (374891i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 374905i32;
                    } else {
                        _gotoNext = 375155i32;
                    };
                } else if (__value__ == (374905i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_3 = @:tmpset0 __tmp__._0;
                        _y2_4 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_3 * _y2_4 : stdgo.GoFloat64);
                    _gotoNext = 375155i32;
                } else if (__value__ == (375155i32)) {
                    _signgam_5 = (1 : stdgo.GoInt);
                    {
                        _ip_6 = (_p_2 : stdgo.GoInt64);
                        if ((_ip_6 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 375199i32;
                        } else {
                            _gotoNext = 375223i32;
                        };
                    };
                } else if (__value__ == (375199i32)) {
                    _signgam_5 = (-1 : stdgo.GoInt);
                    _gotoNext = 375223i32;
                } else if (__value__ == (375223i32)) {
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    if ((_z_7 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 375247i32;
                    } else {
                        _gotoNext = 375281i32;
                    };
                } else if (__value__ == (375247i32)) {
                    _p_2 = (_p_2 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    _gotoNext = 375281i32;
                } else if (__value__ == (375281i32)) {
                    _z_7 = (_q_1 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_7 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 375311i32;
                    } else {
                        _gotoNext = 375342i32;
                    };
                } else if (__value__ == (375311i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_5);
                    _gotoNext = 375342i32;
                } else if (__value__ == (375342i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1);
                        _sq1_8 = @:tmpset0 __tmp__._0;
                        _sq2_9 = @:tmpset0 __tmp__._1;
                    };
                    _absz_10 = stdgo._internal.math.Math_abs.abs(_z_7);
                    _d_11 = ((_absz_10 * _sq1_8 : stdgo.GoFloat64) * _sq2_9 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_11, (0 : stdgo.GoInt))) {
                        _gotoNext = 375424i32;
                    } else {
                        _gotoNext = 375464i32;
                    };
                } else if (__value__ == (375424i32)) {
                    _z_7 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_10 : stdgo.GoFloat64) / _sq1_8 : stdgo.GoFloat64) / _sq2_9 : stdgo.GoFloat64);
                    _gotoNext = 375486i32;
                } else if (__value__ == (375464i32)) {
                    _gotoNext = 375464i32;
                    _z_7 = ((3.141592653589793 : stdgo.GoFloat64) / _d_11 : stdgo.GoFloat64);
                    0i32;
                    _gotoNext = 375486i32;
                } else if (__value__ == (375486i32)) {
                    return ((_signgam_5 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64);
                    _gotoNext = 375539i32;
                } else if (__value__ == (375539i32)) {
                    _z_12 = (1 : stdgo.GoFloat64);
                    0i32;
                    _gotoNext = 375549i32;
                } else if (__value__ == (375549i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 375560i32;
                    } else {
                        _gotoNext = 375590i32;
                    };
                } else if (__value__ == (375560i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_12 = (_z_12 * _x : stdgo.GoFloat64);
                    _gotoNext = 375549i32;
                } else if (__value__ == (375590i32)) {
                    0i32;
                    _gotoNext = 375590i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 375600i32;
                    } else {
                        _gotoNext = 375666i32;
                    };
                } else if (__value__ == (375600i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 375618i32;
                    } else {
                        _gotoNext = 375640i32;
                    };
                } else if (__value__ == (375618i32)) {
                    _gotoNext = 375996i32;
                } else if (__value__ == (375640i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 375590i32;
                } else if (__value__ == (375666i32)) {
                    0i32;
                    _gotoNext = 375666i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 375676i32;
                    } else {
                        _gotoNext = 375742i32;
                    };
                } else if (__value__ == (375676i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 375693i32;
                    } else {
                        _gotoNext = 375715i32;
                    };
                } else if (__value__ == (375693i32)) {
                    _gotoNext = 375996i32;
                } else if (__value__ == (375715i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 375666i32;
                } else if (__value__ == (375742i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 375752i32;
                    } else {
                        _gotoNext = 375770i32;
                    };
                } else if (__value__ == (375752i32)) {
                    return _z_12;
                    _gotoNext = 375770i32;
                } else if (__value__ == (375770i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_12 * _p_2 : stdgo.GoFloat64) / _q_1 : stdgo.GoFloat64);
                    _gotoNext = 375996i32;
                } else if (__value__ == (375996i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 376014i32;
                    } else {
                        _gotoNext = 376036i32;
                    };
                } else if (__value__ == (376014i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 376036i32;
                } else if (__value__ == (376036i32)) {
                    return (_z_12 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
