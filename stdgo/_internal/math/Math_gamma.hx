package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_324721:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_324401:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_325087:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_324916:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_324890:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_324462:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_324458:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_324895:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_324414:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_324933:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_324771:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_324703:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_324130;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_324130 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 324221i32;
                } else if (__value__ == (324221i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 324231i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 324293i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 324328i32;
                    } else {
                        _gotoNext = 324401i32;
                    };
                } else if (__value__ == (324231i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 324401i32;
                } else if (__value__ == (324293i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 324401i32;
                } else if (__value__ == (324328i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 324357i32;
                    } else {
                        _gotoNext = 324383i32;
                    };
                } else if (__value__ == (324357i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 324383i32;
                } else if (__value__ == (324383i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 324401i32;
                } else if (__value__ == (324401i32)) {
                    _q_324401 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_324414 = stdgo._internal.math.Math_floor.floor(_q_324401);
                    if ((_q_324401 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 324439i32;
                    } else {
                        _gotoNext = 325087i32;
                    };
                } else if (__value__ == (324439i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 324453i32;
                    } else {
                        _gotoNext = 324703i32;
                    };
                } else if (__value__ == (324453i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_324458 = __tmp__._0;
                        _y2_324462 = __tmp__._1;
                    };
                    return (_y1_324458 * _y2_324462 : stdgo.GoFloat64);
                    _gotoNext = 324703i32;
                } else if (__value__ == (324703i32)) {
                    _signgam_324703 = (1 : stdgo.GoInt);
                    {
                        _ip_324721 = (_p_324414 : stdgo.GoInt64);
                        if ((_ip_324721 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 324747i32;
                        } else {
                            _gotoNext = 324771i32;
                        };
                    };
                } else if (__value__ == (324747i32)) {
                    _signgam_324703 = (-1 : stdgo.GoInt);
                    _gotoNext = 324771i32;
                } else if (__value__ == (324771i32)) {
                    _z_324771 = (_q_324401 - _p_324414 : stdgo.GoFloat64);
                    if ((_z_324771 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 324795i32;
                    } else {
                        _gotoNext = 324829i32;
                    };
                } else if (__value__ == (324795i32)) {
                    _p_324414 = (_p_324414 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_324771 = (_q_324401 - _p_324414 : stdgo.GoFloat64);
                    _gotoNext = 324829i32;
                } else if (__value__ == (324829i32)) {
                    _z_324771 = (_q_324401 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_324771 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_324771 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 324859i32;
                    } else {
                        _gotoNext = 324890i32;
                    };
                } else if (__value__ == (324859i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_324703);
                    _gotoNext = 324890i32;
                } else if (__value__ == (324890i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_324401);
                        _sq1_324890 = __tmp__._0;
                        _sq2_324895 = __tmp__._1;
                    };
                    _absz_324916 = stdgo._internal.math.Math_abs.abs(_z_324771);
                    _d_324933 = ((_absz_324916 * _sq1_324890 : stdgo.GoFloat64) * _sq2_324895 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_324933, (0 : stdgo.GoInt))) {
                        _gotoNext = 324972i32;
                    } else {
                        _gotoNext = 325012i32;
                    };
                } else if (__value__ == (324972i32)) {
                    _z_324771 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_324916 : stdgo.GoFloat64) / _sq1_324890 : stdgo.GoFloat64) / _sq2_324895 : stdgo.GoFloat64);
                    _gotoNext = 325034i32;
                } else if (__value__ == (325012i32)) {
                    _gotoNext = 325012i32;
                    _z_324771 = ((3.141592653589793 : stdgo.GoFloat64) / _d_324933 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 325034i32;
                } else if (__value__ == (325034i32)) {
                    return ((_signgam_324703 : stdgo.GoFloat64) * _z_324771 : stdgo.GoFloat64);
                    _gotoNext = 325087i32;
                } else if (__value__ == (325087i32)) {
                    _z_325087 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 325097i32;
                } else if (__value__ == (325097i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 325108i32;
                    } else {
                        _gotoNext = 325138i32;
                    };
                } else if (__value__ == (325108i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_325087 = (_z_325087 * _x : stdgo.GoFloat64);
                    _gotoNext = 325097i32;
                } else if (__value__ == (325138i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 325138i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 325148i32;
                    } else {
                        _gotoNext = 325214i32;
                    };
                } else if (__value__ == (325148i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 325166i32;
                    } else {
                        _gotoNext = 325188i32;
                    };
                } else if (__value__ == (325166i32)) {
                    _gotoNext = 325544i32;
                } else if (__value__ == (325188i32)) {
                    _z_325087 = (_z_325087 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 325138i32;
                } else if (__value__ == (325214i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 325214i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 325224i32;
                    } else {
                        _gotoNext = 325290i32;
                    };
                } else if (__value__ == (325224i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 325241i32;
                    } else {
                        _gotoNext = 325263i32;
                    };
                } else if (__value__ == (325241i32)) {
                    _gotoNext = 325544i32;
                } else if (__value__ == (325263i32)) {
                    _z_325087 = (_z_325087 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 325214i32;
                } else if (__value__ == (325290i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 325300i32;
                    } else {
                        _gotoNext = 325318i32;
                    };
                } else if (__value__ == (325300i32)) {
                    return _z_325087;
                    _gotoNext = 325318i32;
                } else if (__value__ == (325318i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_324414 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_324401 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_325087 * _p_324414 : stdgo.GoFloat64) / _q_324401 : stdgo.GoFloat64);
                    _gotoNext = 325544i32;
                } else if (__value__ == (325544i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 325562i32;
                    } else {
                        _gotoNext = 325584i32;
                    };
                } else if (__value__ == (325562i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 325584i32;
                } else if (__value__ == (325584i32)) {
                    return (_z_325087 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
