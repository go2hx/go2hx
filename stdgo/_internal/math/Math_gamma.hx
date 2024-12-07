package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_415635:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_415062;
        var _absz_415848:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_415827:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_415703:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_415865:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_415822:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_415390:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_415346:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_416019:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_415653:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_415394:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_415333:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_415062 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 415153i32;
                } else if (__value__ == (415153i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 415163i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 415225i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 415260i32;
                    } else {
                        _gotoNext = 415333i32;
                    };
                } else if (__value__ == (415163i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 415333i32;
                } else if (__value__ == (415225i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 415333i32;
                } else if (__value__ == (415260i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 415289i32;
                    } else {
                        _gotoNext = 415315i32;
                    };
                } else if (__value__ == (415289i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 415315i32;
                } else if (__value__ == (415315i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 415333i32;
                } else if (__value__ == (415333i32)) {
                    _q_415333 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_415346 = stdgo._internal.math.Math_floor.floor(_q_415333);
                    if ((_q_415333 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 415371i32;
                    } else {
                        _gotoNext = 416019i32;
                    };
                } else if (__value__ == (415371i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 415385i32;
                    } else {
                        _gotoNext = 415635i32;
                    };
                } else if (__value__ == (415385i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_415390 = __tmp__._0;
                        _y2_415394 = __tmp__._1;
                    };
                    return (_y1_415390 * _y2_415394 : stdgo.GoFloat64);
                    _gotoNext = 415635i32;
                } else if (__value__ == (415635i32)) {
                    _signgam_415635 = (1 : stdgo.GoInt);
                    {
                        _ip_415653 = (_p_415346 : stdgo.GoInt64);
                        if ((_ip_415653 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 415679i32;
                        } else {
                            _gotoNext = 415703i32;
                        };
                    };
                } else if (__value__ == (415679i32)) {
                    _signgam_415635 = (-1 : stdgo.GoInt);
                    _gotoNext = 415703i32;
                } else if (__value__ == (415703i32)) {
                    _z_415703 = (_q_415333 - _p_415346 : stdgo.GoFloat64);
                    if ((_z_415703 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 415727i32;
                    } else {
                        _gotoNext = 415761i32;
                    };
                } else if (__value__ == (415727i32)) {
                    _p_415346 = (_p_415346 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_415703 = (_q_415333 - _p_415346 : stdgo.GoFloat64);
                    _gotoNext = 415761i32;
                } else if (__value__ == (415761i32)) {
                    _z_415703 = (_q_415333 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_415703 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_415703 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 415791i32;
                    } else {
                        _gotoNext = 415822i32;
                    };
                } else if (__value__ == (415791i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_415635);
                    _gotoNext = 415822i32;
                } else if (__value__ == (415822i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_415333);
                        _sq1_415822 = __tmp__._0;
                        _sq2_415827 = __tmp__._1;
                    };
                    _absz_415848 = stdgo._internal.math.Math_abs.abs(_z_415703);
                    _d_415865 = ((_absz_415848 * _sq1_415822 : stdgo.GoFloat64) * _sq2_415827 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_415865, (0 : stdgo.GoInt))) {
                        _gotoNext = 415904i32;
                    } else {
                        _gotoNext = 415944i32;
                    };
                } else if (__value__ == (415904i32)) {
                    _z_415703 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_415848 : stdgo.GoFloat64) / _sq1_415822 : stdgo.GoFloat64) / _sq2_415827 : stdgo.GoFloat64);
                    _gotoNext = 415966i32;
                } else if (__value__ == (415944i32)) {
                    _gotoNext = 415944i32;
                    _z_415703 = ((3.141592653589793 : stdgo.GoFloat64) / _d_415865 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 415966i32;
                } else if (__value__ == (415966i32)) {
                    return ((_signgam_415635 : stdgo.GoFloat64) * _z_415703 : stdgo.GoFloat64);
                    _gotoNext = 416019i32;
                } else if (__value__ == (416019i32)) {
                    _z_416019 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 416029i32;
                } else if (__value__ == (416029i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416040i32;
                    } else {
                        _gotoNext = 416070i32;
                    };
                } else if (__value__ == (416040i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_416019 = (_z_416019 * _x : stdgo.GoFloat64);
                    _gotoNext = 416029i32;
                } else if (__value__ == (416070i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 416070i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416080i32;
                    } else {
                        _gotoNext = 416146i32;
                    };
                } else if (__value__ == (416080i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416098i32;
                    } else {
                        _gotoNext = 416120i32;
                    };
                } else if (__value__ == (416098i32)) {
                    _gotoNext = 416476i32;
                } else if (__value__ == (416120i32)) {
                    _z_416019 = (_z_416019 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 416070i32;
                } else if (__value__ == (416146i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 416146i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416156i32;
                    } else {
                        _gotoNext = 416222i32;
                    };
                } else if (__value__ == (416156i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416173i32;
                    } else {
                        _gotoNext = 416195i32;
                    };
                } else if (__value__ == (416173i32)) {
                    _gotoNext = 416476i32;
                } else if (__value__ == (416195i32)) {
                    _z_416019 = (_z_416019 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 416146i32;
                } else if (__value__ == (416222i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 416232i32;
                    } else {
                        _gotoNext = 416250i32;
                    };
                } else if (__value__ == (416232i32)) {
                    return _z_416019;
                    _gotoNext = 416250i32;
                } else if (__value__ == (416250i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_415346 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_415333 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_416019 * _p_415346 : stdgo.GoFloat64) / _q_415333 : stdgo.GoFloat64);
                    _gotoNext = 416476i32;
                } else if (__value__ == (416476i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 416494i32;
                    } else {
                        _gotoNext = 416516i32;
                    };
                } else if (__value__ == (416494i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 416516i32;
                } else if (__value__ == (416516i32)) {
                    return (_z_416019 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
