package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_435939:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_435582:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_436101:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_436063:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_435630:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_435626:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_436255:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_436058:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_435889:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_435871:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_435298;
        var _absz_436084:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_435569:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_435298 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 435389i32;
                } else if (__value__ == (435389i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 435399i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 435461i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 435496i32;
                    } else {
                        _gotoNext = 435569i32;
                    };
                } else if (__value__ == (435399i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 435569i32;
                } else if (__value__ == (435461i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 435569i32;
                } else if (__value__ == (435496i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 435525i32;
                    } else {
                        _gotoNext = 435551i32;
                    };
                } else if (__value__ == (435525i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 435551i32;
                } else if (__value__ == (435551i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 435569i32;
                } else if (__value__ == (435569i32)) {
                    _q_435569 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_435582 = stdgo._internal.math.Math_floor.floor(_q_435569);
                    if ((_q_435569 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 435607i32;
                    } else {
                        _gotoNext = 436255i32;
                    };
                } else if (__value__ == (435607i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 435621i32;
                    } else {
                        _gotoNext = 435871i32;
                    };
                } else if (__value__ == (435621i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_435626 = __tmp__._0;
                        _y2_435630 = __tmp__._1;
                    };
                    return (_y1_435626 * _y2_435630 : stdgo.GoFloat64);
                    _gotoNext = 435871i32;
                } else if (__value__ == (435871i32)) {
                    _signgam_435871 = (1 : stdgo.GoInt);
                    {
                        _ip_435889 = (_p_435582 : stdgo.GoInt64);
                        if ((_ip_435889 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 435915i32;
                        } else {
                            _gotoNext = 435939i32;
                        };
                    };
                } else if (__value__ == (435915i32)) {
                    _signgam_435871 = (-1 : stdgo.GoInt);
                    _gotoNext = 435939i32;
                } else if (__value__ == (435939i32)) {
                    _z_435939 = (_q_435569 - _p_435582 : stdgo.GoFloat64);
                    if ((_z_435939 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 435963i32;
                    } else {
                        _gotoNext = 435997i32;
                    };
                } else if (__value__ == (435963i32)) {
                    _p_435582 = (_p_435582 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_435939 = (_q_435569 - _p_435582 : stdgo.GoFloat64);
                    _gotoNext = 435997i32;
                } else if (__value__ == (435997i32)) {
                    _z_435939 = (_q_435569 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_435939 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_435939 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 436027i32;
                    } else {
                        _gotoNext = 436058i32;
                    };
                } else if (__value__ == (436027i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_435871);
                    _gotoNext = 436058i32;
                } else if (__value__ == (436058i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_435569);
                        _sq1_436058 = __tmp__._0;
                        _sq2_436063 = __tmp__._1;
                    };
                    _absz_436084 = stdgo._internal.math.Math_abs.abs(_z_435939);
                    _d_436101 = ((_absz_436084 * _sq1_436058 : stdgo.GoFloat64) * _sq2_436063 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_436101, (0 : stdgo.GoInt))) {
                        _gotoNext = 436140i32;
                    } else {
                        _gotoNext = 436180i32;
                    };
                } else if (__value__ == (436140i32)) {
                    _z_435939 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_436084 : stdgo.GoFloat64) / _sq1_436058 : stdgo.GoFloat64) / _sq2_436063 : stdgo.GoFloat64);
                    _gotoNext = 436202i32;
                } else if (__value__ == (436180i32)) {
                    _gotoNext = 436180i32;
                    _z_435939 = ((3.141592653589793 : stdgo.GoFloat64) / _d_436101 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 436202i32;
                } else if (__value__ == (436202i32)) {
                    return ((_signgam_435871 : stdgo.GoFloat64) * _z_435939 : stdgo.GoFloat64);
                    _gotoNext = 436255i32;
                } else if (__value__ == (436255i32)) {
                    _z_436255 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 436265i32;
                } else if (__value__ == (436265i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 436276i32;
                    } else {
                        _gotoNext = 436306i32;
                    };
                } else if (__value__ == (436276i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_436255 = (_z_436255 * _x : stdgo.GoFloat64);
                    _gotoNext = 436265i32;
                } else if (__value__ == (436306i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 436306i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 436316i32;
                    } else {
                        _gotoNext = 436382i32;
                    };
                } else if (__value__ == (436316i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 436334i32;
                    } else {
                        _gotoNext = 436356i32;
                    };
                } else if (__value__ == (436334i32)) {
                    _gotoNext = 436712i32;
                } else if (__value__ == (436356i32)) {
                    _z_436255 = (_z_436255 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 436306i32;
                } else if (__value__ == (436382i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 436382i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 436392i32;
                    } else {
                        _gotoNext = 436458i32;
                    };
                } else if (__value__ == (436392i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 436409i32;
                    } else {
                        _gotoNext = 436431i32;
                    };
                } else if (__value__ == (436409i32)) {
                    _gotoNext = 436712i32;
                } else if (__value__ == (436431i32)) {
                    _z_436255 = (_z_436255 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 436382i32;
                } else if (__value__ == (436458i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 436468i32;
                    } else {
                        _gotoNext = 436486i32;
                    };
                } else if (__value__ == (436468i32)) {
                    return _z_436255;
                    _gotoNext = 436486i32;
                } else if (__value__ == (436486i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_435582 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_435569 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_436255 * _p_435582 : stdgo.GoFloat64) / _q_435569 : stdgo.GoFloat64);
                    _gotoNext = 436712i32;
                } else if (__value__ == (436712i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 436730i32;
                    } else {
                        _gotoNext = 436752i32;
                    };
                } else if (__value__ == (436730i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 436752i32;
                } else if (__value__ == (436752i32)) {
                    return (_z_436255 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
