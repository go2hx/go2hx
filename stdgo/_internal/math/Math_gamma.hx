package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_385685:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_384728;
        var _absz_385514:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_385319:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_385060:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_385531:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_385488:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_385369:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_385056:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_385012:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_384999:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_385493:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_385301:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_384728 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 384819i32;
                } else if (__value__ == (384819i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 384829i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 384891i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 384926i32;
                    } else {
                        _gotoNext = 384999i32;
                    };
                } else if (__value__ == (384829i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 384999i32;
                } else if (__value__ == (384891i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 384999i32;
                } else if (__value__ == (384926i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 384955i32;
                    } else {
                        _gotoNext = 384981i32;
                    };
                } else if (__value__ == (384955i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 384981i32;
                } else if (__value__ == (384981i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 384999i32;
                } else if (__value__ == (384999i32)) {
                    _q_384999 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_385012 = stdgo._internal.math.Math_floor.floor(_q_384999);
                    if ((_q_384999 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385037i32;
                    } else {
                        _gotoNext = 385685i32;
                    };
                } else if (__value__ == (385037i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385051i32;
                    } else {
                        _gotoNext = 385301i32;
                    };
                } else if (__value__ == (385051i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_385056 = __tmp__._0;
                        _y2_385060 = __tmp__._1;
                    };
                    return (_y1_385056 * _y2_385060 : stdgo.GoFloat64);
                    _gotoNext = 385301i32;
                } else if (__value__ == (385301i32)) {
                    _signgam_385301 = (1 : stdgo.GoInt);
                    {
                        _ip_385319 = (_p_385012 : stdgo.GoInt64);
                        if ((_ip_385319 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 385345i32;
                        } else {
                            _gotoNext = 385369i32;
                        };
                    };
                } else if (__value__ == (385345i32)) {
                    _signgam_385301 = (-1 : stdgo.GoInt);
                    _gotoNext = 385369i32;
                } else if (__value__ == (385369i32)) {
                    _z_385369 = (_q_384999 - _p_385012 : stdgo.GoFloat64);
                    if ((_z_385369 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385393i32;
                    } else {
                        _gotoNext = 385427i32;
                    };
                } else if (__value__ == (385393i32)) {
                    _p_385012 = (_p_385012 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_385369 = (_q_384999 - _p_385012 : stdgo.GoFloat64);
                    _gotoNext = 385427i32;
                } else if (__value__ == (385427i32)) {
                    _z_385369 = (_q_384999 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_385369 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_385369 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385457i32;
                    } else {
                        _gotoNext = 385488i32;
                    };
                } else if (__value__ == (385457i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_385301);
                    _gotoNext = 385488i32;
                } else if (__value__ == (385488i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_384999);
                        _sq1_385488 = __tmp__._0;
                        _sq2_385493 = __tmp__._1;
                    };
                    _absz_385514 = stdgo._internal.math.Math_abs.abs(_z_385369);
                    _d_385531 = ((_absz_385514 * _sq1_385488 : stdgo.GoFloat64) * _sq2_385493 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_385531, (0 : stdgo.GoInt))) {
                        _gotoNext = 385570i32;
                    } else {
                        _gotoNext = 385610i32;
                    };
                } else if (__value__ == (385570i32)) {
                    _z_385369 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_385514 : stdgo.GoFloat64) / _sq1_385488 : stdgo.GoFloat64) / _sq2_385493 : stdgo.GoFloat64);
                    _gotoNext = 385632i32;
                } else if (__value__ == (385610i32)) {
                    _gotoNext = 385610i32;
                    _z_385369 = ((3.141592653589793 : stdgo.GoFloat64) / _d_385531 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 385632i32;
                } else if (__value__ == (385632i32)) {
                    return ((_signgam_385301 : stdgo.GoFloat64) * _z_385369 : stdgo.GoFloat64);
                    _gotoNext = 385685i32;
                } else if (__value__ == (385685i32)) {
                    _z_385685 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 385695i32;
                } else if (__value__ == (385695i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385706i32;
                    } else {
                        _gotoNext = 385736i32;
                    };
                } else if (__value__ == (385706i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_385685 = (_z_385685 * _x : stdgo.GoFloat64);
                    _gotoNext = 385695i32;
                } else if (__value__ == (385736i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 385736i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385746i32;
                    } else {
                        _gotoNext = 385812i32;
                    };
                } else if (__value__ == (385746i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385764i32;
                    } else {
                        _gotoNext = 385786i32;
                    };
                } else if (__value__ == (385764i32)) {
                    _gotoNext = 386142i32;
                } else if (__value__ == (385786i32)) {
                    _z_385685 = (_z_385685 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 385736i32;
                } else if (__value__ == (385812i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 385812i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385822i32;
                    } else {
                        _gotoNext = 385888i32;
                    };
                } else if (__value__ == (385822i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385839i32;
                    } else {
                        _gotoNext = 385861i32;
                    };
                } else if (__value__ == (385839i32)) {
                    _gotoNext = 386142i32;
                } else if (__value__ == (385861i32)) {
                    _z_385685 = (_z_385685 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 385812i32;
                } else if (__value__ == (385888i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 385898i32;
                    } else {
                        _gotoNext = 385916i32;
                    };
                } else if (__value__ == (385898i32)) {
                    return _z_385685;
                    _gotoNext = 385916i32;
                } else if (__value__ == (385916i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_385012 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_384999 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_385685 * _p_385012 : stdgo.GoFloat64) / _q_384999 : stdgo.GoFloat64);
                    _gotoNext = 386142i32;
                } else if (__value__ == (386142i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 386160i32;
                    } else {
                        _gotoNext = 386182i32;
                    };
                } else if (__value__ == (386160i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 386182i32;
                } else if (__value__ == (386182i32)) {
                    return (_z_385685 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
