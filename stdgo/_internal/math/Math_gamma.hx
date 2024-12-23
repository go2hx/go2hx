package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_442149:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_441389;
        var _d_442192:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_441962:stdgo.GoInt = (0 : stdgo.GoInt);
        var _absz_442175:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_442030:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_441717:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_442346:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_442154:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_441980:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_441721:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_441673:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_441660:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_441389 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 441480i32;
                } else if (__value__ == (441480i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 441490i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 441552i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 441587i32;
                    } else {
                        _gotoNext = 441660i32;
                    };
                } else if (__value__ == (441490i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 441660i32;
                } else if (__value__ == (441552i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 441660i32;
                } else if (__value__ == (441587i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 441616i32;
                    } else {
                        _gotoNext = 441642i32;
                    };
                } else if (__value__ == (441616i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 441642i32;
                } else if (__value__ == (441642i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 441660i32;
                } else if (__value__ == (441660i32)) {
                    _q_441660 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_441673 = stdgo._internal.math.Math_floor.floor(_q_441660);
                    if ((_q_441660 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 441698i32;
                    } else {
                        _gotoNext = 442346i32;
                    };
                } else if (__value__ == (441698i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 441712i32;
                    } else {
                        _gotoNext = 441962i32;
                    };
                } else if (__value__ == (441712i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_441717 = __tmp__._0;
                        _y2_441721 = __tmp__._1;
                    };
                    return (_y1_441717 * _y2_441721 : stdgo.GoFloat64);
                    _gotoNext = 441962i32;
                } else if (__value__ == (441962i32)) {
                    _signgam_441962 = (1 : stdgo.GoInt);
                    {
                        _ip_441980 = (_p_441673 : stdgo.GoInt64);
                        if ((_ip_441980 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 442006i32;
                        } else {
                            _gotoNext = 442030i32;
                        };
                    };
                } else if (__value__ == (442006i32)) {
                    _signgam_441962 = (-1 : stdgo.GoInt);
                    _gotoNext = 442030i32;
                } else if (__value__ == (442030i32)) {
                    _z_442030 = (_q_441660 - _p_441673 : stdgo.GoFloat64);
                    if ((_z_442030 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442054i32;
                    } else {
                        _gotoNext = 442088i32;
                    };
                } else if (__value__ == (442054i32)) {
                    _p_441673 = (_p_441673 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_442030 = (_q_441660 - _p_441673 : stdgo.GoFloat64);
                    _gotoNext = 442088i32;
                } else if (__value__ == (442088i32)) {
                    _z_442030 = (_q_441660 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_442030 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_442030 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 442118i32;
                    } else {
                        _gotoNext = 442149i32;
                    };
                } else if (__value__ == (442118i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_441962);
                    _gotoNext = 442149i32;
                } else if (__value__ == (442149i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_441660);
                        _sq1_442149 = __tmp__._0;
                        _sq2_442154 = __tmp__._1;
                    };
                    _absz_442175 = stdgo._internal.math.Math_abs.abs(_z_442030);
                    _d_442192 = ((_absz_442175 * _sq1_442149 : stdgo.GoFloat64) * _sq2_442154 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_442192, (0 : stdgo.GoInt))) {
                        _gotoNext = 442231i32;
                    } else {
                        _gotoNext = 442271i32;
                    };
                } else if (__value__ == (442231i32)) {
                    _z_442030 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_442175 : stdgo.GoFloat64) / _sq1_442149 : stdgo.GoFloat64) / _sq2_442154 : stdgo.GoFloat64);
                    _gotoNext = 442293i32;
                } else if (__value__ == (442271i32)) {
                    _gotoNext = 442271i32;
                    _z_442030 = ((3.141592653589793 : stdgo.GoFloat64) / _d_442192 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 442293i32;
                } else if (__value__ == (442293i32)) {
                    return ((_signgam_441962 : stdgo.GoFloat64) * _z_442030 : stdgo.GoFloat64);
                    _gotoNext = 442346i32;
                } else if (__value__ == (442346i32)) {
                    _z_442346 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 442356i32;
                } else if (__value__ == (442356i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442367i32;
                    } else {
                        _gotoNext = 442397i32;
                    };
                } else if (__value__ == (442367i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_442346 = (_z_442346 * _x : stdgo.GoFloat64);
                    _gotoNext = 442356i32;
                } else if (__value__ == (442397i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 442397i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442407i32;
                    } else {
                        _gotoNext = 442473i32;
                    };
                } else if (__value__ == (442407i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442425i32;
                    } else {
                        _gotoNext = 442447i32;
                    };
                } else if (__value__ == (442425i32)) {
                    _gotoNext = 442803i32;
                } else if (__value__ == (442447i32)) {
                    _z_442346 = (_z_442346 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 442397i32;
                } else if (__value__ == (442473i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 442473i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442483i32;
                    } else {
                        _gotoNext = 442549i32;
                    };
                } else if (__value__ == (442483i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442500i32;
                    } else {
                        _gotoNext = 442522i32;
                    };
                } else if (__value__ == (442500i32)) {
                    _gotoNext = 442803i32;
                } else if (__value__ == (442522i32)) {
                    _z_442346 = (_z_442346 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 442473i32;
                } else if (__value__ == (442549i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 442559i32;
                    } else {
                        _gotoNext = 442577i32;
                    };
                } else if (__value__ == (442559i32)) {
                    return _z_442346;
                    _gotoNext = 442577i32;
                } else if (__value__ == (442577i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_441673 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_441660 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_442346 * _p_441673 : stdgo.GoFloat64) / _q_441660 : stdgo.GoFloat64);
                    _gotoNext = 442803i32;
                } else if (__value__ == (442803i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 442821i32;
                    } else {
                        _gotoNext = 442843i32;
                    };
                } else if (__value__ == (442821i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 442843i32;
                } else if (__value__ == (442843i32)) {
                    return (_z_442346 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
