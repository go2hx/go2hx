package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_11:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_8:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_0;
        var _absz_10:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_9:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_7:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_4:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_12:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_6:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_3:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_0 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 371156i32;
                } else if (__value__ == (371156i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 371166i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 371228i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 371263i32;
                    } else {
                        _gotoNext = 371336i32;
                    };
                } else if (__value__ == (371166i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 371336i32;
                } else if (__value__ == (371228i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 371336i32;
                } else if (__value__ == (371263i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 371292i32;
                    } else {
                        _gotoNext = 371318i32;
                    };
                } else if (__value__ == (371292i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 371318i32;
                } else if (__value__ == (371318i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 371336i32;
                } else if (__value__ == (371336i32)) {
                    _q_1 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2 = stdgo._internal.math.Math_floor.floor(_q_1);
                    if ((_q_1 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371374i32;
                    } else {
                        _gotoNext = 372022i32;
                    };
                } else if (__value__ == (371374i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371388i32;
                    } else {
                        _gotoNext = 371638i32;
                    };
                } else if (__value__ == (371388i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_3 = @:tmpset0 __tmp__._0;
                        _y2_4 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_3 * _y2_4 : stdgo.GoFloat64);
                    _gotoNext = 371638i32;
                } else if (__value__ == (371638i32)) {
                    _signgam_5 = (1 : stdgo.GoInt);
                    {
                        _ip_6 = (_p_2 : stdgo.GoInt64);
                        if ((_ip_6 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 371682i32;
                        } else {
                            _gotoNext = 371706i32;
                        };
                    };
                } else if (__value__ == (371682i32)) {
                    _signgam_5 = (-1 : stdgo.GoInt);
                    _gotoNext = 371706i32;
                } else if (__value__ == (371706i32)) {
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    if ((_z_7 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371730i32;
                    } else {
                        _gotoNext = 371764i32;
                    };
                } else if (__value__ == (371730i32)) {
                    _p_2 = (_p_2 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    _gotoNext = 371764i32;
                } else if (__value__ == (371764i32)) {
                    _z_7 = (_q_1 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_7 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 371794i32;
                    } else {
                        _gotoNext = 371825i32;
                    };
                } else if (__value__ == (371794i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_5);
                    _gotoNext = 371825i32;
                } else if (__value__ == (371825i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1);
                        _sq1_8 = @:tmpset0 __tmp__._0;
                        _sq2_9 = @:tmpset0 __tmp__._1;
                    };
                    _absz_10 = stdgo._internal.math.Math_abs.abs(_z_7);
                    _d_11 = ((_absz_10 * _sq1_8 : stdgo.GoFloat64) * _sq2_9 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_11, (0 : stdgo.GoInt))) {
                        _gotoNext = 371907i32;
                    } else {
                        _gotoNext = 371947i32;
                    };
                } else if (__value__ == (371907i32)) {
                    _z_7 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_10 : stdgo.GoFloat64) / _sq1_8 : stdgo.GoFloat64) / _sq2_9 : stdgo.GoFloat64);
                    _gotoNext = 371969i32;
                } else if (__value__ == (371947i32)) {
                    _gotoNext = 371947i32;
                    _z_7 = ((3.141592653589793 : stdgo.GoFloat64) / _d_11 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 371969i32;
                } else if (__value__ == (371969i32)) {
                    return ((_signgam_5 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64);
                    _gotoNext = 372022i32;
                } else if (__value__ == (372022i32)) {
                    _z_12 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 372032i32;
                } else if (__value__ == (372032i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372043i32;
                    } else {
                        _gotoNext = 372073i32;
                    };
                } else if (__value__ == (372043i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_12 = (_z_12 * _x : stdgo.GoFloat64);
                    _gotoNext = 372032i32;
                } else if (__value__ == (372073i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 372073i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372083i32;
                    } else {
                        _gotoNext = 372149i32;
                    };
                } else if (__value__ == (372083i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372101i32;
                    } else {
                        _gotoNext = 372123i32;
                    };
                } else if (__value__ == (372101i32)) {
                    _gotoNext = 372479i32;
                } else if (__value__ == (372123i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 372073i32;
                } else if (__value__ == (372149i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 372149i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372159i32;
                    } else {
                        _gotoNext = 372225i32;
                    };
                } else if (__value__ == (372159i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372176i32;
                    } else {
                        _gotoNext = 372198i32;
                    };
                } else if (__value__ == (372176i32)) {
                    _gotoNext = 372479i32;
                } else if (__value__ == (372198i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 372149i32;
                } else if (__value__ == (372225i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 372235i32;
                    } else {
                        _gotoNext = 372253i32;
                    };
                } else if (__value__ == (372235i32)) {
                    return _z_12;
                    _gotoNext = 372253i32;
                } else if (__value__ == (372253i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_12 * _p_2 : stdgo.GoFloat64) / _q_1 : stdgo.GoFloat64);
                    _gotoNext = 372479i32;
                } else if (__value__ == (372479i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 372497i32;
                    } else {
                        _gotoNext = 372519i32;
                    };
                } else if (__value__ == (372497i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 372519i32;
                } else if (__value__ == (372519i32)) {
                    return (_z_12 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
