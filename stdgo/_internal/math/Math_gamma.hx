package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _q_571542:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_572228:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_572074:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_571844:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_571603:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_572057:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_572031:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_571599:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_572036:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_571271;
        var _z_571912:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_571862:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_571555:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_571271 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 571362i32;
                } else if (__value__ == (571362i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 571372i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 571434i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 571469i32;
                    } else {
                        _gotoNext = 571542i32;
                    };
                } else if (__value__ == (571372i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 571542i32;
                } else if (__value__ == (571434i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 571542i32;
                } else if (__value__ == (571469i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 571498i32;
                    } else {
                        _gotoNext = 571524i32;
                    };
                } else if (__value__ == (571498i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 571524i32;
                } else if (__value__ == (571524i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 571542i32;
                } else if (__value__ == (571542i32)) {
                    _q_571542 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_571555 = stdgo._internal.math.Math_floor.floor(_q_571542);
                    if ((_q_571542 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 571580i32;
                    } else {
                        _gotoNext = 572228i32;
                    };
                } else if (__value__ == (571580i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 571594i32;
                    } else {
                        _gotoNext = 571844i32;
                    };
                } else if (__value__ == (571594i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_571599 = __tmp__._0;
                        _y2_571603 = __tmp__._1;
                    };
                    return (_y1_571599 * _y2_571603 : stdgo.GoFloat64);
                    _gotoNext = 571844i32;
                } else if (__value__ == (571844i32)) {
                    _signgam_571844 = (1 : stdgo.GoInt);
                    {
                        _ip_571862 = (_p_571555 : stdgo.GoInt64);
                        if ((_ip_571862 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 571888i32;
                        } else {
                            _gotoNext = 571912i32;
                        };
                    };
                } else if (__value__ == (571888i32)) {
                    _signgam_571844 = (-1 : stdgo.GoInt);
                    _gotoNext = 571912i32;
                } else if (__value__ == (571912i32)) {
                    _z_571912 = (_q_571542 - _p_571555 : stdgo.GoFloat64);
                    if ((_z_571912 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 571936i32;
                    } else {
                        _gotoNext = 571970i32;
                    };
                } else if (__value__ == (571936i32)) {
                    _p_571555 = (_p_571555 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_571912 = (_q_571542 - _p_571555 : stdgo.GoFloat64);
                    _gotoNext = 571970i32;
                } else if (__value__ == (571970i32)) {
                    _z_571912 = (_q_571542 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_571912 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_571912 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 572000i32;
                    } else {
                        _gotoNext = 572031i32;
                    };
                } else if (__value__ == (572000i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_571844);
                    _gotoNext = 572031i32;
                } else if (__value__ == (572031i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_571542);
                        _sq1_572031 = __tmp__._0;
                        _sq2_572036 = __tmp__._1;
                    };
                    _absz_572057 = stdgo._internal.math.Math_abs.abs(_z_571912);
                    _d_572074 = ((_absz_572057 * _sq1_572031 : stdgo.GoFloat64) * _sq2_572036 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_572074, (0 : stdgo.GoInt))) {
                        _gotoNext = 572113i32;
                    } else {
                        _gotoNext = 572153i32;
                    };
                } else if (__value__ == (572113i32)) {
                    _z_571912 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_572057 : stdgo.GoFloat64) / _sq1_572031 : stdgo.GoFloat64) / _sq2_572036 : stdgo.GoFloat64);
                    _gotoNext = 572175i32;
                } else if (__value__ == (572153i32)) {
                    _gotoNext = 572153i32;
                    _z_571912 = ((3.141592653589793 : stdgo.GoFloat64) / _d_572074 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 572175i32;
                } else if (__value__ == (572175i32)) {
                    return ((_signgam_571844 : stdgo.GoFloat64) * _z_571912 : stdgo.GoFloat64);
                    _gotoNext = 572228i32;
                } else if (__value__ == (572228i32)) {
                    _z_572228 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 572238i32;
                } else if (__value__ == (572238i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 572249i32;
                    } else {
                        _gotoNext = 572279i32;
                    };
                } else if (__value__ == (572249i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_572228 = (_z_572228 * _x : stdgo.GoFloat64);
                    _gotoNext = 572238i32;
                } else if (__value__ == (572279i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 572279i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 572289i32;
                    } else {
                        _gotoNext = 572355i32;
                    };
                } else if (__value__ == (572289i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 572307i32;
                    } else {
                        _gotoNext = 572329i32;
                    };
                } else if (__value__ == (572307i32)) {
                    _gotoNext = 572685i32;
                } else if (__value__ == (572329i32)) {
                    _z_572228 = (_z_572228 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 572279i32;
                } else if (__value__ == (572355i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 572355i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 572365i32;
                    } else {
                        _gotoNext = 572431i32;
                    };
                } else if (__value__ == (572365i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 572382i32;
                    } else {
                        _gotoNext = 572404i32;
                    };
                } else if (__value__ == (572382i32)) {
                    _gotoNext = 572685i32;
                } else if (__value__ == (572404i32)) {
                    _z_572228 = (_z_572228 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 572355i32;
                } else if (__value__ == (572431i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 572441i32;
                    } else {
                        _gotoNext = 572459i32;
                    };
                } else if (__value__ == (572441i32)) {
                    return _z_572228;
                    _gotoNext = 572459i32;
                } else if (__value__ == (572459i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_571555 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_571542 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_572228 * _p_571555 : stdgo.GoFloat64) / _q_571542 : stdgo.GoFloat64);
                    _gotoNext = 572685i32;
                } else if (__value__ == (572685i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 572703i32;
                    } else {
                        _gotoNext = 572725i32;
                    };
                } else if (__value__ == (572703i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 572725i32;
                } else if (__value__ == (572725i32)) {
                    return (_z_572228 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
