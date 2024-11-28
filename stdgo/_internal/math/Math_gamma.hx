package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_562465:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_562294:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_562273:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_562149:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_562099:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_562081:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_561792:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_562311:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_562268:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_561508;
        var _y2_561840:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_561836:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_561779:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_561508 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 561599i32;
                } else if (__value__ == (561599i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 561609i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 561671i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 561706i32;
                    } else {
                        _gotoNext = 561779i32;
                    };
                } else if (__value__ == (561609i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 561779i32;
                } else if (__value__ == (561671i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 561779i32;
                } else if (__value__ == (561706i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 561735i32;
                    } else {
                        _gotoNext = 561761i32;
                    };
                } else if (__value__ == (561735i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 561761i32;
                } else if (__value__ == (561761i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 561779i32;
                } else if (__value__ == (561779i32)) {
                    _q_561779 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_561792 = stdgo._internal.math.Math_floor.floor(_q_561779);
                    if ((_q_561779 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 561817i32;
                    } else {
                        _gotoNext = 562465i32;
                    };
                } else if (__value__ == (561817i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 561831i32;
                    } else {
                        _gotoNext = 562081i32;
                    };
                } else if (__value__ == (561831i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_561836 = __tmp__._0;
                        _y2_561840 = __tmp__._1;
                    };
                    return (_y1_561836 * _y2_561840 : stdgo.GoFloat64);
                    _gotoNext = 562081i32;
                } else if (__value__ == (562081i32)) {
                    _signgam_562081 = (1 : stdgo.GoInt);
                    {
                        _ip_562099 = (_p_561792 : stdgo.GoInt64);
                        if ((_ip_562099 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 562125i32;
                        } else {
                            _gotoNext = 562149i32;
                        };
                    };
                } else if (__value__ == (562125i32)) {
                    _signgam_562081 = (-1 : stdgo.GoInt);
                    _gotoNext = 562149i32;
                } else if (__value__ == (562149i32)) {
                    _z_562149 = (_q_561779 - _p_561792 : stdgo.GoFloat64);
                    if ((_z_562149 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 562173i32;
                    } else {
                        _gotoNext = 562207i32;
                    };
                } else if (__value__ == (562173i32)) {
                    _p_561792 = (_p_561792 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_562149 = (_q_561779 - _p_561792 : stdgo.GoFloat64);
                    _gotoNext = 562207i32;
                } else if (__value__ == (562207i32)) {
                    _z_562149 = (_q_561779 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_562149 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_562149 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 562237i32;
                    } else {
                        _gotoNext = 562268i32;
                    };
                } else if (__value__ == (562237i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_562081);
                    _gotoNext = 562268i32;
                } else if (__value__ == (562268i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_561779);
                        _sq1_562268 = __tmp__._0;
                        _sq2_562273 = __tmp__._1;
                    };
                    _absz_562294 = stdgo._internal.math.Math_abs.abs(_z_562149);
                    _d_562311 = ((_absz_562294 * _sq1_562268 : stdgo.GoFloat64) * _sq2_562273 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_562311, (0 : stdgo.GoInt))) {
                        _gotoNext = 562350i32;
                    } else {
                        _gotoNext = 562390i32;
                    };
                } else if (__value__ == (562350i32)) {
                    _z_562149 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_562294 : stdgo.GoFloat64) / _sq1_562268 : stdgo.GoFloat64) / _sq2_562273 : stdgo.GoFloat64);
                    _gotoNext = 562412i32;
                } else if (__value__ == (562390i32)) {
                    _gotoNext = 562390i32;
                    _z_562149 = ((3.141592653589793 : stdgo.GoFloat64) / _d_562311 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 562412i32;
                } else if (__value__ == (562412i32)) {
                    return ((_signgam_562081 : stdgo.GoFloat64) * _z_562149 : stdgo.GoFloat64);
                    _gotoNext = 562465i32;
                } else if (__value__ == (562465i32)) {
                    _z_562465 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 562475i32;
                } else if (__value__ == (562475i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 562486i32;
                    } else {
                        _gotoNext = 562516i32;
                    };
                } else if (__value__ == (562486i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_562465 = (_z_562465 * _x : stdgo.GoFloat64);
                    _gotoNext = 562475i32;
                } else if (__value__ == (562516i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 562516i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 562526i32;
                    } else {
                        _gotoNext = 562592i32;
                    };
                } else if (__value__ == (562526i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 562544i32;
                    } else {
                        _gotoNext = 562566i32;
                    };
                } else if (__value__ == (562544i32)) {
                    _gotoNext = 562922i32;
                } else if (__value__ == (562566i32)) {
                    _z_562465 = (_z_562465 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 562516i32;
                } else if (__value__ == (562592i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 562592i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 562602i32;
                    } else {
                        _gotoNext = 562668i32;
                    };
                } else if (__value__ == (562602i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 562619i32;
                    } else {
                        _gotoNext = 562641i32;
                    };
                } else if (__value__ == (562619i32)) {
                    _gotoNext = 562922i32;
                } else if (__value__ == (562641i32)) {
                    _z_562465 = (_z_562465 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 562592i32;
                } else if (__value__ == (562668i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 562678i32;
                    } else {
                        _gotoNext = 562696i32;
                    };
                } else if (__value__ == (562678i32)) {
                    return _z_562465;
                    _gotoNext = 562696i32;
                } else if (__value__ == (562696i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_561792 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_561779 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_562465 * _p_561792 : stdgo.GoFloat64) / _q_561779 : stdgo.GoFloat64);
                    _gotoNext = 562922i32;
                } else if (__value__ == (562922i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 562940i32;
                    } else {
                        _gotoNext = 562962i32;
                    };
                } else if (__value__ == (562940i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 562962i32;
                } else if (__value__ == (562962i32)) {
                    return (_z_562465 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
