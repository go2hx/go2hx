package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_462674:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_462479:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_461888;
        var _d_462691:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_462653:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_462648:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_462172:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_462461:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_462529:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_462220:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_462216:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_462159:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_462845:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_461888 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 461979i32;
                } else if (__value__ == (461979i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 461989i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 462051i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462086i32;
                    } else {
                        _gotoNext = 462159i32;
                    };
                } else if (__value__ == (461989i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 462159i32;
                } else if (__value__ == (462051i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 462159i32;
                } else if (__value__ == (462086i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 462115i32;
                    } else {
                        _gotoNext = 462141i32;
                    };
                } else if (__value__ == (462115i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 462141i32;
                } else if (__value__ == (462141i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 462159i32;
                } else if (__value__ == (462159i32)) {
                    _q_462159 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_462172 = stdgo._internal.math.Math_floor.floor(_q_462159);
                    if ((_q_462159 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462197i32;
                    } else {
                        _gotoNext = 462845i32;
                    };
                } else if (__value__ == (462197i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462211i32;
                    } else {
                        _gotoNext = 462461i32;
                    };
                } else if (__value__ == (462211i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_462216 = __tmp__._0;
                        _y2_462220 = __tmp__._1;
                    };
                    return (_y1_462216 * _y2_462220 : stdgo.GoFloat64);
                    _gotoNext = 462461i32;
                } else if (__value__ == (462461i32)) {
                    _signgam_462461 = (1 : stdgo.GoInt);
                    {
                        _ip_462479 = (_p_462172 : stdgo.GoInt64);
                        if ((_ip_462479 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 462505i32;
                        } else {
                            _gotoNext = 462529i32;
                        };
                    };
                } else if (__value__ == (462505i32)) {
                    _signgam_462461 = (-1 : stdgo.GoInt);
                    _gotoNext = 462529i32;
                } else if (__value__ == (462529i32)) {
                    _z_462529 = (_q_462159 - _p_462172 : stdgo.GoFloat64);
                    if ((_z_462529 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462553i32;
                    } else {
                        _gotoNext = 462587i32;
                    };
                } else if (__value__ == (462553i32)) {
                    _p_462172 = (_p_462172 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_462529 = (_q_462159 - _p_462172 : stdgo.GoFloat64);
                    _gotoNext = 462587i32;
                } else if (__value__ == (462587i32)) {
                    _z_462529 = (_q_462159 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_462529 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_462529 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462617i32;
                    } else {
                        _gotoNext = 462648i32;
                    };
                } else if (__value__ == (462617i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_462461);
                    _gotoNext = 462648i32;
                } else if (__value__ == (462648i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_462159);
                        _sq1_462648 = __tmp__._0;
                        _sq2_462653 = __tmp__._1;
                    };
                    _absz_462674 = stdgo._internal.math.Math_abs.abs(_z_462529);
                    _d_462691 = ((_absz_462674 * _sq1_462648 : stdgo.GoFloat64) * _sq2_462653 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_462691, (0 : stdgo.GoInt))) {
                        _gotoNext = 462730i32;
                    } else {
                        _gotoNext = 462770i32;
                    };
                } else if (__value__ == (462730i32)) {
                    _z_462529 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_462674 : stdgo.GoFloat64) / _sq1_462648 : stdgo.GoFloat64) / _sq2_462653 : stdgo.GoFloat64);
                    _gotoNext = 462792i32;
                } else if (__value__ == (462770i32)) {
                    _gotoNext = 462770i32;
                    _z_462529 = ((3.141592653589793 : stdgo.GoFloat64) / _d_462691 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 462792i32;
                } else if (__value__ == (462792i32)) {
                    return ((_signgam_462461 : stdgo.GoFloat64) * _z_462529 : stdgo.GoFloat64);
                    _gotoNext = 462845i32;
                } else if (__value__ == (462845i32)) {
                    _z_462845 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 462855i32;
                } else if (__value__ == (462855i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462866i32;
                    } else {
                        _gotoNext = 462896i32;
                    };
                } else if (__value__ == (462866i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_462845 = (_z_462845 * _x : stdgo.GoFloat64);
                    _gotoNext = 462855i32;
                } else if (__value__ == (462896i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 462896i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462906i32;
                    } else {
                        _gotoNext = 462972i32;
                    };
                } else if (__value__ == (462906i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462924i32;
                    } else {
                        _gotoNext = 462946i32;
                    };
                } else if (__value__ == (462924i32)) {
                    _gotoNext = 463302i32;
                } else if (__value__ == (462946i32)) {
                    _z_462845 = (_z_462845 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 462896i32;
                } else if (__value__ == (462972i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 462972i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462982i32;
                    } else {
                        _gotoNext = 463048i32;
                    };
                } else if (__value__ == (462982i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462999i32;
                    } else {
                        _gotoNext = 463021i32;
                    };
                } else if (__value__ == (462999i32)) {
                    _gotoNext = 463302i32;
                } else if (__value__ == (463021i32)) {
                    _z_462845 = (_z_462845 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 462972i32;
                } else if (__value__ == (463048i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 463058i32;
                    } else {
                        _gotoNext = 463076i32;
                    };
                } else if (__value__ == (463058i32)) {
                    return _z_462845;
                    _gotoNext = 463076i32;
                } else if (__value__ == (463076i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_462172 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_462159 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_462845 * _p_462172 : stdgo.GoFloat64) / _q_462159 : stdgo.GoFloat64);
                    _gotoNext = 463302i32;
                } else if (__value__ == (463302i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 463320i32;
                    } else {
                        _gotoNext = 463342i32;
                    };
                } else if (__value__ == (463320i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 463342i32;
                } else if (__value__ == (463342i32)) {
                    return (_z_462845 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
