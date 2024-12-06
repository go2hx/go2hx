package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_350361:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_350344:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_350323:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_350318:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_350131:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_350199:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_350149:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_349886:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_349842:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_349829:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_350515:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_349890:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_349558;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_349558 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 349649i32;
                } else if (__value__ == (349649i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 349659i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 349721i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 349756i32;
                    } else {
                        _gotoNext = 349829i32;
                    };
                } else if (__value__ == (349659i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 349829i32;
                } else if (__value__ == (349721i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 349829i32;
                } else if (__value__ == (349756i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 349785i32;
                    } else {
                        _gotoNext = 349811i32;
                    };
                } else if (__value__ == (349785i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 349811i32;
                } else if (__value__ == (349811i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 349829i32;
                } else if (__value__ == (349829i32)) {
                    _q_349829 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_349842 = stdgo._internal.math.Math_floor.floor(_q_349829);
                    if ((_q_349829 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 349867i32;
                    } else {
                        _gotoNext = 350515i32;
                    };
                } else if (__value__ == (349867i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 349881i32;
                    } else {
                        _gotoNext = 350131i32;
                    };
                } else if (__value__ == (349881i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_349886 = __tmp__._0;
                        _y2_349890 = __tmp__._1;
                    };
                    return (_y1_349886 * _y2_349890 : stdgo.GoFloat64);
                    _gotoNext = 350131i32;
                } else if (__value__ == (350131i32)) {
                    _signgam_350131 = (1 : stdgo.GoInt);
                    {
                        _ip_350149 = (_p_349842 : stdgo.GoInt64);
                        if ((_ip_350149 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 350175i32;
                        } else {
                            _gotoNext = 350199i32;
                        };
                    };
                } else if (__value__ == (350175i32)) {
                    _signgam_350131 = (-1 : stdgo.GoInt);
                    _gotoNext = 350199i32;
                } else if (__value__ == (350199i32)) {
                    _z_350199 = (_q_349829 - _p_349842 : stdgo.GoFloat64);
                    if ((_z_350199 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 350223i32;
                    } else {
                        _gotoNext = 350257i32;
                    };
                } else if (__value__ == (350223i32)) {
                    _p_349842 = (_p_349842 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_350199 = (_q_349829 - _p_349842 : stdgo.GoFloat64);
                    _gotoNext = 350257i32;
                } else if (__value__ == (350257i32)) {
                    _z_350199 = (_q_349829 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_350199 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_350199 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 350287i32;
                    } else {
                        _gotoNext = 350318i32;
                    };
                } else if (__value__ == (350287i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_350131);
                    _gotoNext = 350318i32;
                } else if (__value__ == (350318i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_349829);
                        _sq1_350318 = __tmp__._0;
                        _sq2_350323 = __tmp__._1;
                    };
                    _absz_350344 = stdgo._internal.math.Math_abs.abs(_z_350199);
                    _d_350361 = ((_absz_350344 * _sq1_350318 : stdgo.GoFloat64) * _sq2_350323 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_350361, (0 : stdgo.GoInt))) {
                        _gotoNext = 350400i32;
                    } else {
                        _gotoNext = 350440i32;
                    };
                } else if (__value__ == (350400i32)) {
                    _z_350199 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_350344 : stdgo.GoFloat64) / _sq1_350318 : stdgo.GoFloat64) / _sq2_350323 : stdgo.GoFloat64);
                    _gotoNext = 350462i32;
                } else if (__value__ == (350440i32)) {
                    _gotoNext = 350440i32;
                    _z_350199 = ((3.141592653589793 : stdgo.GoFloat64) / _d_350361 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 350462i32;
                } else if (__value__ == (350462i32)) {
                    return ((_signgam_350131 : stdgo.GoFloat64) * _z_350199 : stdgo.GoFloat64);
                    _gotoNext = 350515i32;
                } else if (__value__ == (350515i32)) {
                    _z_350515 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 350525i32;
                } else if (__value__ == (350525i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 350536i32;
                    } else {
                        _gotoNext = 350566i32;
                    };
                } else if (__value__ == (350536i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_350515 = (_z_350515 * _x : stdgo.GoFloat64);
                    _gotoNext = 350525i32;
                } else if (__value__ == (350566i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 350566i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 350576i32;
                    } else {
                        _gotoNext = 350642i32;
                    };
                } else if (__value__ == (350576i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 350594i32;
                    } else {
                        _gotoNext = 350616i32;
                    };
                } else if (__value__ == (350594i32)) {
                    _gotoNext = 350972i32;
                } else if (__value__ == (350616i32)) {
                    _z_350515 = (_z_350515 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 350566i32;
                } else if (__value__ == (350642i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 350642i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 350652i32;
                    } else {
                        _gotoNext = 350718i32;
                    };
                } else if (__value__ == (350652i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 350669i32;
                    } else {
                        _gotoNext = 350691i32;
                    };
                } else if (__value__ == (350669i32)) {
                    _gotoNext = 350972i32;
                } else if (__value__ == (350691i32)) {
                    _z_350515 = (_z_350515 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 350642i32;
                } else if (__value__ == (350718i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 350728i32;
                    } else {
                        _gotoNext = 350746i32;
                    };
                } else if (__value__ == (350728i32)) {
                    return _z_350515;
                    _gotoNext = 350746i32;
                } else if (__value__ == (350746i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_349842 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_349829 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_350515 * _p_349842 : stdgo.GoFloat64) / _q_349829 : stdgo.GoFloat64);
                    _gotoNext = 350972i32;
                } else if (__value__ == (350972i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 350990i32;
                    } else {
                        _gotoNext = 351012i32;
                    };
                } else if (__value__ == (350990i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 351012i32;
                } else if (__value__ == (351012i32)) {
                    return (_z_350515 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
