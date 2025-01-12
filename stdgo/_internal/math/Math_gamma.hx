package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y2_475551:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_476176:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_475984:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_475860:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_476005:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_475810:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_475792:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_475503:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_475490:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_475219;
        var _d_476022:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_475979:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_475547:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_475219 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 475310i32;
                } else if (__value__ == (475310i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 475320i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 475382i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 475417i32;
                    } else {
                        _gotoNext = 475490i32;
                    };
                } else if (__value__ == (475320i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 475490i32;
                } else if (__value__ == (475382i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 475490i32;
                } else if (__value__ == (475417i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 475446i32;
                    } else {
                        _gotoNext = 475472i32;
                    };
                } else if (__value__ == (475446i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 475472i32;
                } else if (__value__ == (475472i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 475490i32;
                } else if (__value__ == (475490i32)) {
                    _q_475490 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_475503 = stdgo._internal.math.Math_floor.floor(_q_475490);
                    if ((_q_475490 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 475528i32;
                    } else {
                        _gotoNext = 476176i32;
                    };
                } else if (__value__ == (475528i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 475542i32;
                    } else {
                        _gotoNext = 475792i32;
                    };
                } else if (__value__ == (475542i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_475547 = __tmp__._0;
                        _y2_475551 = __tmp__._1;
                    };
                    return (_y1_475547 * _y2_475551 : stdgo.GoFloat64);
                    _gotoNext = 475792i32;
                } else if (__value__ == (475792i32)) {
                    _signgam_475792 = (1 : stdgo.GoInt);
                    {
                        _ip_475810 = (_p_475503 : stdgo.GoInt64);
                        if ((_ip_475810 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 475836i32;
                        } else {
                            _gotoNext = 475860i32;
                        };
                    };
                } else if (__value__ == (475836i32)) {
                    _signgam_475792 = (-1 : stdgo.GoInt);
                    _gotoNext = 475860i32;
                } else if (__value__ == (475860i32)) {
                    _z_475860 = (_q_475490 - _p_475503 : stdgo.GoFloat64);
                    if ((_z_475860 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 475884i32;
                    } else {
                        _gotoNext = 475918i32;
                    };
                } else if (__value__ == (475884i32)) {
                    _p_475503 = (_p_475503 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_475860 = (_q_475490 - _p_475503 : stdgo.GoFloat64);
                    _gotoNext = 475918i32;
                } else if (__value__ == (475918i32)) {
                    _z_475860 = (_q_475490 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_475860 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_475860 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 475948i32;
                    } else {
                        _gotoNext = 475979i32;
                    };
                } else if (__value__ == (475948i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_475792);
                    _gotoNext = 475979i32;
                } else if (__value__ == (475979i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_475490);
                        _sq1_475979 = __tmp__._0;
                        _sq2_475984 = __tmp__._1;
                    };
                    _absz_476005 = stdgo._internal.math.Math_abs.abs(_z_475860);
                    _d_476022 = ((_absz_476005 * _sq1_475979 : stdgo.GoFloat64) * _sq2_475984 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_476022, (0 : stdgo.GoInt))) {
                        _gotoNext = 476061i32;
                    } else {
                        _gotoNext = 476101i32;
                    };
                } else if (__value__ == (476061i32)) {
                    _z_475860 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_476005 : stdgo.GoFloat64) / _sq1_475979 : stdgo.GoFloat64) / _sq2_475984 : stdgo.GoFloat64);
                    _gotoNext = 476123i32;
                } else if (__value__ == (476101i32)) {
                    _gotoNext = 476101i32;
                    _z_475860 = ((3.141592653589793 : stdgo.GoFloat64) / _d_476022 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 476123i32;
                } else if (__value__ == (476123i32)) {
                    return ((_signgam_475792 : stdgo.GoFloat64) * _z_475860 : stdgo.GoFloat64);
                    _gotoNext = 476176i32;
                } else if (__value__ == (476176i32)) {
                    _z_476176 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 476186i32;
                } else if (__value__ == (476186i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476197i32;
                    } else {
                        _gotoNext = 476227i32;
                    };
                } else if (__value__ == (476197i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_476176 = (_z_476176 * _x : stdgo.GoFloat64);
                    _gotoNext = 476186i32;
                } else if (__value__ == (476227i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 476227i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476237i32;
                    } else {
                        _gotoNext = 476303i32;
                    };
                } else if (__value__ == (476237i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476255i32;
                    } else {
                        _gotoNext = 476277i32;
                    };
                } else if (__value__ == (476255i32)) {
                    _gotoNext = 476633i32;
                } else if (__value__ == (476277i32)) {
                    _z_476176 = (_z_476176 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 476227i32;
                } else if (__value__ == (476303i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 476303i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476313i32;
                    } else {
                        _gotoNext = 476379i32;
                    };
                } else if (__value__ == (476313i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476330i32;
                    } else {
                        _gotoNext = 476352i32;
                    };
                } else if (__value__ == (476330i32)) {
                    _gotoNext = 476633i32;
                } else if (__value__ == (476352i32)) {
                    _z_476176 = (_z_476176 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 476303i32;
                } else if (__value__ == (476379i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 476389i32;
                    } else {
                        _gotoNext = 476407i32;
                    };
                } else if (__value__ == (476389i32)) {
                    return _z_476176;
                    _gotoNext = 476407i32;
                } else if (__value__ == (476407i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_475503 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_475490 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_476176 * _p_475503 : stdgo.GoFloat64) / _q_475490 : stdgo.GoFloat64);
                    _gotoNext = 476633i32;
                } else if (__value__ == (476633i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 476651i32;
                    } else {
                        _gotoNext = 476673i32;
                    };
                } else if (__value__ == (476651i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 476673i32;
                } else if (__value__ == (476673i32)) {
                    return (_z_476176 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
