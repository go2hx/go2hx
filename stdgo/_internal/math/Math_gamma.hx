package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_560583:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_560557:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_560370:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_560081:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_560754:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_560562:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_560129:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_560068:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_559797;
        var _ip_560388:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_560125:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_560600:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_560438:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_559797 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 559888i32;
                } else if (__value__ == (559888i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 559898i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 559960i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 559995i32;
                    } else {
                        _gotoNext = 560068i32;
                    };
                } else if (__value__ == (559898i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 560068i32;
                } else if (__value__ == (559960i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 560068i32;
                } else if (__value__ == (559995i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 560024i32;
                    } else {
                        _gotoNext = 560050i32;
                    };
                } else if (__value__ == (560024i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 560050i32;
                } else if (__value__ == (560050i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 560068i32;
                } else if (__value__ == (560068i32)) {
                    _q_560068 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_560081 = stdgo._internal.math.Math_floor.floor(_q_560068);
                    if ((_q_560068 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 560106i32;
                    } else {
                        _gotoNext = 560754i32;
                    };
                } else if (__value__ == (560106i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 560120i32;
                    } else {
                        _gotoNext = 560370i32;
                    };
                } else if (__value__ == (560120i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_560125 = @:tmpset0 __tmp__._0;
                        _y2_560129 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_560125 * _y2_560129 : stdgo.GoFloat64);
                    _gotoNext = 560370i32;
                } else if (__value__ == (560370i32)) {
                    _signgam_560370 = (1 : stdgo.GoInt);
                    {
                        _ip_560388 = (_p_560081 : stdgo.GoInt64);
                        if ((_ip_560388 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 560414i32;
                        } else {
                            _gotoNext = 560438i32;
                        };
                    };
                } else if (__value__ == (560414i32)) {
                    _signgam_560370 = (-1 : stdgo.GoInt);
                    _gotoNext = 560438i32;
                } else if (__value__ == (560438i32)) {
                    _z_560438 = (_q_560068 - _p_560081 : stdgo.GoFloat64);
                    if ((_z_560438 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 560462i32;
                    } else {
                        _gotoNext = 560496i32;
                    };
                } else if (__value__ == (560462i32)) {
                    _p_560081 = (_p_560081 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_560438 = (_q_560068 - _p_560081 : stdgo.GoFloat64);
                    _gotoNext = 560496i32;
                } else if (__value__ == (560496i32)) {
                    _z_560438 = (_q_560068 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_560438 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_560438 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 560526i32;
                    } else {
                        _gotoNext = 560557i32;
                    };
                } else if (__value__ == (560526i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_560370);
                    _gotoNext = 560557i32;
                } else if (__value__ == (560557i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_560068);
                        _sq1_560557 = @:tmpset0 __tmp__._0;
                        _sq2_560562 = @:tmpset0 __tmp__._1;
                    };
                    _absz_560583 = stdgo._internal.math.Math_abs.abs(_z_560438);
                    _d_560600 = ((_absz_560583 * _sq1_560557 : stdgo.GoFloat64) * _sq2_560562 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_560600, (0 : stdgo.GoInt))) {
                        _gotoNext = 560639i32;
                    } else {
                        _gotoNext = 560679i32;
                    };
                } else if (__value__ == (560639i32)) {
                    _z_560438 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_560583 : stdgo.GoFloat64) / _sq1_560557 : stdgo.GoFloat64) / _sq2_560562 : stdgo.GoFloat64);
                    _gotoNext = 560701i32;
                } else if (__value__ == (560679i32)) {
                    _gotoNext = 560679i32;
                    _z_560438 = ((3.141592653589793 : stdgo.GoFloat64) / _d_560600 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 560701i32;
                } else if (__value__ == (560701i32)) {
                    return ((_signgam_560370 : stdgo.GoFloat64) * _z_560438 : stdgo.GoFloat64);
                    _gotoNext = 560754i32;
                } else if (__value__ == (560754i32)) {
                    _z_560754 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 560764i32;
                } else if (__value__ == (560764i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 560775i32;
                    } else {
                        _gotoNext = 560805i32;
                    };
                } else if (__value__ == (560775i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_560754 = (_z_560754 * _x : stdgo.GoFloat64);
                    _gotoNext = 560764i32;
                } else if (__value__ == (560805i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 560805i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 560815i32;
                    } else {
                        _gotoNext = 560881i32;
                    };
                } else if (__value__ == (560815i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 560833i32;
                    } else {
                        _gotoNext = 560855i32;
                    };
                } else if (__value__ == (560833i32)) {
                    _gotoNext = 561211i32;
                } else if (__value__ == (560855i32)) {
                    _z_560754 = (_z_560754 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 560805i32;
                } else if (__value__ == (560881i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 560881i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 560891i32;
                    } else {
                        _gotoNext = 560957i32;
                    };
                } else if (__value__ == (560891i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 560908i32;
                    } else {
                        _gotoNext = 560930i32;
                    };
                } else if (__value__ == (560908i32)) {
                    _gotoNext = 561211i32;
                } else if (__value__ == (560930i32)) {
                    _z_560754 = (_z_560754 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 560881i32;
                } else if (__value__ == (560957i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 560967i32;
                    } else {
                        _gotoNext = 560985i32;
                    };
                } else if (__value__ == (560967i32)) {
                    return _z_560754;
                    _gotoNext = 560985i32;
                } else if (__value__ == (560985i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_560081 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_560068 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_560754 * _p_560081 : stdgo.GoFloat64) / _q_560068 : stdgo.GoFloat64);
                    _gotoNext = 561211i32;
                } else if (__value__ == (561211i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 561229i32;
                    } else {
                        _gotoNext = 561251i32;
                    };
                } else if (__value__ == (561229i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 561251i32;
                } else if (__value__ == (561251i32)) {
                    return (_z_560754 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
