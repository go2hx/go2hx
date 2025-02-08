package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_452067:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_451913:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_451683:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_451442:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_451110;
        var _absz_451896:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_451870:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_451701:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_451438:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_451875:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_451751:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_451394:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_451381:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_451110 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 451201i32;
                } else if (__value__ == (451201i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 451211i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 451273i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 451308i32;
                    } else {
                        _gotoNext = 451381i32;
                    };
                } else if (__value__ == (451211i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 451381i32;
                } else if (__value__ == (451273i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 451381i32;
                } else if (__value__ == (451308i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 451337i32;
                    } else {
                        _gotoNext = 451363i32;
                    };
                } else if (__value__ == (451337i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 451363i32;
                } else if (__value__ == (451363i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 451381i32;
                } else if (__value__ == (451381i32)) {
                    _q_451381 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_451394 = stdgo._internal.math.Math_floor.floor(_q_451381);
                    if ((_q_451381 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 451419i32;
                    } else {
                        _gotoNext = 452067i32;
                    };
                } else if (__value__ == (451419i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 451433i32;
                    } else {
                        _gotoNext = 451683i32;
                    };
                } else if (__value__ == (451433i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_451438 = @:tmpset0 __tmp__._0;
                        _y2_451442 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_451438 * _y2_451442 : stdgo.GoFloat64);
                    _gotoNext = 451683i32;
                } else if (__value__ == (451683i32)) {
                    _signgam_451683 = (1 : stdgo.GoInt);
                    {
                        _ip_451701 = (_p_451394 : stdgo.GoInt64);
                        if ((_ip_451701 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 451727i32;
                        } else {
                            _gotoNext = 451751i32;
                        };
                    };
                } else if (__value__ == (451727i32)) {
                    _signgam_451683 = (-1 : stdgo.GoInt);
                    _gotoNext = 451751i32;
                } else if (__value__ == (451751i32)) {
                    _z_451751 = (_q_451381 - _p_451394 : stdgo.GoFloat64);
                    if ((_z_451751 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 451775i32;
                    } else {
                        _gotoNext = 451809i32;
                    };
                } else if (__value__ == (451775i32)) {
                    _p_451394 = (_p_451394 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_451751 = (_q_451381 - _p_451394 : stdgo.GoFloat64);
                    _gotoNext = 451809i32;
                } else if (__value__ == (451809i32)) {
                    _z_451751 = (_q_451381 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_451751 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_451751 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 451839i32;
                    } else {
                        _gotoNext = 451870i32;
                    };
                } else if (__value__ == (451839i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_451683);
                    _gotoNext = 451870i32;
                } else if (__value__ == (451870i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_451381);
                        _sq1_451870 = @:tmpset0 __tmp__._0;
                        _sq2_451875 = @:tmpset0 __tmp__._1;
                    };
                    _absz_451896 = stdgo._internal.math.Math_abs.abs(_z_451751);
                    _d_451913 = ((_absz_451896 * _sq1_451870 : stdgo.GoFloat64) * _sq2_451875 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_451913, (0 : stdgo.GoInt))) {
                        _gotoNext = 451952i32;
                    } else {
                        _gotoNext = 451992i32;
                    };
                } else if (__value__ == (451952i32)) {
                    _z_451751 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_451896 : stdgo.GoFloat64) / _sq1_451870 : stdgo.GoFloat64) / _sq2_451875 : stdgo.GoFloat64);
                    _gotoNext = 452014i32;
                } else if (__value__ == (451992i32)) {
                    _gotoNext = 451992i32;
                    _z_451751 = ((3.141592653589793 : stdgo.GoFloat64) / _d_451913 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 452014i32;
                } else if (__value__ == (452014i32)) {
                    return ((_signgam_451683 : stdgo.GoFloat64) * _z_451751 : stdgo.GoFloat64);
                    _gotoNext = 452067i32;
                } else if (__value__ == (452067i32)) {
                    _z_452067 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 452077i32;
                } else if (__value__ == (452077i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452088i32;
                    } else {
                        _gotoNext = 452118i32;
                    };
                } else if (__value__ == (452088i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_452067 = (_z_452067 * _x : stdgo.GoFloat64);
                    _gotoNext = 452077i32;
                } else if (__value__ == (452118i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 452118i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452128i32;
                    } else {
                        _gotoNext = 452194i32;
                    };
                } else if (__value__ == (452128i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452146i32;
                    } else {
                        _gotoNext = 452168i32;
                    };
                } else if (__value__ == (452146i32)) {
                    _gotoNext = 452524i32;
                } else if (__value__ == (452168i32)) {
                    _z_452067 = (_z_452067 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 452118i32;
                } else if (__value__ == (452194i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 452194i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452204i32;
                    } else {
                        _gotoNext = 452270i32;
                    };
                } else if (__value__ == (452204i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452221i32;
                    } else {
                        _gotoNext = 452243i32;
                    };
                } else if (__value__ == (452221i32)) {
                    _gotoNext = 452524i32;
                } else if (__value__ == (452243i32)) {
                    _z_452067 = (_z_452067 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 452194i32;
                } else if (__value__ == (452270i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 452280i32;
                    } else {
                        _gotoNext = 452298i32;
                    };
                } else if (__value__ == (452280i32)) {
                    return _z_452067;
                    _gotoNext = 452298i32;
                } else if (__value__ == (452298i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_451394 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_451381 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_452067 * _p_451394 : stdgo.GoFloat64) / _q_451381 : stdgo.GoFloat64);
                    _gotoNext = 452524i32;
                } else if (__value__ == (452524i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 452542i32;
                    } else {
                        _gotoNext = 452564i32;
                    };
                } else if (__value__ == (452542i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 452564i32;
                } else if (__value__ == (452564i32)) {
                    return (_z_452067 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
