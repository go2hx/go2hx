package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_411873:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_411830:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_411643:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_411354:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_412027:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_411856:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_411835:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_411711:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_411661:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_411402:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_411398:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_411341:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_411070;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_411070 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 411161i32;
                } else if (__value__ == (411161i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 411171i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 411233i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 411268i32;
                    } else {
                        _gotoNext = 411341i32;
                    };
                } else if (__value__ == (411171i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 411341i32;
                } else if (__value__ == (411233i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 411341i32;
                } else if (__value__ == (411268i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 411297i32;
                    } else {
                        _gotoNext = 411323i32;
                    };
                } else if (__value__ == (411297i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 411323i32;
                } else if (__value__ == (411323i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 411341i32;
                } else if (__value__ == (411341i32)) {
                    _q_411341 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_411354 = stdgo._internal.math.Math_floor.floor(_q_411341);
                    if ((_q_411341 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411379i32;
                    } else {
                        _gotoNext = 412027i32;
                    };
                } else if (__value__ == (411379i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411393i32;
                    } else {
                        _gotoNext = 411643i32;
                    };
                } else if (__value__ == (411393i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_411398 = @:tmpset0 __tmp__._0;
                        _y2_411402 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_411398 * _y2_411402 : stdgo.GoFloat64);
                    _gotoNext = 411643i32;
                } else if (__value__ == (411643i32)) {
                    _signgam_411643 = (1 : stdgo.GoInt);
                    {
                        _ip_411661 = (_p_411354 : stdgo.GoInt64);
                        if ((_ip_411661 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 411687i32;
                        } else {
                            _gotoNext = 411711i32;
                        };
                    };
                } else if (__value__ == (411687i32)) {
                    _signgam_411643 = (-1 : stdgo.GoInt);
                    _gotoNext = 411711i32;
                } else if (__value__ == (411711i32)) {
                    _z_411711 = (_q_411341 - _p_411354 : stdgo.GoFloat64);
                    if ((_z_411711 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411735i32;
                    } else {
                        _gotoNext = 411769i32;
                    };
                } else if (__value__ == (411735i32)) {
                    _p_411354 = (_p_411354 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_411711 = (_q_411341 - _p_411354 : stdgo.GoFloat64);
                    _gotoNext = 411769i32;
                } else if (__value__ == (411769i32)) {
                    _z_411711 = (_q_411341 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_411711 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_411711 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 411799i32;
                    } else {
                        _gotoNext = 411830i32;
                    };
                } else if (__value__ == (411799i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_411643);
                    _gotoNext = 411830i32;
                } else if (__value__ == (411830i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_411341);
                        _sq1_411830 = @:tmpset0 __tmp__._0;
                        _sq2_411835 = @:tmpset0 __tmp__._1;
                    };
                    _absz_411856 = stdgo._internal.math.Math_abs.abs(_z_411711);
                    _d_411873 = ((_absz_411856 * _sq1_411830 : stdgo.GoFloat64) * _sq2_411835 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_411873, (0 : stdgo.GoInt))) {
                        _gotoNext = 411912i32;
                    } else {
                        _gotoNext = 411952i32;
                    };
                } else if (__value__ == (411912i32)) {
                    _z_411711 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_411856 : stdgo.GoFloat64) / _sq1_411830 : stdgo.GoFloat64) / _sq2_411835 : stdgo.GoFloat64);
                    _gotoNext = 411974i32;
                } else if (__value__ == (411952i32)) {
                    _gotoNext = 411952i32;
                    _z_411711 = ((3.141592653589793 : stdgo.GoFloat64) / _d_411873 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 411974i32;
                } else if (__value__ == (411974i32)) {
                    return ((_signgam_411643 : stdgo.GoFloat64) * _z_411711 : stdgo.GoFloat64);
                    _gotoNext = 412027i32;
                } else if (__value__ == (412027i32)) {
                    _z_412027 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 412037i32;
                } else if (__value__ == (412037i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 412048i32;
                    } else {
                        _gotoNext = 412078i32;
                    };
                } else if (__value__ == (412048i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_412027 = (_z_412027 * _x : stdgo.GoFloat64);
                    _gotoNext = 412037i32;
                } else if (__value__ == (412078i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 412078i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 412088i32;
                    } else {
                        _gotoNext = 412154i32;
                    };
                } else if (__value__ == (412088i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 412106i32;
                    } else {
                        _gotoNext = 412128i32;
                    };
                } else if (__value__ == (412106i32)) {
                    _gotoNext = 412484i32;
                } else if (__value__ == (412128i32)) {
                    _z_412027 = (_z_412027 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 412078i32;
                } else if (__value__ == (412154i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 412154i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 412164i32;
                    } else {
                        _gotoNext = 412230i32;
                    };
                } else if (__value__ == (412164i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 412181i32;
                    } else {
                        _gotoNext = 412203i32;
                    };
                } else if (__value__ == (412181i32)) {
                    _gotoNext = 412484i32;
                } else if (__value__ == (412203i32)) {
                    _z_412027 = (_z_412027 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 412154i32;
                } else if (__value__ == (412230i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 412240i32;
                    } else {
                        _gotoNext = 412258i32;
                    };
                } else if (__value__ == (412240i32)) {
                    return _z_412027;
                    _gotoNext = 412258i32;
                } else if (__value__ == (412258i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_411354 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_411341 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_412027 * _p_411354 : stdgo.GoFloat64) / _q_411341 : stdgo.GoFloat64);
                    _gotoNext = 412484i32;
                } else if (__value__ == (412484i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 412502i32;
                    } else {
                        _gotoNext = 412524i32;
                    };
                } else if (__value__ == (412502i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 412524i32;
                } else if (__value__ == (412524i32)) {
                    return (_z_412027 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
