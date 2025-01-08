package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_454219:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_454193:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_454006:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_453704:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_454236:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_453717:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_454198:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_454074:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_454024:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_453433;
        var _z_454390:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_453765:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_453761:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_453433 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 453524i32;
                } else if (__value__ == (453524i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 453534i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 453596i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 453631i32;
                    } else {
                        _gotoNext = 453704i32;
                    };
                } else if (__value__ == (453534i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 453704i32;
                } else if (__value__ == (453596i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 453704i32;
                } else if (__value__ == (453631i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 453660i32;
                    } else {
                        _gotoNext = 453686i32;
                    };
                } else if (__value__ == (453660i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 453686i32;
                } else if (__value__ == (453686i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 453704i32;
                } else if (__value__ == (453704i32)) {
                    _q_453704 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_453717 = stdgo._internal.math.Math_floor.floor(_q_453704);
                    if ((_q_453704 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 453742i32;
                    } else {
                        _gotoNext = 454390i32;
                    };
                } else if (__value__ == (453742i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 453756i32;
                    } else {
                        _gotoNext = 454006i32;
                    };
                } else if (__value__ == (453756i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_453761 = __tmp__._0;
                        _y2_453765 = __tmp__._1;
                    };
                    return (_y1_453761 * _y2_453765 : stdgo.GoFloat64);
                    _gotoNext = 454006i32;
                } else if (__value__ == (454006i32)) {
                    _signgam_454006 = (1 : stdgo.GoInt);
                    {
                        _ip_454024 = (_p_453717 : stdgo.GoInt64);
                        if ((_ip_454024 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 454050i32;
                        } else {
                            _gotoNext = 454074i32;
                        };
                    };
                } else if (__value__ == (454050i32)) {
                    _signgam_454006 = (-1 : stdgo.GoInt);
                    _gotoNext = 454074i32;
                } else if (__value__ == (454074i32)) {
                    _z_454074 = (_q_453704 - _p_453717 : stdgo.GoFloat64);
                    if ((_z_454074 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454098i32;
                    } else {
                        _gotoNext = 454132i32;
                    };
                } else if (__value__ == (454098i32)) {
                    _p_453717 = (_p_453717 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_454074 = (_q_453704 - _p_453717 : stdgo.GoFloat64);
                    _gotoNext = 454132i32;
                } else if (__value__ == (454132i32)) {
                    _z_454074 = (_q_453704 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_454074 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_454074 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 454162i32;
                    } else {
                        _gotoNext = 454193i32;
                    };
                } else if (__value__ == (454162i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_454006);
                    _gotoNext = 454193i32;
                } else if (__value__ == (454193i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_453704);
                        _sq1_454193 = __tmp__._0;
                        _sq2_454198 = __tmp__._1;
                    };
                    _absz_454219 = stdgo._internal.math.Math_abs.abs(_z_454074);
                    _d_454236 = ((_absz_454219 * _sq1_454193 : stdgo.GoFloat64) * _sq2_454198 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_454236, (0 : stdgo.GoInt))) {
                        _gotoNext = 454275i32;
                    } else {
                        _gotoNext = 454315i32;
                    };
                } else if (__value__ == (454275i32)) {
                    _z_454074 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_454219 : stdgo.GoFloat64) / _sq1_454193 : stdgo.GoFloat64) / _sq2_454198 : stdgo.GoFloat64);
                    _gotoNext = 454337i32;
                } else if (__value__ == (454315i32)) {
                    _gotoNext = 454315i32;
                    _z_454074 = ((3.141592653589793 : stdgo.GoFloat64) / _d_454236 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 454337i32;
                } else if (__value__ == (454337i32)) {
                    return ((_signgam_454006 : stdgo.GoFloat64) * _z_454074 : stdgo.GoFloat64);
                    _gotoNext = 454390i32;
                } else if (__value__ == (454390i32)) {
                    _z_454390 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 454400i32;
                } else if (__value__ == (454400i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454411i32;
                    } else {
                        _gotoNext = 454441i32;
                    };
                } else if (__value__ == (454411i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_454390 = (_z_454390 * _x : stdgo.GoFloat64);
                    _gotoNext = 454400i32;
                } else if (__value__ == (454441i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 454441i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454451i32;
                    } else {
                        _gotoNext = 454517i32;
                    };
                } else if (__value__ == (454451i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454469i32;
                    } else {
                        _gotoNext = 454491i32;
                    };
                } else if (__value__ == (454469i32)) {
                    _gotoNext = 454847i32;
                } else if (__value__ == (454491i32)) {
                    _z_454390 = (_z_454390 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 454441i32;
                } else if (__value__ == (454517i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 454517i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454527i32;
                    } else {
                        _gotoNext = 454593i32;
                    };
                } else if (__value__ == (454527i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454544i32;
                    } else {
                        _gotoNext = 454566i32;
                    };
                } else if (__value__ == (454544i32)) {
                    _gotoNext = 454847i32;
                } else if (__value__ == (454566i32)) {
                    _z_454390 = (_z_454390 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 454517i32;
                } else if (__value__ == (454593i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 454603i32;
                    } else {
                        _gotoNext = 454621i32;
                    };
                } else if (__value__ == (454603i32)) {
                    return _z_454390;
                    _gotoNext = 454621i32;
                } else if (__value__ == (454621i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_453717 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_453704 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_454390 * _p_453717 : stdgo.GoFloat64) / _q_453704 : stdgo.GoFloat64);
                    _gotoNext = 454847i32;
                } else if (__value__ == (454847i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 454865i32;
                    } else {
                        _gotoNext = 454887i32;
                    };
                } else if (__value__ == (454865i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 454887i32;
                } else if (__value__ == (454887i32)) {
                    return (_z_454390 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
