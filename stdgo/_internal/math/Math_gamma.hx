package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _q_441649:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_442335:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_442138:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_441951:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_442019:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_442181:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_442164:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_441706:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_442143:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_441969:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_441710:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_441378;
        var _p_441662:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_441378 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 441469i32;
                } else if (__value__ == (441469i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 441479i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 441541i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 441576i32;
                    } else {
                        _gotoNext = 441649i32;
                    };
                } else if (__value__ == (441479i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 441649i32;
                } else if (__value__ == (441541i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 441649i32;
                } else if (__value__ == (441576i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 441605i32;
                    } else {
                        _gotoNext = 441631i32;
                    };
                } else if (__value__ == (441605i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 441631i32;
                } else if (__value__ == (441631i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 441649i32;
                } else if (__value__ == (441649i32)) {
                    _q_441649 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_441662 = stdgo._internal.math.Math_floor.floor(_q_441649);
                    if ((_q_441649 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 441687i32;
                    } else {
                        _gotoNext = 442335i32;
                    };
                } else if (__value__ == (441687i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 441701i32;
                    } else {
                        _gotoNext = 441951i32;
                    };
                } else if (__value__ == (441701i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_441706 = __tmp__._0;
                        _y2_441710 = __tmp__._1;
                    };
                    return (_y1_441706 * _y2_441710 : stdgo.GoFloat64);
                    _gotoNext = 441951i32;
                } else if (__value__ == (441951i32)) {
                    _signgam_441951 = (1 : stdgo.GoInt);
                    {
                        _ip_441969 = (_p_441662 : stdgo.GoInt64);
                        if ((_ip_441969 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 441995i32;
                        } else {
                            _gotoNext = 442019i32;
                        };
                    };
                } else if (__value__ == (441995i32)) {
                    _signgam_441951 = (-1 : stdgo.GoInt);
                    _gotoNext = 442019i32;
                } else if (__value__ == (442019i32)) {
                    _z_442019 = (_q_441649 - _p_441662 : stdgo.GoFloat64);
                    if ((_z_442019 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442043i32;
                    } else {
                        _gotoNext = 442077i32;
                    };
                } else if (__value__ == (442043i32)) {
                    _p_441662 = (_p_441662 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_442019 = (_q_441649 - _p_441662 : stdgo.GoFloat64);
                    _gotoNext = 442077i32;
                } else if (__value__ == (442077i32)) {
                    _z_442019 = (_q_441649 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_442019 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_442019 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 442107i32;
                    } else {
                        _gotoNext = 442138i32;
                    };
                } else if (__value__ == (442107i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_441951);
                    _gotoNext = 442138i32;
                } else if (__value__ == (442138i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_441649);
                        _sq1_442138 = __tmp__._0;
                        _sq2_442143 = __tmp__._1;
                    };
                    _absz_442164 = stdgo._internal.math.Math_abs.abs(_z_442019);
                    _d_442181 = ((_absz_442164 * _sq1_442138 : stdgo.GoFloat64) * _sq2_442143 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_442181, (0 : stdgo.GoInt))) {
                        _gotoNext = 442220i32;
                    } else {
                        _gotoNext = 442260i32;
                    };
                } else if (__value__ == (442220i32)) {
                    _z_442019 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_442164 : stdgo.GoFloat64) / _sq1_442138 : stdgo.GoFloat64) / _sq2_442143 : stdgo.GoFloat64);
                    _gotoNext = 442282i32;
                } else if (__value__ == (442260i32)) {
                    _gotoNext = 442260i32;
                    _z_442019 = ((3.141592653589793 : stdgo.GoFloat64) / _d_442181 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 442282i32;
                } else if (__value__ == (442282i32)) {
                    return ((_signgam_441951 : stdgo.GoFloat64) * _z_442019 : stdgo.GoFloat64);
                    _gotoNext = 442335i32;
                } else if (__value__ == (442335i32)) {
                    _z_442335 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 442345i32;
                } else if (__value__ == (442345i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442356i32;
                    } else {
                        _gotoNext = 442386i32;
                    };
                } else if (__value__ == (442356i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_442335 = (_z_442335 * _x : stdgo.GoFloat64);
                    _gotoNext = 442345i32;
                } else if (__value__ == (442386i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 442386i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442396i32;
                    } else {
                        _gotoNext = 442462i32;
                    };
                } else if (__value__ == (442396i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442414i32;
                    } else {
                        _gotoNext = 442436i32;
                    };
                } else if (__value__ == (442414i32)) {
                    _gotoNext = 442792i32;
                } else if (__value__ == (442436i32)) {
                    _z_442335 = (_z_442335 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 442386i32;
                } else if (__value__ == (442462i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 442462i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442472i32;
                    } else {
                        _gotoNext = 442538i32;
                    };
                } else if (__value__ == (442472i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 442489i32;
                    } else {
                        _gotoNext = 442511i32;
                    };
                } else if (__value__ == (442489i32)) {
                    _gotoNext = 442792i32;
                } else if (__value__ == (442511i32)) {
                    _z_442335 = (_z_442335 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 442462i32;
                } else if (__value__ == (442538i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 442548i32;
                    } else {
                        _gotoNext = 442566i32;
                    };
                } else if (__value__ == (442548i32)) {
                    return _z_442335;
                    _gotoNext = 442566i32;
                } else if (__value__ == (442566i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_441662 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_441649 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_442335 * _p_441662 : stdgo.GoFloat64) / _q_441649 : stdgo.GoFloat64);
                    _gotoNext = 442792i32;
                } else if (__value__ == (442792i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 442810i32;
                    } else {
                        _gotoNext = 442832i32;
                    };
                } else if (__value__ == (442810i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 442832i32;
                } else if (__value__ == (442832i32)) {
                    return (_z_442335 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
