package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_451721;
        var _z_452678:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_452507:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_452362:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_452049:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_451992:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_452053:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_452294:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq2_452486:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_452481:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_452005:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_452524:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_452312:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_451721 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 451812i32;
                } else if (__value__ == (451812i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 451822i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 451884i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 451919i32;
                    } else {
                        _gotoNext = 451992i32;
                    };
                } else if (__value__ == (451822i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 451992i32;
                } else if (__value__ == (451884i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 451992i32;
                } else if (__value__ == (451919i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 451948i32;
                    } else {
                        _gotoNext = 451974i32;
                    };
                } else if (__value__ == (451948i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 451974i32;
                } else if (__value__ == (451974i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 451992i32;
                } else if (__value__ == (451992i32)) {
                    _q_451992 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_452005 = stdgo._internal.math.Math_floor.floor(_q_451992);
                    if ((_q_451992 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452030i32;
                    } else {
                        _gotoNext = 452678i32;
                    };
                } else if (__value__ == (452030i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452044i32;
                    } else {
                        _gotoNext = 452294i32;
                    };
                } else if (__value__ == (452044i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_452049 = __tmp__._0;
                        _y2_452053 = __tmp__._1;
                    };
                    return (_y1_452049 * _y2_452053 : stdgo.GoFloat64);
                    _gotoNext = 452294i32;
                } else if (__value__ == (452294i32)) {
                    _signgam_452294 = (1 : stdgo.GoInt);
                    {
                        _ip_452312 = (_p_452005 : stdgo.GoInt64);
                        if ((_ip_452312 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 452338i32;
                        } else {
                            _gotoNext = 452362i32;
                        };
                    };
                } else if (__value__ == (452338i32)) {
                    _signgam_452294 = (-1 : stdgo.GoInt);
                    _gotoNext = 452362i32;
                } else if (__value__ == (452362i32)) {
                    _z_452362 = (_q_451992 - _p_452005 : stdgo.GoFloat64);
                    if ((_z_452362 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452386i32;
                    } else {
                        _gotoNext = 452420i32;
                    };
                } else if (__value__ == (452386i32)) {
                    _p_452005 = (_p_452005 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_452362 = (_q_451992 - _p_452005 : stdgo.GoFloat64);
                    _gotoNext = 452420i32;
                } else if (__value__ == (452420i32)) {
                    _z_452362 = (_q_451992 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_452362 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_452362 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 452450i32;
                    } else {
                        _gotoNext = 452481i32;
                    };
                } else if (__value__ == (452450i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_452294);
                    _gotoNext = 452481i32;
                } else if (__value__ == (452481i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_451992);
                        _sq1_452481 = __tmp__._0;
                        _sq2_452486 = __tmp__._1;
                    };
                    _absz_452507 = stdgo._internal.math.Math_abs.abs(_z_452362);
                    _d_452524 = ((_absz_452507 * _sq1_452481 : stdgo.GoFloat64) * _sq2_452486 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_452524, (0 : stdgo.GoInt))) {
                        _gotoNext = 452563i32;
                    } else {
                        _gotoNext = 452603i32;
                    };
                } else if (__value__ == (452563i32)) {
                    _z_452362 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_452507 : stdgo.GoFloat64) / _sq1_452481 : stdgo.GoFloat64) / _sq2_452486 : stdgo.GoFloat64);
                    _gotoNext = 452625i32;
                } else if (__value__ == (452603i32)) {
                    _gotoNext = 452603i32;
                    _z_452362 = ((3.141592653589793 : stdgo.GoFloat64) / _d_452524 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 452625i32;
                } else if (__value__ == (452625i32)) {
                    return ((_signgam_452294 : stdgo.GoFloat64) * _z_452362 : stdgo.GoFloat64);
                    _gotoNext = 452678i32;
                } else if (__value__ == (452678i32)) {
                    _z_452678 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 452688i32;
                } else if (__value__ == (452688i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452699i32;
                    } else {
                        _gotoNext = 452729i32;
                    };
                } else if (__value__ == (452699i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_452678 = (_z_452678 * _x : stdgo.GoFloat64);
                    _gotoNext = 452688i32;
                } else if (__value__ == (452729i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 452729i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452739i32;
                    } else {
                        _gotoNext = 452805i32;
                    };
                } else if (__value__ == (452739i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452757i32;
                    } else {
                        _gotoNext = 452779i32;
                    };
                } else if (__value__ == (452757i32)) {
                    _gotoNext = 453135i32;
                } else if (__value__ == (452779i32)) {
                    _z_452678 = (_z_452678 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 452729i32;
                } else if (__value__ == (452805i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 452805i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452815i32;
                    } else {
                        _gotoNext = 452881i32;
                    };
                } else if (__value__ == (452815i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452832i32;
                    } else {
                        _gotoNext = 452854i32;
                    };
                } else if (__value__ == (452832i32)) {
                    _gotoNext = 453135i32;
                } else if (__value__ == (452854i32)) {
                    _z_452678 = (_z_452678 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 452805i32;
                } else if (__value__ == (452881i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 452891i32;
                    } else {
                        _gotoNext = 452909i32;
                    };
                } else if (__value__ == (452891i32)) {
                    return _z_452678;
                    _gotoNext = 452909i32;
                } else if (__value__ == (452909i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_452005 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_451992 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_452678 * _p_452005 : stdgo.GoFloat64) / _q_451992 : stdgo.GoFloat64);
                    _gotoNext = 453135i32;
                } else if (__value__ == (453135i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 453153i32;
                    } else {
                        _gotoNext = 453175i32;
                    };
                } else if (__value__ == (453153i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 453175i32;
                } else if (__value__ == (453175i32)) {
                    return (_z_452678 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
