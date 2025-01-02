package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y1_484238:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_484501:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_484242:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_484551:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_483910;
        var _z_484867:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_484675:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_484181:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_484713:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_484696:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_484670:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_484483:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_484194:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_483910 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 484001i32;
                } else if (__value__ == (484001i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 484011i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 484073i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 484108i32;
                    } else {
                        _gotoNext = 484181i32;
                    };
                } else if (__value__ == (484011i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 484181i32;
                } else if (__value__ == (484073i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 484181i32;
                } else if (__value__ == (484108i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 484137i32;
                    } else {
                        _gotoNext = 484163i32;
                    };
                } else if (__value__ == (484137i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 484163i32;
                } else if (__value__ == (484163i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 484181i32;
                } else if (__value__ == (484181i32)) {
                    _q_484181 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_484194 = stdgo._internal.math.Math_floor.floor(_q_484181);
                    if ((_q_484181 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 484219i32;
                    } else {
                        _gotoNext = 484867i32;
                    };
                } else if (__value__ == (484219i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 484233i32;
                    } else {
                        _gotoNext = 484483i32;
                    };
                } else if (__value__ == (484233i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_484238 = __tmp__._0;
                        _y2_484242 = __tmp__._1;
                    };
                    return (_y1_484238 * _y2_484242 : stdgo.GoFloat64);
                    _gotoNext = 484483i32;
                } else if (__value__ == (484483i32)) {
                    _signgam_484483 = (1 : stdgo.GoInt);
                    {
                        _ip_484501 = (_p_484194 : stdgo.GoInt64);
                        if ((_ip_484501 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 484527i32;
                        } else {
                            _gotoNext = 484551i32;
                        };
                    };
                } else if (__value__ == (484527i32)) {
                    _signgam_484483 = (-1 : stdgo.GoInt);
                    _gotoNext = 484551i32;
                } else if (__value__ == (484551i32)) {
                    _z_484551 = (_q_484181 - _p_484194 : stdgo.GoFloat64);
                    if ((_z_484551 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 484575i32;
                    } else {
                        _gotoNext = 484609i32;
                    };
                } else if (__value__ == (484575i32)) {
                    _p_484194 = (_p_484194 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_484551 = (_q_484181 - _p_484194 : stdgo.GoFloat64);
                    _gotoNext = 484609i32;
                } else if (__value__ == (484609i32)) {
                    _z_484551 = (_q_484181 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_484551 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_484551 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 484639i32;
                    } else {
                        _gotoNext = 484670i32;
                    };
                } else if (__value__ == (484639i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_484483);
                    _gotoNext = 484670i32;
                } else if (__value__ == (484670i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_484181);
                        _sq1_484670 = __tmp__._0;
                        _sq2_484675 = __tmp__._1;
                    };
                    _absz_484696 = stdgo._internal.math.Math_abs.abs(_z_484551);
                    _d_484713 = ((_absz_484696 * _sq1_484670 : stdgo.GoFloat64) * _sq2_484675 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_484713, (0 : stdgo.GoInt))) {
                        _gotoNext = 484752i32;
                    } else {
                        _gotoNext = 484792i32;
                    };
                } else if (__value__ == (484752i32)) {
                    _z_484551 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_484696 : stdgo.GoFloat64) / _sq1_484670 : stdgo.GoFloat64) / _sq2_484675 : stdgo.GoFloat64);
                    _gotoNext = 484814i32;
                } else if (__value__ == (484792i32)) {
                    _gotoNext = 484792i32;
                    _z_484551 = ((3.141592653589793 : stdgo.GoFloat64) / _d_484713 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 484814i32;
                } else if (__value__ == (484814i32)) {
                    return ((_signgam_484483 : stdgo.GoFloat64) * _z_484551 : stdgo.GoFloat64);
                    _gotoNext = 484867i32;
                } else if (__value__ == (484867i32)) {
                    _z_484867 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 484877i32;
                } else if (__value__ == (484877i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 484888i32;
                    } else {
                        _gotoNext = 484918i32;
                    };
                } else if (__value__ == (484888i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_484867 = (_z_484867 * _x : stdgo.GoFloat64);
                    _gotoNext = 484877i32;
                } else if (__value__ == (484918i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 484918i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 484928i32;
                    } else {
                        _gotoNext = 484994i32;
                    };
                } else if (__value__ == (484928i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 484946i32;
                    } else {
                        _gotoNext = 484968i32;
                    };
                } else if (__value__ == (484946i32)) {
                    _gotoNext = 485324i32;
                } else if (__value__ == (484968i32)) {
                    _z_484867 = (_z_484867 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 484918i32;
                } else if (__value__ == (484994i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 484994i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 485004i32;
                    } else {
                        _gotoNext = 485070i32;
                    };
                } else if (__value__ == (485004i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 485021i32;
                    } else {
                        _gotoNext = 485043i32;
                    };
                } else if (__value__ == (485021i32)) {
                    _gotoNext = 485324i32;
                } else if (__value__ == (485043i32)) {
                    _z_484867 = (_z_484867 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 484994i32;
                } else if (__value__ == (485070i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 485080i32;
                    } else {
                        _gotoNext = 485098i32;
                    };
                } else if (__value__ == (485080i32)) {
                    return _z_484867;
                    _gotoNext = 485098i32;
                } else if (__value__ == (485098i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_484194 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_484181 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_484867 * _p_484194 : stdgo.GoFloat64) / _q_484181 : stdgo.GoFloat64);
                    _gotoNext = 485324i32;
                } else if (__value__ == (485324i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 485342i32;
                    } else {
                        _gotoNext = 485364i32;
                    };
                } else if (__value__ == (485342i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 485364i32;
                } else if (__value__ == (485364i32)) {
                    return (_z_484867 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
