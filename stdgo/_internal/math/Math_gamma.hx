package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_392018:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_391992:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_391823:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_391564:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_391560:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_392189:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_391997:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_391873:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_391805:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_391516:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_392035:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_391503:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_391232;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_391232 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 391323i32;
                } else if (__value__ == (391323i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 391333i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 391395i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 391430i32;
                    } else {
                        _gotoNext = 391503i32;
                    };
                } else if (__value__ == (391333i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 391503i32;
                } else if (__value__ == (391395i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 391503i32;
                } else if (__value__ == (391430i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 391459i32;
                    } else {
                        _gotoNext = 391485i32;
                    };
                } else if (__value__ == (391459i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 391485i32;
                } else if (__value__ == (391485i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 391503i32;
                } else if (__value__ == (391503i32)) {
                    _q_391503 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_391516 = stdgo._internal.math.Math_floor.floor(_q_391503);
                    if ((_q_391503 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391541i32;
                    } else {
                        _gotoNext = 392189i32;
                    };
                } else if (__value__ == (391541i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391555i32;
                    } else {
                        _gotoNext = 391805i32;
                    };
                } else if (__value__ == (391555i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_391560 = @:tmpset0 __tmp__._0;
                        _y2_391564 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_391560 * _y2_391564 : stdgo.GoFloat64);
                    _gotoNext = 391805i32;
                } else if (__value__ == (391805i32)) {
                    _signgam_391805 = (1 : stdgo.GoInt);
                    {
                        _ip_391823 = (_p_391516 : stdgo.GoInt64);
                        if ((_ip_391823 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 391849i32;
                        } else {
                            _gotoNext = 391873i32;
                        };
                    };
                } else if (__value__ == (391849i32)) {
                    _signgam_391805 = (-1 : stdgo.GoInt);
                    _gotoNext = 391873i32;
                } else if (__value__ == (391873i32)) {
                    _z_391873 = (_q_391503 - _p_391516 : stdgo.GoFloat64);
                    if ((_z_391873 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391897i32;
                    } else {
                        _gotoNext = 391931i32;
                    };
                } else if (__value__ == (391897i32)) {
                    _p_391516 = (_p_391516 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_391873 = (_q_391503 - _p_391516 : stdgo.GoFloat64);
                    _gotoNext = 391931i32;
                } else if (__value__ == (391931i32)) {
                    _z_391873 = (_q_391503 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_391873 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_391873 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 391961i32;
                    } else {
                        _gotoNext = 391992i32;
                    };
                } else if (__value__ == (391961i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_391805);
                    _gotoNext = 391992i32;
                } else if (__value__ == (391992i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_391503);
                        _sq1_391992 = @:tmpset0 __tmp__._0;
                        _sq2_391997 = @:tmpset0 __tmp__._1;
                    };
                    _absz_392018 = stdgo._internal.math.Math_abs.abs(_z_391873);
                    _d_392035 = ((_absz_392018 * _sq1_391992 : stdgo.GoFloat64) * _sq2_391997 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_392035, (0 : stdgo.GoInt))) {
                        _gotoNext = 392074i32;
                    } else {
                        _gotoNext = 392114i32;
                    };
                } else if (__value__ == (392074i32)) {
                    _z_391873 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_392018 : stdgo.GoFloat64) / _sq1_391992 : stdgo.GoFloat64) / _sq2_391997 : stdgo.GoFloat64);
                    _gotoNext = 392136i32;
                } else if (__value__ == (392114i32)) {
                    _gotoNext = 392114i32;
                    _z_391873 = ((3.141592653589793 : stdgo.GoFloat64) / _d_392035 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 392136i32;
                } else if (__value__ == (392136i32)) {
                    return ((_signgam_391805 : stdgo.GoFloat64) * _z_391873 : stdgo.GoFloat64);
                    _gotoNext = 392189i32;
                } else if (__value__ == (392189i32)) {
                    _z_392189 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 392199i32;
                } else if (__value__ == (392199i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392210i32;
                    } else {
                        _gotoNext = 392240i32;
                    };
                } else if (__value__ == (392210i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_392189 = (_z_392189 * _x : stdgo.GoFloat64);
                    _gotoNext = 392199i32;
                } else if (__value__ == (392240i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 392240i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392250i32;
                    } else {
                        _gotoNext = 392316i32;
                    };
                } else if (__value__ == (392250i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392268i32;
                    } else {
                        _gotoNext = 392290i32;
                    };
                } else if (__value__ == (392268i32)) {
                    _gotoNext = 392646i32;
                } else if (__value__ == (392290i32)) {
                    _z_392189 = (_z_392189 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 392240i32;
                } else if (__value__ == (392316i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 392316i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392326i32;
                    } else {
                        _gotoNext = 392392i32;
                    };
                } else if (__value__ == (392326i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392343i32;
                    } else {
                        _gotoNext = 392365i32;
                    };
                } else if (__value__ == (392343i32)) {
                    _gotoNext = 392646i32;
                } else if (__value__ == (392365i32)) {
                    _z_392189 = (_z_392189 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 392316i32;
                } else if (__value__ == (392392i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 392402i32;
                    } else {
                        _gotoNext = 392420i32;
                    };
                } else if (__value__ == (392402i32)) {
                    return _z_392189;
                    _gotoNext = 392420i32;
                } else if (__value__ == (392420i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_391516 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_391503 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_392189 * _p_391516 : stdgo.GoFloat64) / _q_391503 : stdgo.GoFloat64);
                    _gotoNext = 392646i32;
                } else if (__value__ == (392646i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 392664i32;
                    } else {
                        _gotoNext = 392686i32;
                    };
                } else if (__value__ == (392664i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 392686i32;
                } else if (__value__ == (392686i32)) {
                    return (_z_392189 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
