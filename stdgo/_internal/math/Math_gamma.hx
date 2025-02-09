package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_439819:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_439802:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_439781:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_439776:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_439657:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_439344:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_439287:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_439973:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_439589:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_439016;
        var _y2_439348:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_439300:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_439607:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_439016 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 439107i32;
                } else if (__value__ == (439107i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 439117i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 439179i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 439214i32;
                    } else {
                        _gotoNext = 439287i32;
                    };
                } else if (__value__ == (439117i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 439287i32;
                } else if (__value__ == (439179i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 439287i32;
                } else if (__value__ == (439214i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 439243i32;
                    } else {
                        _gotoNext = 439269i32;
                    };
                } else if (__value__ == (439243i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 439269i32;
                } else if (__value__ == (439269i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 439287i32;
                } else if (__value__ == (439287i32)) {
                    _q_439287 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_439300 = stdgo._internal.math.Math_floor.floor(_q_439287);
                    if ((_q_439287 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 439325i32;
                    } else {
                        _gotoNext = 439973i32;
                    };
                } else if (__value__ == (439325i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 439339i32;
                    } else {
                        _gotoNext = 439589i32;
                    };
                } else if (__value__ == (439339i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_439344 = @:tmpset0 __tmp__._0;
                        _y2_439348 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_439344 * _y2_439348 : stdgo.GoFloat64);
                    _gotoNext = 439589i32;
                } else if (__value__ == (439589i32)) {
                    _signgam_439589 = (1 : stdgo.GoInt);
                    {
                        _ip_439607 = (_p_439300 : stdgo.GoInt64);
                        if ((_ip_439607 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 439633i32;
                        } else {
                            _gotoNext = 439657i32;
                        };
                    };
                } else if (__value__ == (439633i32)) {
                    _signgam_439589 = (-1 : stdgo.GoInt);
                    _gotoNext = 439657i32;
                } else if (__value__ == (439657i32)) {
                    _z_439657 = (_q_439287 - _p_439300 : stdgo.GoFloat64);
                    if ((_z_439657 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 439681i32;
                    } else {
                        _gotoNext = 439715i32;
                    };
                } else if (__value__ == (439681i32)) {
                    _p_439300 = (_p_439300 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_439657 = (_q_439287 - _p_439300 : stdgo.GoFloat64);
                    _gotoNext = 439715i32;
                } else if (__value__ == (439715i32)) {
                    _z_439657 = (_q_439287 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_439657 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_439657 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 439745i32;
                    } else {
                        _gotoNext = 439776i32;
                    };
                } else if (__value__ == (439745i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_439589);
                    _gotoNext = 439776i32;
                } else if (__value__ == (439776i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_439287);
                        _sq1_439776 = @:tmpset0 __tmp__._0;
                        _sq2_439781 = @:tmpset0 __tmp__._1;
                    };
                    _absz_439802 = stdgo._internal.math.Math_abs.abs(_z_439657);
                    _d_439819 = ((_absz_439802 * _sq1_439776 : stdgo.GoFloat64) * _sq2_439781 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_439819, (0 : stdgo.GoInt))) {
                        _gotoNext = 439858i32;
                    } else {
                        _gotoNext = 439898i32;
                    };
                } else if (__value__ == (439858i32)) {
                    _z_439657 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_439802 : stdgo.GoFloat64) / _sq1_439776 : stdgo.GoFloat64) / _sq2_439781 : stdgo.GoFloat64);
                    _gotoNext = 439920i32;
                } else if (__value__ == (439898i32)) {
                    _gotoNext = 439898i32;
                    _z_439657 = ((3.141592653589793 : stdgo.GoFloat64) / _d_439819 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 439920i32;
                } else if (__value__ == (439920i32)) {
                    return ((_signgam_439589 : stdgo.GoFloat64) * _z_439657 : stdgo.GoFloat64);
                    _gotoNext = 439973i32;
                } else if (__value__ == (439973i32)) {
                    _z_439973 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 439983i32;
                } else if (__value__ == (439983i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 439994i32;
                    } else {
                        _gotoNext = 440024i32;
                    };
                } else if (__value__ == (439994i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_439973 = (_z_439973 * _x : stdgo.GoFloat64);
                    _gotoNext = 439983i32;
                } else if (__value__ == (440024i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 440024i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 440034i32;
                    } else {
                        _gotoNext = 440100i32;
                    };
                } else if (__value__ == (440034i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 440052i32;
                    } else {
                        _gotoNext = 440074i32;
                    };
                } else if (__value__ == (440052i32)) {
                    _gotoNext = 440430i32;
                } else if (__value__ == (440074i32)) {
                    _z_439973 = (_z_439973 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 440024i32;
                } else if (__value__ == (440100i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 440100i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 440110i32;
                    } else {
                        _gotoNext = 440176i32;
                    };
                } else if (__value__ == (440110i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 440127i32;
                    } else {
                        _gotoNext = 440149i32;
                    };
                } else if (__value__ == (440127i32)) {
                    _gotoNext = 440430i32;
                } else if (__value__ == (440149i32)) {
                    _z_439973 = (_z_439973 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 440100i32;
                } else if (__value__ == (440176i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 440186i32;
                    } else {
                        _gotoNext = 440204i32;
                    };
                } else if (__value__ == (440186i32)) {
                    return _z_439973;
                    _gotoNext = 440204i32;
                } else if (__value__ == (440204i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_439300 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_439287 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_439973 * _p_439300 : stdgo.GoFloat64) / _q_439287 : stdgo.GoFloat64);
                    _gotoNext = 440430i32;
                } else if (__value__ == (440430i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 440448i32;
                    } else {
                        _gotoNext = 440470i32;
                    };
                } else if (__value__ == (440448i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 440470i32;
                } else if (__value__ == (440470i32)) {
                    return (_z_439973 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
