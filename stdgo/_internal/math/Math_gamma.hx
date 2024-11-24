package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_97995:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_97501:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_98016:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_97871:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_97562:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_97558:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_97514:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_98187:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_98033:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_97821:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_97230;
        var _sq1_97990:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_97803:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_97230 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 97321i32;
                } else if (__value__ == (97321i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 97331i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 97393i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 97428i32;
                    } else {
                        _gotoNext = 97501i32;
                    };
                } else if (__value__ == (97331i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 97501i32;
                } else if (__value__ == (97393i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 97501i32;
                } else if (__value__ == (97428i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 97457i32;
                    } else {
                        _gotoNext = 97483i32;
                    };
                } else if (__value__ == (97457i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 97483i32;
                } else if (__value__ == (97483i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 97501i32;
                } else if (__value__ == (97501i32)) {
                    _q_97501 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_97514 = stdgo._internal.math.Math_floor.floor(_q_97501);
                    if ((_q_97501 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 97539i32;
                    } else {
                        _gotoNext = 98187i32;
                    };
                } else if (__value__ == (97539i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 97553i32;
                    } else {
                        _gotoNext = 97803i32;
                    };
                } else if (__value__ == (97553i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_97558 = __tmp__._0;
                        _y2_97562 = __tmp__._1;
                    };
                    return (_y1_97558 * _y2_97562 : stdgo.GoFloat64);
                    _gotoNext = 97803i32;
                } else if (__value__ == (97803i32)) {
                    _signgam_97803 = (1 : stdgo.GoInt);
                    {
                        _ip_97821 = (_p_97514 : stdgo.GoInt64);
                        if ((_ip_97821 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 97847i32;
                        } else {
                            _gotoNext = 97871i32;
                        };
                    };
                } else if (__value__ == (97847i32)) {
                    _signgam_97803 = (-1 : stdgo.GoInt);
                    _gotoNext = 97871i32;
                } else if (__value__ == (97871i32)) {
                    _z_97871 = (_q_97501 - _p_97514 : stdgo.GoFloat64);
                    if ((_z_97871 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 97895i32;
                    } else {
                        _gotoNext = 97929i32;
                    };
                } else if (__value__ == (97895i32)) {
                    _p_97514 = (_p_97514 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_97871 = (_q_97501 - _p_97514 : stdgo.GoFloat64);
                    _gotoNext = 97929i32;
                } else if (__value__ == (97929i32)) {
                    _z_97871 = (_q_97501 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_97871 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_97871 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 97959i32;
                    } else {
                        _gotoNext = 97990i32;
                    };
                } else if (__value__ == (97959i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_97803);
                    _gotoNext = 97990i32;
                } else if (__value__ == (97990i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_97501);
                        _sq1_97990 = __tmp__._0;
                        _sq2_97995 = __tmp__._1;
                    };
                    _absz_98016 = stdgo._internal.math.Math_abs.abs(_z_97871);
                    _d_98033 = ((_absz_98016 * _sq1_97990 : stdgo.GoFloat64) * _sq2_97995 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_98033, (0 : stdgo.GoInt))) {
                        _gotoNext = 98072i32;
                    } else {
                        _gotoNext = 98112i32;
                    };
                } else if (__value__ == (98072i32)) {
                    _z_97871 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_98016 : stdgo.GoFloat64) / _sq1_97990 : stdgo.GoFloat64) / _sq2_97995 : stdgo.GoFloat64);
                    _gotoNext = 98134i32;
                } else if (__value__ == (98112i32)) {
                    _gotoNext = 98112i32;
                    _z_97871 = ((3.141592653589793 : stdgo.GoFloat64) / _d_98033 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 98134i32;
                } else if (__value__ == (98134i32)) {
                    return ((_signgam_97803 : stdgo.GoFloat64) * _z_97871 : stdgo.GoFloat64);
                    _gotoNext = 98187i32;
                } else if (__value__ == (98187i32)) {
                    _z_98187 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 98197i32;
                } else if (__value__ == (98197i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 98208i32;
                    } else {
                        _gotoNext = 98238i32;
                    };
                } else if (__value__ == (98208i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_98187 = (_z_98187 * _x : stdgo.GoFloat64);
                    _gotoNext = 98197i32;
                } else if (__value__ == (98238i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 98238i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 98248i32;
                    } else {
                        _gotoNext = 98314i32;
                    };
                } else if (__value__ == (98248i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 98266i32;
                    } else {
                        _gotoNext = 98288i32;
                    };
                } else if (__value__ == (98266i32)) {
                    _gotoNext = 98644i32;
                } else if (__value__ == (98288i32)) {
                    _z_98187 = (_z_98187 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 98238i32;
                } else if (__value__ == (98314i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 98314i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 98324i32;
                    } else {
                        _gotoNext = 98390i32;
                    };
                } else if (__value__ == (98324i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 98341i32;
                    } else {
                        _gotoNext = 98363i32;
                    };
                } else if (__value__ == (98341i32)) {
                    _gotoNext = 98644i32;
                } else if (__value__ == (98363i32)) {
                    _z_98187 = (_z_98187 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 98314i32;
                } else if (__value__ == (98390i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 98400i32;
                    } else {
                        _gotoNext = 98418i32;
                    };
                } else if (__value__ == (98400i32)) {
                    return _z_98187;
                    _gotoNext = 98418i32;
                } else if (__value__ == (98418i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_97514 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_97501 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_98187 * _p_97514 : stdgo.GoFloat64) / _q_97501 : stdgo.GoFloat64);
                    _gotoNext = 98644i32;
                } else if (__value__ == (98644i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 98662i32;
                    } else {
                        _gotoNext = 98684i32;
                    };
                } else if (__value__ == (98662i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 98684i32;
                } else if (__value__ == (98684i32)) {
                    return (_z_98187 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
