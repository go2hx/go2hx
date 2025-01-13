package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_443584:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_443392:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_442955:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_443430:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_443413:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_442959:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_443387:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_443200:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_442898:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_443268:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_443218:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_442911:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_442627;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_442627 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 442718i32;
                } else if (__value__ == (442718i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 442728i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 442790i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 442825i32;
                    } else {
                        _gotoNext = 442898i32;
                    };
                } else if (__value__ == (442728i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 442898i32;
                } else if (__value__ == (442790i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 442898i32;
                } else if (__value__ == (442825i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 442854i32;
                    } else {
                        _gotoNext = 442880i32;
                    };
                } else if (__value__ == (442854i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 442880i32;
                } else if (__value__ == (442880i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 442898i32;
                } else if (__value__ == (442898i32)) {
                    _q_442898 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_442911 = stdgo._internal.math.Math_floor.floor(_q_442898);
                    if ((_q_442898 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442936i32;
                    } else {
                        _gotoNext = 443584i32;
                    };
                } else if (__value__ == (442936i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442950i32;
                    } else {
                        _gotoNext = 443200i32;
                    };
                } else if (__value__ == (442950i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_442955 = __tmp__._0;
                        _y2_442959 = __tmp__._1;
                    };
                    return (_y1_442955 * _y2_442959 : stdgo.GoFloat64);
                    _gotoNext = 443200i32;
                } else if (__value__ == (443200i32)) {
                    _signgam_443200 = (1 : stdgo.GoInt);
                    {
                        _ip_443218 = (_p_442911 : stdgo.GoInt64);
                        if ((_ip_443218 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 443244i32;
                        } else {
                            _gotoNext = 443268i32;
                        };
                    };
                } else if (__value__ == (443244i32)) {
                    _signgam_443200 = (-1 : stdgo.GoInt);
                    _gotoNext = 443268i32;
                } else if (__value__ == (443268i32)) {
                    _z_443268 = (_q_442898 - _p_442911 : stdgo.GoFloat64);
                    if ((_z_443268 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443292i32;
                    } else {
                        _gotoNext = 443326i32;
                    };
                } else if (__value__ == (443292i32)) {
                    _p_442911 = (_p_442911 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_443268 = (_q_442898 - _p_442911 : stdgo.GoFloat64);
                    _gotoNext = 443326i32;
                } else if (__value__ == (443326i32)) {
                    _z_443268 = (_q_442898 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_443268 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_443268 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 443356i32;
                    } else {
                        _gotoNext = 443387i32;
                    };
                } else if (__value__ == (443356i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_443200);
                    _gotoNext = 443387i32;
                } else if (__value__ == (443387i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_442898);
                        _sq1_443387 = __tmp__._0;
                        _sq2_443392 = __tmp__._1;
                    };
                    _absz_443413 = stdgo._internal.math.Math_abs.abs(_z_443268);
                    _d_443430 = ((_absz_443413 * _sq1_443387 : stdgo.GoFloat64) * _sq2_443392 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_443430, (0 : stdgo.GoInt))) {
                        _gotoNext = 443469i32;
                    } else {
                        _gotoNext = 443509i32;
                    };
                } else if (__value__ == (443469i32)) {
                    _z_443268 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_443413 : stdgo.GoFloat64) / _sq1_443387 : stdgo.GoFloat64) / _sq2_443392 : stdgo.GoFloat64);
                    _gotoNext = 443531i32;
                } else if (__value__ == (443509i32)) {
                    _gotoNext = 443509i32;
                    _z_443268 = ((3.141592653589793 : stdgo.GoFloat64) / _d_443430 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 443531i32;
                } else if (__value__ == (443531i32)) {
                    return ((_signgam_443200 : stdgo.GoFloat64) * _z_443268 : stdgo.GoFloat64);
                    _gotoNext = 443584i32;
                } else if (__value__ == (443584i32)) {
                    _z_443584 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 443594i32;
                } else if (__value__ == (443594i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443605i32;
                    } else {
                        _gotoNext = 443635i32;
                    };
                } else if (__value__ == (443605i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_443584 = (_z_443584 * _x : stdgo.GoFloat64);
                    _gotoNext = 443594i32;
                } else if (__value__ == (443635i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 443635i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443645i32;
                    } else {
                        _gotoNext = 443711i32;
                    };
                } else if (__value__ == (443645i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443663i32;
                    } else {
                        _gotoNext = 443685i32;
                    };
                } else if (__value__ == (443663i32)) {
                    _gotoNext = 444041i32;
                } else if (__value__ == (443685i32)) {
                    _z_443584 = (_z_443584 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 443635i32;
                } else if (__value__ == (443711i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 443711i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443721i32;
                    } else {
                        _gotoNext = 443787i32;
                    };
                } else if (__value__ == (443721i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443738i32;
                    } else {
                        _gotoNext = 443760i32;
                    };
                } else if (__value__ == (443738i32)) {
                    _gotoNext = 444041i32;
                } else if (__value__ == (443760i32)) {
                    _z_443584 = (_z_443584 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 443711i32;
                } else if (__value__ == (443787i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 443797i32;
                    } else {
                        _gotoNext = 443815i32;
                    };
                } else if (__value__ == (443797i32)) {
                    return _z_443584;
                    _gotoNext = 443815i32;
                } else if (__value__ == (443815i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_442911 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_442898 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_443584 * _p_442911 : stdgo.GoFloat64) / _q_442898 : stdgo.GoFloat64);
                    _gotoNext = 444041i32;
                } else if (__value__ == (444041i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 444059i32;
                    } else {
                        _gotoNext = 444081i32;
                    };
                } else if (__value__ == (444059i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 444081i32;
                } else if (__value__ == (444081i32)) {
                    return (_z_443584 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
