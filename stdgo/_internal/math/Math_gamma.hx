package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_511483:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_511440:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_510964:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_511271:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_511008:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_511637:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_511321:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_510680;
        var _signgam_511253:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_511012:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_510951:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_511466:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_511445:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_510680 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 510771i32;
                } else if (__value__ == (510771i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 510781i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 510843i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 510878i32;
                    } else {
                        _gotoNext = 510951i32;
                    };
                } else if (__value__ == (510781i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 510951i32;
                } else if (__value__ == (510843i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 510951i32;
                } else if (__value__ == (510878i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 510907i32;
                    } else {
                        _gotoNext = 510933i32;
                    };
                } else if (__value__ == (510907i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 510933i32;
                } else if (__value__ == (510933i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 510951i32;
                } else if (__value__ == (510951i32)) {
                    _q_510951 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_510964 = stdgo._internal.math.Math_floor.floor(_q_510951);
                    if ((_q_510951 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 510989i32;
                    } else {
                        _gotoNext = 511637i32;
                    };
                } else if (__value__ == (510989i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511003i32;
                    } else {
                        _gotoNext = 511253i32;
                    };
                } else if (__value__ == (511003i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_511008 = __tmp__._0;
                        _y2_511012 = __tmp__._1;
                    };
                    return (_y1_511008 * _y2_511012 : stdgo.GoFloat64);
                    _gotoNext = 511253i32;
                } else if (__value__ == (511253i32)) {
                    _signgam_511253 = (1 : stdgo.GoInt);
                    {
                        _ip_511271 = (_p_510964 : stdgo.GoInt64);
                        if ((_ip_511271 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 511297i32;
                        } else {
                            _gotoNext = 511321i32;
                        };
                    };
                } else if (__value__ == (511297i32)) {
                    _signgam_511253 = (-1 : stdgo.GoInt);
                    _gotoNext = 511321i32;
                } else if (__value__ == (511321i32)) {
                    _z_511321 = (_q_510951 - _p_510964 : stdgo.GoFloat64);
                    if ((_z_511321 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511345i32;
                    } else {
                        _gotoNext = 511379i32;
                    };
                } else if (__value__ == (511345i32)) {
                    _p_510964 = (_p_510964 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_511321 = (_q_510951 - _p_510964 : stdgo.GoFloat64);
                    _gotoNext = 511379i32;
                } else if (__value__ == (511379i32)) {
                    _z_511321 = (_q_510951 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_511321 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_511321 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 511409i32;
                    } else {
                        _gotoNext = 511440i32;
                    };
                } else if (__value__ == (511409i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_511253);
                    _gotoNext = 511440i32;
                } else if (__value__ == (511440i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_510951);
                        _sq1_511440 = __tmp__._0;
                        _sq2_511445 = __tmp__._1;
                    };
                    _absz_511466 = stdgo._internal.math.Math_abs.abs(_z_511321);
                    _d_511483 = ((_absz_511466 * _sq1_511440 : stdgo.GoFloat64) * _sq2_511445 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_511483, (0 : stdgo.GoInt))) {
                        _gotoNext = 511522i32;
                    } else {
                        _gotoNext = 511562i32;
                    };
                } else if (__value__ == (511522i32)) {
                    _z_511321 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_511466 : stdgo.GoFloat64) / _sq1_511440 : stdgo.GoFloat64) / _sq2_511445 : stdgo.GoFloat64);
                    _gotoNext = 511584i32;
                } else if (__value__ == (511562i32)) {
                    _z_511321 = ((3.141592653589793 : stdgo.GoFloat64) / _d_511483 : stdgo.GoFloat64);
                    _gotoNext = 511584i32;
                } else if (__value__ == (511584i32)) {
                    return ((_signgam_511253 : stdgo.GoFloat64) * _z_511321 : stdgo.GoFloat64);
                    _gotoNext = 511637i32;
                } else if (__value__ == (511637i32)) {
                    _z_511637 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 511647i32;
                } else if (__value__ == (511647i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511658i32;
                    } else {
                        _gotoNext = 511688i32;
                    };
                } else if (__value__ == (511658i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_511637 = (_z_511637 * _x : stdgo.GoFloat64);
                    _gotoNext = 511647i32;
                } else if (__value__ == (511688i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 511688i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511698i32;
                    } else {
                        _gotoNext = 511764i32;
                    };
                } else if (__value__ == (511698i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511716i32;
                    } else {
                        _gotoNext = 511738i32;
                    };
                } else if (__value__ == (511716i32)) {
                    _gotoNext = 512094i32;
                } else if (__value__ == (511738i32)) {
                    _z_511637 = (_z_511637 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 511688i32;
                } else if (__value__ == (511764i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 511764i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511774i32;
                    } else {
                        _gotoNext = 511840i32;
                    };
                } else if (__value__ == (511774i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511791i32;
                    } else {
                        _gotoNext = 511813i32;
                    };
                } else if (__value__ == (511791i32)) {
                    _gotoNext = 512094i32;
                } else if (__value__ == (511813i32)) {
                    _z_511637 = (_z_511637 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 511764i32;
                } else if (__value__ == (511840i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 511850i32;
                    } else {
                        _gotoNext = 511868i32;
                    };
                } else if (__value__ == (511850i32)) {
                    return _z_511637;
                    _gotoNext = 511868i32;
                } else if (__value__ == (511868i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_510964 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_510951 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_511637 * _p_510964 : stdgo.GoFloat64) / _q_510951 : stdgo.GoFloat64);
                    _gotoNext = 512094i32;
                } else if (__value__ == (512094i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 512112i32;
                    } else {
                        _gotoNext = 512134i32;
                    };
                } else if (__value__ == (512112i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 512134i32;
                } else if (__value__ == (512134i32)) {
                    return (_z_511637 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
