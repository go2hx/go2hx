package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_424944:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_424770:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_424752:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_424511:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_424463:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_424939:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_424820:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_424450:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_424179;
        var _d_424982:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_424507:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_425136:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_424965:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_424179 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 424270i32;
                } else if (__value__ == (424270i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 424280i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 424342i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 424377i32;
                    } else {
                        _gotoNext = 424450i32;
                    };
                } else if (__value__ == (424280i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 424450i32;
                } else if (__value__ == (424342i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 424450i32;
                } else if (__value__ == (424377i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 424406i32;
                    } else {
                        _gotoNext = 424432i32;
                    };
                } else if (__value__ == (424406i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 424432i32;
                } else if (__value__ == (424432i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 424450i32;
                } else if (__value__ == (424450i32)) {
                    _q_424450 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_424463 = stdgo._internal.math.Math_floor.floor(_q_424450);
                    if ((_q_424450 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 424488i32;
                    } else {
                        _gotoNext = 425136i32;
                    };
                } else if (__value__ == (424488i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 424502i32;
                    } else {
                        _gotoNext = 424752i32;
                    };
                } else if (__value__ == (424502i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_424507 = __tmp__._0;
                        _y2_424511 = __tmp__._1;
                    };
                    return (_y1_424507 * _y2_424511 : stdgo.GoFloat64);
                    _gotoNext = 424752i32;
                } else if (__value__ == (424752i32)) {
                    _signgam_424752 = (1 : stdgo.GoInt);
                    {
                        _ip_424770 = (_p_424463 : stdgo.GoInt64);
                        if ((_ip_424770 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 424796i32;
                        } else {
                            _gotoNext = 424820i32;
                        };
                    };
                } else if (__value__ == (424796i32)) {
                    _signgam_424752 = (-1 : stdgo.GoInt);
                    _gotoNext = 424820i32;
                } else if (__value__ == (424820i32)) {
                    _z_424820 = (_q_424450 - _p_424463 : stdgo.GoFloat64);
                    if ((_z_424820 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 424844i32;
                    } else {
                        _gotoNext = 424878i32;
                    };
                } else if (__value__ == (424844i32)) {
                    _p_424463 = (_p_424463 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_424820 = (_q_424450 - _p_424463 : stdgo.GoFloat64);
                    _gotoNext = 424878i32;
                } else if (__value__ == (424878i32)) {
                    _z_424820 = (_q_424450 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_424820 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_424820 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 424908i32;
                    } else {
                        _gotoNext = 424939i32;
                    };
                } else if (__value__ == (424908i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_424752);
                    _gotoNext = 424939i32;
                } else if (__value__ == (424939i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_424450);
                        _sq1_424939 = __tmp__._0;
                        _sq2_424944 = __tmp__._1;
                    };
                    _absz_424965 = stdgo._internal.math.Math_abs.abs(_z_424820);
                    _d_424982 = ((_absz_424965 * _sq1_424939 : stdgo.GoFloat64) * _sq2_424944 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_424982, (0 : stdgo.GoInt))) {
                        _gotoNext = 425021i32;
                    } else {
                        _gotoNext = 425061i32;
                    };
                } else if (__value__ == (425021i32)) {
                    _z_424820 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_424965 : stdgo.GoFloat64) / _sq1_424939 : stdgo.GoFloat64) / _sq2_424944 : stdgo.GoFloat64);
                    _gotoNext = 425083i32;
                } else if (__value__ == (425061i32)) {
                    _gotoNext = 425061i32;
                    _z_424820 = ((3.141592653589793 : stdgo.GoFloat64) / _d_424982 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 425083i32;
                } else if (__value__ == (425083i32)) {
                    return ((_signgam_424752 : stdgo.GoFloat64) * _z_424820 : stdgo.GoFloat64);
                    _gotoNext = 425136i32;
                } else if (__value__ == (425136i32)) {
                    _z_425136 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 425146i32;
                } else if (__value__ == (425146i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425157i32;
                    } else {
                        _gotoNext = 425187i32;
                    };
                } else if (__value__ == (425157i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_425136 = (_z_425136 * _x : stdgo.GoFloat64);
                    _gotoNext = 425146i32;
                } else if (__value__ == (425187i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 425187i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425197i32;
                    } else {
                        _gotoNext = 425263i32;
                    };
                } else if (__value__ == (425197i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425215i32;
                    } else {
                        _gotoNext = 425237i32;
                    };
                } else if (__value__ == (425215i32)) {
                    _gotoNext = 425593i32;
                } else if (__value__ == (425237i32)) {
                    _z_425136 = (_z_425136 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 425187i32;
                } else if (__value__ == (425263i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 425263i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425273i32;
                    } else {
                        _gotoNext = 425339i32;
                    };
                } else if (__value__ == (425273i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425290i32;
                    } else {
                        _gotoNext = 425312i32;
                    };
                } else if (__value__ == (425290i32)) {
                    _gotoNext = 425593i32;
                } else if (__value__ == (425312i32)) {
                    _z_425136 = (_z_425136 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 425263i32;
                } else if (__value__ == (425339i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 425349i32;
                    } else {
                        _gotoNext = 425367i32;
                    };
                } else if (__value__ == (425349i32)) {
                    return _z_425136;
                    _gotoNext = 425367i32;
                } else if (__value__ == (425367i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_424463 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_424450 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_425136 * _p_424463 : stdgo.GoFloat64) / _q_424450 : stdgo.GoFloat64);
                    _gotoNext = 425593i32;
                } else if (__value__ == (425593i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 425611i32;
                    } else {
                        _gotoNext = 425633i32;
                    };
                } else if (__value__ == (425611i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 425633i32;
                } else if (__value__ == (425633i32)) {
                    return (_z_425136 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
