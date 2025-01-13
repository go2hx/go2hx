package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_443177:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_443160:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_442658:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_443139:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_442965:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_442374;
        var _z_443331:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_443134:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_442947:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_442706:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_443015:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_442702:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_442645:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_442374 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 442465i32;
                } else if (__value__ == (442465i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 442475i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 442537i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 442572i32;
                    } else {
                        _gotoNext = 442645i32;
                    };
                } else if (__value__ == (442475i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 442645i32;
                } else if (__value__ == (442537i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 442645i32;
                } else if (__value__ == (442572i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 442601i32;
                    } else {
                        _gotoNext = 442627i32;
                    };
                } else if (__value__ == (442601i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 442627i32;
                } else if (__value__ == (442627i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 442645i32;
                } else if (__value__ == (442645i32)) {
                    _q_442645 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_442658 = stdgo._internal.math.Math_floor.floor(_q_442645);
                    if ((_q_442645 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442683i32;
                    } else {
                        _gotoNext = 443331i32;
                    };
                } else if (__value__ == (442683i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442697i32;
                    } else {
                        _gotoNext = 442947i32;
                    };
                } else if (__value__ == (442697i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_442702 = __tmp__._0;
                        _y2_442706 = __tmp__._1;
                    };
                    return (_y1_442702 * _y2_442706 : stdgo.GoFloat64);
                    _gotoNext = 442947i32;
                } else if (__value__ == (442947i32)) {
                    _signgam_442947 = (1 : stdgo.GoInt);
                    {
                        _ip_442965 = (_p_442658 : stdgo.GoInt64);
                        if ((_ip_442965 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 442991i32;
                        } else {
                            _gotoNext = 443015i32;
                        };
                    };
                } else if (__value__ == (442991i32)) {
                    _signgam_442947 = (-1 : stdgo.GoInt);
                    _gotoNext = 443015i32;
                } else if (__value__ == (443015i32)) {
                    _z_443015 = (_q_442645 - _p_442658 : stdgo.GoFloat64);
                    if ((_z_443015 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443039i32;
                    } else {
                        _gotoNext = 443073i32;
                    };
                } else if (__value__ == (443039i32)) {
                    _p_442658 = (_p_442658 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_443015 = (_q_442645 - _p_442658 : stdgo.GoFloat64);
                    _gotoNext = 443073i32;
                } else if (__value__ == (443073i32)) {
                    _z_443015 = (_q_442645 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_443015 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_443015 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 443103i32;
                    } else {
                        _gotoNext = 443134i32;
                    };
                } else if (__value__ == (443103i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_442947);
                    _gotoNext = 443134i32;
                } else if (__value__ == (443134i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_442645);
                        _sq1_443134 = __tmp__._0;
                        _sq2_443139 = __tmp__._1;
                    };
                    _absz_443160 = stdgo._internal.math.Math_abs.abs(_z_443015);
                    _d_443177 = ((_absz_443160 * _sq1_443134 : stdgo.GoFloat64) * _sq2_443139 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_443177, (0 : stdgo.GoInt))) {
                        _gotoNext = 443216i32;
                    } else {
                        _gotoNext = 443256i32;
                    };
                } else if (__value__ == (443216i32)) {
                    _z_443015 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_443160 : stdgo.GoFloat64) / _sq1_443134 : stdgo.GoFloat64) / _sq2_443139 : stdgo.GoFloat64);
                    _gotoNext = 443278i32;
                } else if (__value__ == (443256i32)) {
                    _gotoNext = 443256i32;
                    _z_443015 = ((3.141592653589793 : stdgo.GoFloat64) / _d_443177 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 443278i32;
                } else if (__value__ == (443278i32)) {
                    return ((_signgam_442947 : stdgo.GoFloat64) * _z_443015 : stdgo.GoFloat64);
                    _gotoNext = 443331i32;
                } else if (__value__ == (443331i32)) {
                    _z_443331 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 443341i32;
                } else if (__value__ == (443341i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443352i32;
                    } else {
                        _gotoNext = 443382i32;
                    };
                } else if (__value__ == (443352i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_443331 = (_z_443331 * _x : stdgo.GoFloat64);
                    _gotoNext = 443341i32;
                } else if (__value__ == (443382i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 443382i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443392i32;
                    } else {
                        _gotoNext = 443458i32;
                    };
                } else if (__value__ == (443392i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443410i32;
                    } else {
                        _gotoNext = 443432i32;
                    };
                } else if (__value__ == (443410i32)) {
                    _gotoNext = 443788i32;
                } else if (__value__ == (443432i32)) {
                    _z_443331 = (_z_443331 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 443382i32;
                } else if (__value__ == (443458i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 443458i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443468i32;
                    } else {
                        _gotoNext = 443534i32;
                    };
                } else if (__value__ == (443468i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443485i32;
                    } else {
                        _gotoNext = 443507i32;
                    };
                } else if (__value__ == (443485i32)) {
                    _gotoNext = 443788i32;
                } else if (__value__ == (443507i32)) {
                    _z_443331 = (_z_443331 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 443458i32;
                } else if (__value__ == (443534i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 443544i32;
                    } else {
                        _gotoNext = 443562i32;
                    };
                } else if (__value__ == (443544i32)) {
                    return _z_443331;
                    _gotoNext = 443562i32;
                } else if (__value__ == (443562i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_442658 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_442645 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_443331 * _p_442658 : stdgo.GoFloat64) / _q_442645 : stdgo.GoFloat64);
                    _gotoNext = 443788i32;
                } else if (__value__ == (443788i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 443806i32;
                    } else {
                        _gotoNext = 443828i32;
                    };
                } else if (__value__ == (443806i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 443828i32;
                } else if (__value__ == (443828i32)) {
                    return (_z_443331 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
