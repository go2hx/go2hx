package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_306753:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _z_307119:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_306922:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_306433:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_306494:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_306490:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_306446:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_306162;
        var _z_306803:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_306735:stdgo.GoInt = (0 : stdgo.GoInt);
        var _d_306965:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_306948:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_306927:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_306162 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 306253i32;
                } else if (__value__ == (306253i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 306263i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 306325i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 306360i32;
                    } else {
                        _gotoNext = 306433i32;
                    };
                } else if (__value__ == (306263i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 306433i32;
                } else if (__value__ == (306325i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 306433i32;
                } else if (__value__ == (306360i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 306389i32;
                    } else {
                        _gotoNext = 306415i32;
                    };
                } else if (__value__ == (306389i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 306415i32;
                } else if (__value__ == (306415i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 306433i32;
                } else if (__value__ == (306433i32)) {
                    _q_306433 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_306446 = stdgo._internal.math.Math_floor.floor(_q_306433);
                    if ((_q_306433 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 306471i32;
                    } else {
                        _gotoNext = 307119i32;
                    };
                } else if (__value__ == (306471i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 306485i32;
                    } else {
                        _gotoNext = 306735i32;
                    };
                } else if (__value__ == (306485i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_306490 = __tmp__._0;
                        _y2_306494 = __tmp__._1;
                    };
                    return (_y1_306490 * _y2_306494 : stdgo.GoFloat64);
                    _gotoNext = 306735i32;
                } else if (__value__ == (306735i32)) {
                    _signgam_306735 = (1 : stdgo.GoInt);
                    {
                        _ip_306753 = (_p_306446 : stdgo.GoInt64);
                        if ((_ip_306753 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 306779i32;
                        } else {
                            _gotoNext = 306803i32;
                        };
                    };
                } else if (__value__ == (306779i32)) {
                    _signgam_306735 = (-1 : stdgo.GoInt);
                    _gotoNext = 306803i32;
                } else if (__value__ == (306803i32)) {
                    _z_306803 = (_q_306433 - _p_306446 : stdgo.GoFloat64);
                    if ((_z_306803 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 306827i32;
                    } else {
                        _gotoNext = 306861i32;
                    };
                } else if (__value__ == (306827i32)) {
                    _p_306446 = (_p_306446 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_306803 = (_q_306433 - _p_306446 : stdgo.GoFloat64);
                    _gotoNext = 306861i32;
                } else if (__value__ == (306861i32)) {
                    _z_306803 = (_q_306433 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_306803 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_306803 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 306891i32;
                    } else {
                        _gotoNext = 306922i32;
                    };
                } else if (__value__ == (306891i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_306735);
                    _gotoNext = 306922i32;
                } else if (__value__ == (306922i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_306433);
                        _sq1_306922 = __tmp__._0;
                        _sq2_306927 = __tmp__._1;
                    };
                    _absz_306948 = stdgo._internal.math.Math_abs.abs(_z_306803);
                    _d_306965 = ((_absz_306948 * _sq1_306922 : stdgo.GoFloat64) * _sq2_306927 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_306965, (0 : stdgo.GoInt))) {
                        _gotoNext = 307004i32;
                    } else {
                        _gotoNext = 307044i32;
                    };
                } else if (__value__ == (307004i32)) {
                    _z_306803 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_306948 : stdgo.GoFloat64) / _sq1_306922 : stdgo.GoFloat64) / _sq2_306927 : stdgo.GoFloat64);
                    _gotoNext = 307066i32;
                } else if (__value__ == (307044i32)) {
                    _z_306803 = ((3.141592653589793 : stdgo.GoFloat64) / _d_306965 : stdgo.GoFloat64);
                    _gotoNext = 307066i32;
                } else if (__value__ == (307066i32)) {
                    return ((_signgam_306735 : stdgo.GoFloat64) * _z_306803 : stdgo.GoFloat64);
                    _gotoNext = 307119i32;
                } else if (__value__ == (307119i32)) {
                    _z_307119 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 307129i32;
                } else if (__value__ == (307129i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 307140i32;
                    } else {
                        _gotoNext = 307170i32;
                    };
                } else if (__value__ == (307140i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_307119 = (_z_307119 * _x : stdgo.GoFloat64);
                    _gotoNext = 307129i32;
                } else if (__value__ == (307170i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 307170i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 307180i32;
                    } else {
                        _gotoNext = 307246i32;
                    };
                } else if (__value__ == (307180i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 307198i32;
                    } else {
                        _gotoNext = 307220i32;
                    };
                } else if (__value__ == (307198i32)) {
                    _gotoNext = 307576i32;
                } else if (__value__ == (307220i32)) {
                    _z_307119 = (_z_307119 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 307170i32;
                } else if (__value__ == (307246i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 307246i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 307256i32;
                    } else {
                        _gotoNext = 307322i32;
                    };
                } else if (__value__ == (307256i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 307273i32;
                    } else {
                        _gotoNext = 307295i32;
                    };
                } else if (__value__ == (307273i32)) {
                    _gotoNext = 307576i32;
                } else if (__value__ == (307295i32)) {
                    _z_307119 = (_z_307119 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 307246i32;
                } else if (__value__ == (307322i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 307332i32;
                    } else {
                        _gotoNext = 307350i32;
                    };
                } else if (__value__ == (307332i32)) {
                    return _z_307119;
                    _gotoNext = 307350i32;
                } else if (__value__ == (307350i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_306446 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_306433 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_307119 * _p_306446 : stdgo.GoFloat64) / _q_306433 : stdgo.GoFloat64);
                    _gotoNext = 307576i32;
                } else if (__value__ == (307576i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 307594i32;
                    } else {
                        _gotoNext = 307616i32;
                    };
                } else if (__value__ == (307594i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 307616i32;
                } else if (__value__ == (307616i32)) {
                    return (_z_307119 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
