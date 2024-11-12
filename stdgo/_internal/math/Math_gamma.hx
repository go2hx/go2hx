package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_445412:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_445096:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_445028:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_444726:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_445258:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_445241:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_445220:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_445215:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_444455;
        var _ip_445046:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_444787:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_444783:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_444739:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_444455 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 444546i32;
                } else if (__value__ == (444546i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 444556i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 444618i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 444653i32;
                    } else {
                        _gotoNext = 444726i32;
                    };
                } else if (__value__ == (444556i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 444726i32;
                } else if (__value__ == (444618i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 444726i32;
                } else if (__value__ == (444653i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 444682i32;
                    } else {
                        _gotoNext = 444708i32;
                    };
                } else if (__value__ == (444682i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 444708i32;
                } else if (__value__ == (444708i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 444726i32;
                } else if (__value__ == (444726i32)) {
                    _q_444726 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_444739 = stdgo._internal.math.Math_floor.floor(_q_444726);
                    if ((_q_444726 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444764i32;
                    } else {
                        _gotoNext = 445412i32;
                    };
                } else if (__value__ == (444764i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444778i32;
                    } else {
                        _gotoNext = 445028i32;
                    };
                } else if (__value__ == (444778i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_444783 = __tmp__._0;
                        _y2_444787 = __tmp__._1;
                    };
                    return (_y1_444783 * _y2_444787 : stdgo.GoFloat64);
                    _gotoNext = 445028i32;
                } else if (__value__ == (445028i32)) {
                    _signgam_445028 = (1 : stdgo.GoInt);
                    {
                        _ip_445046 = (_p_444739 : stdgo.GoInt64);
                        if ((_ip_445046 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 445072i32;
                        } else {
                            _gotoNext = 445096i32;
                        };
                    };
                } else if (__value__ == (445072i32)) {
                    _signgam_445028 = (-1 : stdgo.GoInt);
                    _gotoNext = 445096i32;
                } else if (__value__ == (445096i32)) {
                    _z_445096 = (_q_444726 - _p_444739 : stdgo.GoFloat64);
                    if ((_z_445096 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445120i32;
                    } else {
                        _gotoNext = 445154i32;
                    };
                } else if (__value__ == (445120i32)) {
                    _p_444739 = (_p_444739 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_445096 = (_q_444726 - _p_444739 : stdgo.GoFloat64);
                    _gotoNext = 445154i32;
                } else if (__value__ == (445154i32)) {
                    _z_445096 = (_q_444726 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_445096 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_445096 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 445184i32;
                    } else {
                        _gotoNext = 445215i32;
                    };
                } else if (__value__ == (445184i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_445028);
                    _gotoNext = 445215i32;
                } else if (__value__ == (445215i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_444726);
                        _sq1_445215 = __tmp__._0;
                        _sq2_445220 = __tmp__._1;
                    };
                    _absz_445241 = stdgo._internal.math.Math_abs.abs(_z_445096);
                    _d_445258 = ((_absz_445241 * _sq1_445215 : stdgo.GoFloat64) * _sq2_445220 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_445258, (0 : stdgo.GoInt))) {
                        _gotoNext = 445297i32;
                    } else {
                        _gotoNext = 445337i32;
                    };
                } else if (__value__ == (445297i32)) {
                    _z_445096 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_445241 : stdgo.GoFloat64) / _sq1_445215 : stdgo.GoFloat64) / _sq2_445220 : stdgo.GoFloat64);
                    _gotoNext = 445359i32;
                } else if (__value__ == (445337i32)) {
                    _gotoNext = 445337i32;
                    _z_445096 = ((3.141592653589793 : stdgo.GoFloat64) / _d_445258 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 445359i32;
                } else if (__value__ == (445359i32)) {
                    return ((_signgam_445028 : stdgo.GoFloat64) * _z_445096 : stdgo.GoFloat64);
                    _gotoNext = 445412i32;
                } else if (__value__ == (445412i32)) {
                    _z_445412 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 445422i32;
                } else if (__value__ == (445422i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445433i32;
                    } else {
                        _gotoNext = 445463i32;
                    };
                } else if (__value__ == (445433i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_445412 = (_z_445412 * _x : stdgo.GoFloat64);
                    _gotoNext = 445422i32;
                } else if (__value__ == (445463i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 445463i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445473i32;
                    } else {
                        _gotoNext = 445539i32;
                    };
                } else if (__value__ == (445473i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445491i32;
                    } else {
                        _gotoNext = 445513i32;
                    };
                } else if (__value__ == (445491i32)) {
                    _gotoNext = 445869i32;
                } else if (__value__ == (445513i32)) {
                    _z_445412 = (_z_445412 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 445463i32;
                } else if (__value__ == (445539i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 445539i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445549i32;
                    } else {
                        _gotoNext = 445615i32;
                    };
                } else if (__value__ == (445549i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445566i32;
                    } else {
                        _gotoNext = 445588i32;
                    };
                } else if (__value__ == (445566i32)) {
                    _gotoNext = 445869i32;
                } else if (__value__ == (445588i32)) {
                    _z_445412 = (_z_445412 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 445539i32;
                } else if (__value__ == (445615i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 445625i32;
                    } else {
                        _gotoNext = 445643i32;
                    };
                } else if (__value__ == (445625i32)) {
                    return _z_445412;
                    _gotoNext = 445643i32;
                } else if (__value__ == (445643i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_444739 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_444726 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_445412 * _p_444739 : stdgo.GoFloat64) / _q_444726 : stdgo.GoFloat64);
                    _gotoNext = 445869i32;
                } else if (__value__ == (445869i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 445887i32;
                    } else {
                        _gotoNext = 445909i32;
                    };
                } else if (__value__ == (445887i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 445909i32;
                } else if (__value__ == (445909i32)) {
                    return (_z_445412 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
