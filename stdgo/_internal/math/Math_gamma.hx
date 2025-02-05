package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _q_448292:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_448021;
        var _d_448824:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_448786:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_448349:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_448807:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_448594:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_448978:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_448353:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_448305:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_448781:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_448662:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_448612:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_448021 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 448112i32;
                } else if (__value__ == (448112i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 448122i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 448184i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 448219i32;
                    } else {
                        _gotoNext = 448292i32;
                    };
                } else if (__value__ == (448122i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 448292i32;
                } else if (__value__ == (448184i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 448292i32;
                } else if (__value__ == (448219i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 448248i32;
                    } else {
                        _gotoNext = 448274i32;
                    };
                } else if (__value__ == (448248i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 448274i32;
                } else if (__value__ == (448274i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 448292i32;
                } else if (__value__ == (448292i32)) {
                    _q_448292 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_448305 = stdgo._internal.math.Math_floor.floor(_q_448292);
                    if ((_q_448292 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448330i32;
                    } else {
                        _gotoNext = 448978i32;
                    };
                } else if (__value__ == (448330i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448344i32;
                    } else {
                        _gotoNext = 448594i32;
                    };
                } else if (__value__ == (448344i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_448349 = @:tmpset0 __tmp__._0;
                        _y2_448353 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_448349 * _y2_448353 : stdgo.GoFloat64);
                    _gotoNext = 448594i32;
                } else if (__value__ == (448594i32)) {
                    _signgam_448594 = (1 : stdgo.GoInt);
                    {
                        _ip_448612 = (_p_448305 : stdgo.GoInt64);
                        if ((_ip_448612 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 448638i32;
                        } else {
                            _gotoNext = 448662i32;
                        };
                    };
                } else if (__value__ == (448638i32)) {
                    _signgam_448594 = (-1 : stdgo.GoInt);
                    _gotoNext = 448662i32;
                } else if (__value__ == (448662i32)) {
                    _z_448662 = (_q_448292 - _p_448305 : stdgo.GoFloat64);
                    if ((_z_448662 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448686i32;
                    } else {
                        _gotoNext = 448720i32;
                    };
                } else if (__value__ == (448686i32)) {
                    _p_448305 = (_p_448305 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_448662 = (_q_448292 - _p_448305 : stdgo.GoFloat64);
                    _gotoNext = 448720i32;
                } else if (__value__ == (448720i32)) {
                    _z_448662 = (_q_448292 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_448662 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_448662 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 448750i32;
                    } else {
                        _gotoNext = 448781i32;
                    };
                } else if (__value__ == (448750i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_448594);
                    _gotoNext = 448781i32;
                } else if (__value__ == (448781i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_448292);
                        _sq1_448781 = @:tmpset0 __tmp__._0;
                        _sq2_448786 = @:tmpset0 __tmp__._1;
                    };
                    _absz_448807 = stdgo._internal.math.Math_abs.abs(_z_448662);
                    _d_448824 = ((_absz_448807 * _sq1_448781 : stdgo.GoFloat64) * _sq2_448786 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_448824, (0 : stdgo.GoInt))) {
                        _gotoNext = 448863i32;
                    } else {
                        _gotoNext = 448903i32;
                    };
                } else if (__value__ == (448863i32)) {
                    _z_448662 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_448807 : stdgo.GoFloat64) / _sq1_448781 : stdgo.GoFloat64) / _sq2_448786 : stdgo.GoFloat64);
                    _gotoNext = 448925i32;
                } else if (__value__ == (448903i32)) {
                    _gotoNext = 448903i32;
                    _z_448662 = ((3.141592653589793 : stdgo.GoFloat64) / _d_448824 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 448925i32;
                } else if (__value__ == (448925i32)) {
                    return ((_signgam_448594 : stdgo.GoFloat64) * _z_448662 : stdgo.GoFloat64);
                    _gotoNext = 448978i32;
                } else if (__value__ == (448978i32)) {
                    _z_448978 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 448988i32;
                } else if (__value__ == (448988i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448999i32;
                    } else {
                        _gotoNext = 449029i32;
                    };
                } else if (__value__ == (448999i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_448978 = (_z_448978 * _x : stdgo.GoFloat64);
                    _gotoNext = 448988i32;
                } else if (__value__ == (449029i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 449029i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449039i32;
                    } else {
                        _gotoNext = 449105i32;
                    };
                } else if (__value__ == (449039i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449057i32;
                    } else {
                        _gotoNext = 449079i32;
                    };
                } else if (__value__ == (449057i32)) {
                    _gotoNext = 449435i32;
                } else if (__value__ == (449079i32)) {
                    _z_448978 = (_z_448978 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 449029i32;
                } else if (__value__ == (449105i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 449105i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449115i32;
                    } else {
                        _gotoNext = 449181i32;
                    };
                } else if (__value__ == (449115i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449132i32;
                    } else {
                        _gotoNext = 449154i32;
                    };
                } else if (__value__ == (449132i32)) {
                    _gotoNext = 449435i32;
                } else if (__value__ == (449154i32)) {
                    _z_448978 = (_z_448978 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 449105i32;
                } else if (__value__ == (449181i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 449191i32;
                    } else {
                        _gotoNext = 449209i32;
                    };
                } else if (__value__ == (449191i32)) {
                    return _z_448978;
                    _gotoNext = 449209i32;
                } else if (__value__ == (449209i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_448305 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_448292 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_448978 * _p_448305 : stdgo.GoFloat64) / _q_448292 : stdgo.GoFloat64);
                    _gotoNext = 449435i32;
                } else if (__value__ == (449435i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 449453i32;
                    } else {
                        _gotoNext = 449475i32;
                    };
                } else if (__value__ == (449453i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 449475i32;
                } else if (__value__ == (449475i32)) {
                    return (_z_448978 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
