package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_401042:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_400888:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_400850:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_400726:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_400417:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_400413:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_400085;
        var _signgam_400658:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_400369:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_400871:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_400845:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_400676:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_400356:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_400085 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 400176i32;
                } else if (__value__ == (400176i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 400186i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 400248i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 400283i32;
                    } else {
                        _gotoNext = 400356i32;
                    };
                } else if (__value__ == (400186i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 400356i32;
                } else if (__value__ == (400248i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 400356i32;
                } else if (__value__ == (400283i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 400312i32;
                    } else {
                        _gotoNext = 400338i32;
                    };
                } else if (__value__ == (400312i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 400338i32;
                } else if (__value__ == (400338i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 400356i32;
                } else if (__value__ == (400356i32)) {
                    _q_400356 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_400369 = stdgo._internal.math.Math_floor.floor(_q_400356);
                    if ((_q_400356 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 400394i32;
                    } else {
                        _gotoNext = 401042i32;
                    };
                } else if (__value__ == (400394i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 400408i32;
                    } else {
                        _gotoNext = 400658i32;
                    };
                } else if (__value__ == (400408i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_400413 = __tmp__._0;
                        _y2_400417 = __tmp__._1;
                    };
                    return (_y1_400413 * _y2_400417 : stdgo.GoFloat64);
                    _gotoNext = 400658i32;
                } else if (__value__ == (400658i32)) {
                    _signgam_400658 = (1 : stdgo.GoInt);
                    {
                        _ip_400676 = (_p_400369 : stdgo.GoInt64);
                        if ((_ip_400676 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 400702i32;
                        } else {
                            _gotoNext = 400726i32;
                        };
                    };
                } else if (__value__ == (400702i32)) {
                    _signgam_400658 = (-1 : stdgo.GoInt);
                    _gotoNext = 400726i32;
                } else if (__value__ == (400726i32)) {
                    _z_400726 = (_q_400356 - _p_400369 : stdgo.GoFloat64);
                    if ((_z_400726 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 400750i32;
                    } else {
                        _gotoNext = 400784i32;
                    };
                } else if (__value__ == (400750i32)) {
                    _p_400369 = (_p_400369 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_400726 = (_q_400356 - _p_400369 : stdgo.GoFloat64);
                    _gotoNext = 400784i32;
                } else if (__value__ == (400784i32)) {
                    _z_400726 = (_q_400356 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_400726 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_400726 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 400814i32;
                    } else {
                        _gotoNext = 400845i32;
                    };
                } else if (__value__ == (400814i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_400658);
                    _gotoNext = 400845i32;
                } else if (__value__ == (400845i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_400356);
                        _sq1_400845 = __tmp__._0;
                        _sq2_400850 = __tmp__._1;
                    };
                    _absz_400871 = stdgo._internal.math.Math_abs.abs(_z_400726);
                    _d_400888 = ((_absz_400871 * _sq1_400845 : stdgo.GoFloat64) * _sq2_400850 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_400888, (0 : stdgo.GoInt))) {
                        _gotoNext = 400927i32;
                    } else {
                        _gotoNext = 400967i32;
                    };
                } else if (__value__ == (400927i32)) {
                    _z_400726 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_400871 : stdgo.GoFloat64) / _sq1_400845 : stdgo.GoFloat64) / _sq2_400850 : stdgo.GoFloat64);
                    _gotoNext = 400989i32;
                } else if (__value__ == (400967i32)) {
                    _gotoNext = 400967i32;
                    _z_400726 = ((3.141592653589793 : stdgo.GoFloat64) / _d_400888 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 400989i32;
                } else if (__value__ == (400989i32)) {
                    return ((_signgam_400658 : stdgo.GoFloat64) * _z_400726 : stdgo.GoFloat64);
                    _gotoNext = 401042i32;
                } else if (__value__ == (401042i32)) {
                    _z_401042 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 401052i32;
                } else if (__value__ == (401052i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 401063i32;
                    } else {
                        _gotoNext = 401093i32;
                    };
                } else if (__value__ == (401063i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_401042 = (_z_401042 * _x : stdgo.GoFloat64);
                    _gotoNext = 401052i32;
                } else if (__value__ == (401093i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 401093i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 401103i32;
                    } else {
                        _gotoNext = 401169i32;
                    };
                } else if (__value__ == (401103i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 401121i32;
                    } else {
                        _gotoNext = 401143i32;
                    };
                } else if (__value__ == (401121i32)) {
                    _gotoNext = 401499i32;
                } else if (__value__ == (401143i32)) {
                    _z_401042 = (_z_401042 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 401093i32;
                } else if (__value__ == (401169i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 401169i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 401179i32;
                    } else {
                        _gotoNext = 401245i32;
                    };
                } else if (__value__ == (401179i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 401196i32;
                    } else {
                        _gotoNext = 401218i32;
                    };
                } else if (__value__ == (401196i32)) {
                    _gotoNext = 401499i32;
                } else if (__value__ == (401218i32)) {
                    _z_401042 = (_z_401042 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 401169i32;
                } else if (__value__ == (401245i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 401255i32;
                    } else {
                        _gotoNext = 401273i32;
                    };
                } else if (__value__ == (401255i32)) {
                    return _z_401042;
                    _gotoNext = 401273i32;
                } else if (__value__ == (401273i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_400369 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_400356 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_401042 * _p_400369 : stdgo.GoFloat64) / _q_400356 : stdgo.GoFloat64);
                    _gotoNext = 401499i32;
                } else if (__value__ == (401499i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 401517i32;
                    } else {
                        _gotoNext = 401539i32;
                    };
                } else if (__value__ == (401517i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 401539i32;
                } else if (__value__ == (401539i32)) {
                    return (_z_401042 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
