package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_423475:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _sq2_423649:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_423216:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_423168:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_423670:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_423457:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_423212:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_423155:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_422884;
        var _z_423841:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_423687:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_423644:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_423525:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_422884 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 422975i32;
                } else if (__value__ == (422975i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 422985i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 423047i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 423082i32;
                    } else {
                        _gotoNext = 423155i32;
                    };
                } else if (__value__ == (422985i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 423155i32;
                } else if (__value__ == (423047i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 423155i32;
                } else if (__value__ == (423082i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 423111i32;
                    } else {
                        _gotoNext = 423137i32;
                    };
                } else if (__value__ == (423111i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 423137i32;
                } else if (__value__ == (423137i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 423155i32;
                } else if (__value__ == (423155i32)) {
                    _q_423155 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_423168 = stdgo._internal.math.Math_floor.floor(_q_423155);
                    if ((_q_423155 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423193i32;
                    } else {
                        _gotoNext = 423841i32;
                    };
                } else if (__value__ == (423193i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423207i32;
                    } else {
                        _gotoNext = 423457i32;
                    };
                } else if (__value__ == (423207i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_423212 = __tmp__._0;
                        _y2_423216 = __tmp__._1;
                    };
                    return (_y1_423212 * _y2_423216 : stdgo.GoFloat64);
                    _gotoNext = 423457i32;
                } else if (__value__ == (423457i32)) {
                    _signgam_423457 = (1 : stdgo.GoInt);
                    {
                        _ip_423475 = (_p_423168 : stdgo.GoInt64);
                        if ((_ip_423475 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 423501i32;
                        } else {
                            _gotoNext = 423525i32;
                        };
                    };
                } else if (__value__ == (423501i32)) {
                    _signgam_423457 = (-1 : stdgo.GoInt);
                    _gotoNext = 423525i32;
                } else if (__value__ == (423525i32)) {
                    _z_423525 = (_q_423155 - _p_423168 : stdgo.GoFloat64);
                    if ((_z_423525 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423549i32;
                    } else {
                        _gotoNext = 423583i32;
                    };
                } else if (__value__ == (423549i32)) {
                    _p_423168 = (_p_423168 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_423525 = (_q_423155 - _p_423168 : stdgo.GoFloat64);
                    _gotoNext = 423583i32;
                } else if (__value__ == (423583i32)) {
                    _z_423525 = (_q_423155 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_423525 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_423525 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 423613i32;
                    } else {
                        _gotoNext = 423644i32;
                    };
                } else if (__value__ == (423613i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_423457);
                    _gotoNext = 423644i32;
                } else if (__value__ == (423644i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_423155);
                        _sq1_423644 = __tmp__._0;
                        _sq2_423649 = __tmp__._1;
                    };
                    _absz_423670 = stdgo._internal.math.Math_abs.abs(_z_423525);
                    _d_423687 = ((_absz_423670 * _sq1_423644 : stdgo.GoFloat64) * _sq2_423649 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_423687, (0 : stdgo.GoInt))) {
                        _gotoNext = 423726i32;
                    } else {
                        _gotoNext = 423766i32;
                    };
                } else if (__value__ == (423726i32)) {
                    _z_423525 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_423670 : stdgo.GoFloat64) / _sq1_423644 : stdgo.GoFloat64) / _sq2_423649 : stdgo.GoFloat64);
                    _gotoNext = 423788i32;
                } else if (__value__ == (423766i32)) {
                    _gotoNext = 423766i32;
                    _z_423525 = ((3.141592653589793 : stdgo.GoFloat64) / _d_423687 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 423788i32;
                } else if (__value__ == (423788i32)) {
                    return ((_signgam_423457 : stdgo.GoFloat64) * _z_423525 : stdgo.GoFloat64);
                    _gotoNext = 423841i32;
                } else if (__value__ == (423841i32)) {
                    _z_423841 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 423851i32;
                } else if (__value__ == (423851i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423862i32;
                    } else {
                        _gotoNext = 423892i32;
                    };
                } else if (__value__ == (423862i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_423841 = (_z_423841 * _x : stdgo.GoFloat64);
                    _gotoNext = 423851i32;
                } else if (__value__ == (423892i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 423892i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423902i32;
                    } else {
                        _gotoNext = 423968i32;
                    };
                } else if (__value__ == (423902i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423920i32;
                    } else {
                        _gotoNext = 423942i32;
                    };
                } else if (__value__ == (423920i32)) {
                    _gotoNext = 424298i32;
                } else if (__value__ == (423942i32)) {
                    _z_423841 = (_z_423841 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 423892i32;
                } else if (__value__ == (423968i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 423968i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423978i32;
                    } else {
                        _gotoNext = 424044i32;
                    };
                } else if (__value__ == (423978i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423995i32;
                    } else {
                        _gotoNext = 424017i32;
                    };
                } else if (__value__ == (423995i32)) {
                    _gotoNext = 424298i32;
                } else if (__value__ == (424017i32)) {
                    _z_423841 = (_z_423841 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 423968i32;
                } else if (__value__ == (424044i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 424054i32;
                    } else {
                        _gotoNext = 424072i32;
                    };
                } else if (__value__ == (424054i32)) {
                    return _z_423841;
                    _gotoNext = 424072i32;
                } else if (__value__ == (424072i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_423168 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_423155 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_423841 * _p_423168 : stdgo.GoFloat64) / _q_423155 : stdgo.GoFloat64);
                    _gotoNext = 424298i32;
                } else if (__value__ == (424298i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 424316i32;
                    } else {
                        _gotoNext = 424338i32;
                    };
                } else if (__value__ == (424316i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 424338i32;
                } else if (__value__ == (424338i32)) {
                    return (_z_423841 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
