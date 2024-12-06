package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_2320323:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_2320302:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_2320110:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_2320178:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_2319869:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_2319865:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_2319537;
        var _z_2320494:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_2320297:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_2319821:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_2319808:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_2320340:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_2320128:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_2319537 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 2319628i32;
                } else if (__value__ == (2319628i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 2319638i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 2319700i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 2319735i32;
                    } else {
                        _gotoNext = 2319808i32;
                    };
                } else if (__value__ == (2319638i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 2319808i32;
                } else if (__value__ == (2319700i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 2319808i32;
                } else if (__value__ == (2319735i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 2319764i32;
                    } else {
                        _gotoNext = 2319790i32;
                    };
                } else if (__value__ == (2319764i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 2319790i32;
                } else if (__value__ == (2319790i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 2319808i32;
                } else if (__value__ == (2319808i32)) {
                    _q_2319808 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2319821 = stdgo._internal.math.Math_floor.floor(_q_2319808);
                    if ((_q_2319808 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2319846i32;
                    } else {
                        _gotoNext = 2320494i32;
                    };
                } else if (__value__ == (2319846i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2319860i32;
                    } else {
                        _gotoNext = 2320110i32;
                    };
                } else if (__value__ == (2319860i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_2319865 = __tmp__._0;
                        _y2_2319869 = __tmp__._1;
                    };
                    return (_y1_2319865 * _y2_2319869 : stdgo.GoFloat64);
                    _gotoNext = 2320110i32;
                } else if (__value__ == (2320110i32)) {
                    _signgam_2320110 = (1 : stdgo.GoInt);
                    {
                        _ip_2320128 = (_p_2319821 : stdgo.GoInt64);
                        if ((_ip_2320128 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 2320154i32;
                        } else {
                            _gotoNext = 2320178i32;
                        };
                    };
                } else if (__value__ == (2320154i32)) {
                    _signgam_2320110 = (-1 : stdgo.GoInt);
                    _gotoNext = 2320178i32;
                } else if (__value__ == (2320178i32)) {
                    _z_2320178 = (_q_2319808 - _p_2319821 : stdgo.GoFloat64);
                    if ((_z_2320178 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2320202i32;
                    } else {
                        _gotoNext = 2320236i32;
                    };
                } else if (__value__ == (2320202i32)) {
                    _p_2319821 = (_p_2319821 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_2320178 = (_q_2319808 - _p_2319821 : stdgo.GoFloat64);
                    _gotoNext = 2320236i32;
                } else if (__value__ == (2320236i32)) {
                    _z_2320178 = (_q_2319808 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_2320178 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_2320178 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 2320266i32;
                    } else {
                        _gotoNext = 2320297i32;
                    };
                } else if (__value__ == (2320266i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_2320110);
                    _gotoNext = 2320297i32;
                } else if (__value__ == (2320297i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_2319808);
                        _sq1_2320297 = __tmp__._0;
                        _sq2_2320302 = __tmp__._1;
                    };
                    _absz_2320323 = stdgo._internal.math.Math_abs.abs(_z_2320178);
                    _d_2320340 = ((_absz_2320323 * _sq1_2320297 : stdgo.GoFloat64) * _sq2_2320302 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_2320340, (0 : stdgo.GoInt))) {
                        _gotoNext = 2320379i32;
                    } else {
                        _gotoNext = 2320419i32;
                    };
                } else if (__value__ == (2320379i32)) {
                    _z_2320178 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_2320323 : stdgo.GoFloat64) / _sq1_2320297 : stdgo.GoFloat64) / _sq2_2320302 : stdgo.GoFloat64);
                    _gotoNext = 2320441i32;
                } else if (__value__ == (2320419i32)) {
                    _gotoNext = 2320419i32;
                    _z_2320178 = ((3.141592653589793 : stdgo.GoFloat64) / _d_2320340 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 2320441i32;
                } else if (__value__ == (2320441i32)) {
                    return ((_signgam_2320110 : stdgo.GoFloat64) * _z_2320178 : stdgo.GoFloat64);
                    _gotoNext = 2320494i32;
                } else if (__value__ == (2320494i32)) {
                    _z_2320494 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 2320504i32;
                } else if (__value__ == (2320504i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2320515i32;
                    } else {
                        _gotoNext = 2320545i32;
                    };
                } else if (__value__ == (2320515i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_2320494 = (_z_2320494 * _x : stdgo.GoFloat64);
                    _gotoNext = 2320504i32;
                } else if (__value__ == (2320545i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2320545i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2320555i32;
                    } else {
                        _gotoNext = 2320621i32;
                    };
                } else if (__value__ == (2320555i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2320573i32;
                    } else {
                        _gotoNext = 2320595i32;
                    };
                } else if (__value__ == (2320573i32)) {
                    _gotoNext = 2320951i32;
                } else if (__value__ == (2320595i32)) {
                    _z_2320494 = (_z_2320494 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 2320545i32;
                } else if (__value__ == (2320621i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2320621i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2320631i32;
                    } else {
                        _gotoNext = 2320697i32;
                    };
                } else if (__value__ == (2320631i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 2320648i32;
                    } else {
                        _gotoNext = 2320670i32;
                    };
                } else if (__value__ == (2320648i32)) {
                    _gotoNext = 2320951i32;
                } else if (__value__ == (2320670i32)) {
                    _z_2320494 = (_z_2320494 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 2320621i32;
                } else if (__value__ == (2320697i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 2320707i32;
                    } else {
                        _gotoNext = 2320725i32;
                    };
                } else if (__value__ == (2320707i32)) {
                    return _z_2320494;
                    _gotoNext = 2320725i32;
                } else if (__value__ == (2320725i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2319821 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_2319808 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_2320494 * _p_2319821 : stdgo.GoFloat64) / _q_2319808 : stdgo.GoFloat64);
                    _gotoNext = 2320951i32;
                } else if (__value__ == (2320951i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 2320969i32;
                    } else {
                        _gotoNext = 2320991i32;
                    };
                } else if (__value__ == (2320969i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 2320991i32;
                } else if (__value__ == (2320991i32)) {
                    return (_z_2320494 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
