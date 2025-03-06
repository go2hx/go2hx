package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_11:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_7:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_3:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_0;
        var _ip_6:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _z_12:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_8:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_4:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_10:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_9:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_0 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 515166i32;
                } else if (__value__ == (515166i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 515176i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 515238i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 515273i32;
                    } else {
                        _gotoNext = 515346i32;
                    };
                } else if (__value__ == (515176i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 515346i32;
                } else if (__value__ == (515238i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 515346i32;
                } else if (__value__ == (515273i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 515302i32;
                    } else {
                        _gotoNext = 515328i32;
                    };
                } else if (__value__ == (515302i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 515328i32;
                } else if (__value__ == (515328i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 515346i32;
                } else if (__value__ == (515346i32)) {
                    _q_1 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2 = stdgo._internal.math.Math_floor.floor(_q_1);
                    if ((_q_1 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515384i32;
                    } else {
                        _gotoNext = 516032i32;
                    };
                } else if (__value__ == (515384i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515398i32;
                    } else {
                        _gotoNext = 515648i32;
                    };
                } else if (__value__ == (515398i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_3 = @:tmpset0 __tmp__._0;
                        _y2_4 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_3 * _y2_4 : stdgo.GoFloat64);
                    _gotoNext = 515648i32;
                } else if (__value__ == (515648i32)) {
                    _signgam_5 = (1 : stdgo.GoInt);
                    {
                        _ip_6 = (_p_2 : stdgo.GoInt64);
                        if ((_ip_6 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 515692i32;
                        } else {
                            _gotoNext = 515716i32;
                        };
                    };
                } else if (__value__ == (515692i32)) {
                    _signgam_5 = (-1 : stdgo.GoInt);
                    _gotoNext = 515716i32;
                } else if (__value__ == (515716i32)) {
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    if ((_z_7 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515740i32;
                    } else {
                        _gotoNext = 515774i32;
                    };
                } else if (__value__ == (515740i32)) {
                    _p_2 = (_p_2 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    _gotoNext = 515774i32;
                } else if (__value__ == (515774i32)) {
                    _z_7 = (_q_1 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_7 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 515804i32;
                    } else {
                        _gotoNext = 515835i32;
                    };
                } else if (__value__ == (515804i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_5);
                    _gotoNext = 515835i32;
                } else if (__value__ == (515835i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1);
                        _sq1_8 = @:tmpset0 __tmp__._0;
                        _sq2_9 = @:tmpset0 __tmp__._1;
                    };
                    _absz_10 = stdgo._internal.math.Math_abs.abs(_z_7);
                    _d_11 = ((_absz_10 * _sq1_8 : stdgo.GoFloat64) * _sq2_9 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_11, (0 : stdgo.GoInt))) {
                        _gotoNext = 515917i32;
                    } else {
                        _gotoNext = 515957i32;
                    };
                } else if (__value__ == (515917i32)) {
                    _z_7 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_10 : stdgo.GoFloat64) / _sq1_8 : stdgo.GoFloat64) / _sq2_9 : stdgo.GoFloat64);
                    _gotoNext = 515979i32;
                } else if (__value__ == (515957i32)) {
                    _gotoNext = 515957i32;
                    _z_7 = ((3.141592653589793 : stdgo.GoFloat64) / _d_11 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 515979i32;
                } else if (__value__ == (515979i32)) {
                    return ((_signgam_5 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64);
                    _gotoNext = 516032i32;
                } else if (__value__ == (516032i32)) {
                    _z_12 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 516042i32;
                } else if (__value__ == (516042i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 516053i32;
                    } else {
                        _gotoNext = 516083i32;
                    };
                } else if (__value__ == (516053i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_12 = (_z_12 * _x : stdgo.GoFloat64);
                    _gotoNext = 516042i32;
                } else if (__value__ == (516083i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 516083i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 516093i32;
                    } else {
                        _gotoNext = 516159i32;
                    };
                } else if (__value__ == (516093i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 516111i32;
                    } else {
                        _gotoNext = 516133i32;
                    };
                } else if (__value__ == (516111i32)) {
                    _gotoNext = 516489i32;
                } else if (__value__ == (516133i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 516083i32;
                } else if (__value__ == (516159i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 516159i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 516169i32;
                    } else {
                        _gotoNext = 516235i32;
                    };
                } else if (__value__ == (516169i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 516186i32;
                    } else {
                        _gotoNext = 516208i32;
                    };
                } else if (__value__ == (516186i32)) {
                    _gotoNext = 516489i32;
                } else if (__value__ == (516208i32)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 516159i32;
                } else if (__value__ == (516235i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 516245i32;
                    } else {
                        _gotoNext = 516263i32;
                    };
                } else if (__value__ == (516245i32)) {
                    return _z_12;
                    _gotoNext = 516263i32;
                } else if (__value__ == (516263i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_12 * _p_2 : stdgo.GoFloat64) / _q_1 : stdgo.GoFloat64);
                    _gotoNext = 516489i32;
                } else if (__value__ == (516489i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 516507i32;
                    } else {
                        _gotoNext = 516529i32;
                    };
                } else if (__value__ == (516507i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 516529i32;
                } else if (__value__ == (516529i32)) {
                    return (_z_12 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
