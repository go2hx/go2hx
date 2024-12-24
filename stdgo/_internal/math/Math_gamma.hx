package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y2_388387:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_388326:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_388628:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_388055;
        var _ip_388646:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _sq2_388820:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_388339:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_389012:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_388858:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_388841:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_388696:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_388383:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_388815:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_388055 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 388146i32;
                } else if (__value__ == (388146i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 388156i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 388218i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 388253i32;
                    } else {
                        _gotoNext = 388326i32;
                    };
                } else if (__value__ == (388156i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 388326i32;
                } else if (__value__ == (388218i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 388326i32;
                } else if (__value__ == (388253i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 388282i32;
                    } else {
                        _gotoNext = 388308i32;
                    };
                } else if (__value__ == (388282i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 388308i32;
                } else if (__value__ == (388308i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 388326i32;
                } else if (__value__ == (388326i32)) {
                    _q_388326 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_388339 = stdgo._internal.math.Math_floor.floor(_q_388326);
                    if ((_q_388326 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388364i32;
                    } else {
                        _gotoNext = 389012i32;
                    };
                } else if (__value__ == (388364i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388378i32;
                    } else {
                        _gotoNext = 388628i32;
                    };
                } else if (__value__ == (388378i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_388383 = __tmp__._0;
                        _y2_388387 = __tmp__._1;
                    };
                    return (_y1_388383 * _y2_388387 : stdgo.GoFloat64);
                    _gotoNext = 388628i32;
                } else if (__value__ == (388628i32)) {
                    _signgam_388628 = (1 : stdgo.GoInt);
                    {
                        _ip_388646 = (_p_388339 : stdgo.GoInt64);
                        if ((_ip_388646 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 388672i32;
                        } else {
                            _gotoNext = 388696i32;
                        };
                    };
                } else if (__value__ == (388672i32)) {
                    _signgam_388628 = (-1 : stdgo.GoInt);
                    _gotoNext = 388696i32;
                } else if (__value__ == (388696i32)) {
                    _z_388696 = (_q_388326 - _p_388339 : stdgo.GoFloat64);
                    if ((_z_388696 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388720i32;
                    } else {
                        _gotoNext = 388754i32;
                    };
                } else if (__value__ == (388720i32)) {
                    _p_388339 = (_p_388339 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_388696 = (_q_388326 - _p_388339 : stdgo.GoFloat64);
                    _gotoNext = 388754i32;
                } else if (__value__ == (388754i32)) {
                    _z_388696 = (_q_388326 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_388696 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_388696 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 388784i32;
                    } else {
                        _gotoNext = 388815i32;
                    };
                } else if (__value__ == (388784i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_388628);
                    _gotoNext = 388815i32;
                } else if (__value__ == (388815i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_388326);
                        _sq1_388815 = __tmp__._0;
                        _sq2_388820 = __tmp__._1;
                    };
                    _absz_388841 = stdgo._internal.math.Math_abs.abs(_z_388696);
                    _d_388858 = ((_absz_388841 * _sq1_388815 : stdgo.GoFloat64) * _sq2_388820 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_388858, (0 : stdgo.GoInt))) {
                        _gotoNext = 388897i32;
                    } else {
                        _gotoNext = 388937i32;
                    };
                } else if (__value__ == (388897i32)) {
                    _z_388696 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_388841 : stdgo.GoFloat64) / _sq1_388815 : stdgo.GoFloat64) / _sq2_388820 : stdgo.GoFloat64);
                    _gotoNext = 388959i32;
                } else if (__value__ == (388937i32)) {
                    _gotoNext = 388937i32;
                    _z_388696 = ((3.141592653589793 : stdgo.GoFloat64) / _d_388858 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 388959i32;
                } else if (__value__ == (388959i32)) {
                    return ((_signgam_388628 : stdgo.GoFloat64) * _z_388696 : stdgo.GoFloat64);
                    _gotoNext = 389012i32;
                } else if (__value__ == (389012i32)) {
                    _z_389012 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 389022i32;
                } else if (__value__ == (389022i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 389033i32;
                    } else {
                        _gotoNext = 389063i32;
                    };
                } else if (__value__ == (389033i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_389012 = (_z_389012 * _x : stdgo.GoFloat64);
                    _gotoNext = 389022i32;
                } else if (__value__ == (389063i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 389063i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 389073i32;
                    } else {
                        _gotoNext = 389139i32;
                    };
                } else if (__value__ == (389073i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 389091i32;
                    } else {
                        _gotoNext = 389113i32;
                    };
                } else if (__value__ == (389091i32)) {
                    _gotoNext = 389469i32;
                } else if (__value__ == (389113i32)) {
                    _z_389012 = (_z_389012 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 389063i32;
                } else if (__value__ == (389139i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 389139i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 389149i32;
                    } else {
                        _gotoNext = 389215i32;
                    };
                } else if (__value__ == (389149i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 389166i32;
                    } else {
                        _gotoNext = 389188i32;
                    };
                } else if (__value__ == (389166i32)) {
                    _gotoNext = 389469i32;
                } else if (__value__ == (389188i32)) {
                    _z_389012 = (_z_389012 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 389139i32;
                } else if (__value__ == (389215i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 389225i32;
                    } else {
                        _gotoNext = 389243i32;
                    };
                } else if (__value__ == (389225i32)) {
                    return _z_389012;
                    _gotoNext = 389243i32;
                } else if (__value__ == (389243i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_388339 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_388326 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_389012 * _p_388339 : stdgo.GoFloat64) / _q_388326 : stdgo.GoFloat64);
                    _gotoNext = 389469i32;
                } else if (__value__ == (389469i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 389487i32;
                    } else {
                        _gotoNext = 389509i32;
                    };
                } else if (__value__ == (389487i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 389509i32;
                } else if (__value__ == (389509i32)) {
                    return (_z_389012 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
