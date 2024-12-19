package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_455797:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_455759:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_455326:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_455780:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_455754:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_455635:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_455265:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_454994;
        var _ip_455585:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_455567:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_455322:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_455278:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_455951:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_454994 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 455085i32;
                } else if (__value__ == (455085i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 455095i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 455157i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 455192i32;
                    } else {
                        _gotoNext = 455265i32;
                    };
                } else if (__value__ == (455095i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 455265i32;
                } else if (__value__ == (455157i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 455265i32;
                } else if (__value__ == (455192i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 455221i32;
                    } else {
                        _gotoNext = 455247i32;
                    };
                } else if (__value__ == (455221i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 455247i32;
                } else if (__value__ == (455247i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 455265i32;
                } else if (__value__ == (455265i32)) {
                    _q_455265 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_455278 = stdgo._internal.math.Math_floor.floor(_q_455265);
                    if ((_q_455265 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455303i32;
                    } else {
                        _gotoNext = 455951i32;
                    };
                } else if (__value__ == (455303i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455317i32;
                    } else {
                        _gotoNext = 455567i32;
                    };
                } else if (__value__ == (455317i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_455322 = __tmp__._0;
                        _y2_455326 = __tmp__._1;
                    };
                    return (_y1_455322 * _y2_455326 : stdgo.GoFloat64);
                    _gotoNext = 455567i32;
                } else if (__value__ == (455567i32)) {
                    _signgam_455567 = (1 : stdgo.GoInt);
                    {
                        _ip_455585 = (_p_455278 : stdgo.GoInt64);
                        if ((_ip_455585 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 455611i32;
                        } else {
                            _gotoNext = 455635i32;
                        };
                    };
                } else if (__value__ == (455611i32)) {
                    _signgam_455567 = (-1 : stdgo.GoInt);
                    _gotoNext = 455635i32;
                } else if (__value__ == (455635i32)) {
                    _z_455635 = (_q_455265 - _p_455278 : stdgo.GoFloat64);
                    if ((_z_455635 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455659i32;
                    } else {
                        _gotoNext = 455693i32;
                    };
                } else if (__value__ == (455659i32)) {
                    _p_455278 = (_p_455278 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_455635 = (_q_455265 - _p_455278 : stdgo.GoFloat64);
                    _gotoNext = 455693i32;
                } else if (__value__ == (455693i32)) {
                    _z_455635 = (_q_455265 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_455635 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_455635 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 455723i32;
                    } else {
                        _gotoNext = 455754i32;
                    };
                } else if (__value__ == (455723i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_455567);
                    _gotoNext = 455754i32;
                } else if (__value__ == (455754i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_455265);
                        _sq1_455754 = __tmp__._0;
                        _sq2_455759 = __tmp__._1;
                    };
                    _absz_455780 = stdgo._internal.math.Math_abs.abs(_z_455635);
                    _d_455797 = ((_absz_455780 * _sq1_455754 : stdgo.GoFloat64) * _sq2_455759 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_455797, (0 : stdgo.GoInt))) {
                        _gotoNext = 455836i32;
                    } else {
                        _gotoNext = 455876i32;
                    };
                } else if (__value__ == (455836i32)) {
                    _z_455635 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_455780 : stdgo.GoFloat64) / _sq1_455754 : stdgo.GoFloat64) / _sq2_455759 : stdgo.GoFloat64);
                    _gotoNext = 455898i32;
                } else if (__value__ == (455876i32)) {
                    _gotoNext = 455876i32;
                    _z_455635 = ((3.141592653589793 : stdgo.GoFloat64) / _d_455797 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 455898i32;
                } else if (__value__ == (455898i32)) {
                    return ((_signgam_455567 : stdgo.GoFloat64) * _z_455635 : stdgo.GoFloat64);
                    _gotoNext = 455951i32;
                } else if (__value__ == (455951i32)) {
                    _z_455951 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 455961i32;
                } else if (__value__ == (455961i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455972i32;
                    } else {
                        _gotoNext = 456002i32;
                    };
                } else if (__value__ == (455972i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_455951 = (_z_455951 * _x : stdgo.GoFloat64);
                    _gotoNext = 455961i32;
                } else if (__value__ == (456002i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 456002i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456012i32;
                    } else {
                        _gotoNext = 456078i32;
                    };
                } else if (__value__ == (456012i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456030i32;
                    } else {
                        _gotoNext = 456052i32;
                    };
                } else if (__value__ == (456030i32)) {
                    _gotoNext = 456408i32;
                } else if (__value__ == (456052i32)) {
                    _z_455951 = (_z_455951 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 456002i32;
                } else if (__value__ == (456078i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 456078i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456088i32;
                    } else {
                        _gotoNext = 456154i32;
                    };
                } else if (__value__ == (456088i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456105i32;
                    } else {
                        _gotoNext = 456127i32;
                    };
                } else if (__value__ == (456105i32)) {
                    _gotoNext = 456408i32;
                } else if (__value__ == (456127i32)) {
                    _z_455951 = (_z_455951 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 456078i32;
                } else if (__value__ == (456154i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 456164i32;
                    } else {
                        _gotoNext = 456182i32;
                    };
                } else if (__value__ == (456164i32)) {
                    return _z_455951;
                    _gotoNext = 456182i32;
                } else if (__value__ == (456182i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_455278 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_455265 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_455951 * _p_455278 : stdgo.GoFloat64) / _q_455265 : stdgo.GoFloat64);
                    _gotoNext = 456408i32;
                } else if (__value__ == (456408i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 456426i32;
                    } else {
                        _gotoNext = 456448i32;
                    };
                } else if (__value__ == (456426i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 456448i32;
                } else if (__value__ == (456448i32)) {
                    return (_z_455951 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
