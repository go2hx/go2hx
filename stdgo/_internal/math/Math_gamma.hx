package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_681929:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_681427:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_681946:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_681471:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_681143;
        var _sq2_681908:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_681475:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_681716:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_681414:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_681784:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_681734:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _z_682100:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_681903:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_681143 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 681234i32;
                } else if (__value__ == (681234i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 681244i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 681306i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 681341i32;
                    } else {
                        _gotoNext = 681414i32;
                    };
                } else if (__value__ == (681244i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 681414i32;
                } else if (__value__ == (681306i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 681414i32;
                } else if (__value__ == (681341i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 681370i32;
                    } else {
                        _gotoNext = 681396i32;
                    };
                } else if (__value__ == (681370i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 681396i32;
                } else if (__value__ == (681396i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 681414i32;
                } else if (__value__ == (681414i32)) {
                    _q_681414 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_681427 = stdgo._internal.math.Math_floor.floor(_q_681414);
                    if ((_q_681414 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 681452i32;
                    } else {
                        _gotoNext = 682100i32;
                    };
                } else if (__value__ == (681452i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 681466i32;
                    } else {
                        _gotoNext = 681716i32;
                    };
                } else if (__value__ == (681466i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_681471 = @:tmpset0 __tmp__._0;
                        _y2_681475 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_681471 * _y2_681475 : stdgo.GoFloat64);
                    _gotoNext = 681716i32;
                } else if (__value__ == (681716i32)) {
                    _signgam_681716 = (1 : stdgo.GoInt);
                    {
                        _ip_681734 = (_p_681427 : stdgo.GoInt64);
                        if ((_ip_681734 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 681760i32;
                        } else {
                            _gotoNext = 681784i32;
                        };
                    };
                } else if (__value__ == (681760i32)) {
                    _signgam_681716 = (-1 : stdgo.GoInt);
                    _gotoNext = 681784i32;
                } else if (__value__ == (681784i32)) {
                    _z_681784 = (_q_681414 - _p_681427 : stdgo.GoFloat64);
                    if ((_z_681784 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 681808i32;
                    } else {
                        _gotoNext = 681842i32;
                    };
                } else if (__value__ == (681808i32)) {
                    _p_681427 = (_p_681427 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_681784 = (_q_681414 - _p_681427 : stdgo.GoFloat64);
                    _gotoNext = 681842i32;
                } else if (__value__ == (681842i32)) {
                    _z_681784 = (_q_681414 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_681784 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_681784 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 681872i32;
                    } else {
                        _gotoNext = 681903i32;
                    };
                } else if (__value__ == (681872i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_681716);
                    _gotoNext = 681903i32;
                } else if (__value__ == (681903i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_681414);
                        _sq1_681903 = @:tmpset0 __tmp__._0;
                        _sq2_681908 = @:tmpset0 __tmp__._1;
                    };
                    _absz_681929 = stdgo._internal.math.Math_abs.abs(_z_681784);
                    _d_681946 = ((_absz_681929 * _sq1_681903 : stdgo.GoFloat64) * _sq2_681908 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_681946, (0 : stdgo.GoInt))) {
                        _gotoNext = 681985i32;
                    } else {
                        _gotoNext = 682025i32;
                    };
                } else if (__value__ == (681985i32)) {
                    _z_681784 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_681929 : stdgo.GoFloat64) / _sq1_681903 : stdgo.GoFloat64) / _sq2_681908 : stdgo.GoFloat64);
                    _gotoNext = 682047i32;
                } else if (__value__ == (682025i32)) {
                    _gotoNext = 682025i32;
                    _z_681784 = ((3.141592653589793 : stdgo.GoFloat64) / _d_681946 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 682047i32;
                } else if (__value__ == (682047i32)) {
                    return ((_signgam_681716 : stdgo.GoFloat64) * _z_681784 : stdgo.GoFloat64);
                    _gotoNext = 682100i32;
                } else if (__value__ == (682100i32)) {
                    _z_682100 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 682110i32;
                } else if (__value__ == (682110i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 682121i32;
                    } else {
                        _gotoNext = 682151i32;
                    };
                } else if (__value__ == (682121i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_682100 = (_z_682100 * _x : stdgo.GoFloat64);
                    _gotoNext = 682110i32;
                } else if (__value__ == (682151i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 682151i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 682161i32;
                    } else {
                        _gotoNext = 682227i32;
                    };
                } else if (__value__ == (682161i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 682179i32;
                    } else {
                        _gotoNext = 682201i32;
                    };
                } else if (__value__ == (682179i32)) {
                    _gotoNext = 682557i32;
                } else if (__value__ == (682201i32)) {
                    _z_682100 = (_z_682100 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 682151i32;
                } else if (__value__ == (682227i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 682227i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 682237i32;
                    } else {
                        _gotoNext = 682303i32;
                    };
                } else if (__value__ == (682237i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 682254i32;
                    } else {
                        _gotoNext = 682276i32;
                    };
                } else if (__value__ == (682254i32)) {
                    _gotoNext = 682557i32;
                } else if (__value__ == (682276i32)) {
                    _z_682100 = (_z_682100 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 682227i32;
                } else if (__value__ == (682303i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 682313i32;
                    } else {
                        _gotoNext = 682331i32;
                    };
                } else if (__value__ == (682313i32)) {
                    return _z_682100;
                    _gotoNext = 682331i32;
                } else if (__value__ == (682331i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_681427 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_681414 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_682100 * _p_681427 : stdgo.GoFloat64) / _q_681414 : stdgo.GoFloat64);
                    _gotoNext = 682557i32;
                } else if (__value__ == (682557i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 682575i32;
                    } else {
                        _gotoNext = 682597i32;
                    };
                } else if (__value__ == (682575i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 682597i32;
                } else if (__value__ == (682597i32)) {
                    return (_z_682100 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
