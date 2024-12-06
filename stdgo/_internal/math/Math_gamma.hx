package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _q_512410:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_512925:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_512899:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_512471:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_512139;
        var _sq2_512904:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_512780:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_512730:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_512467:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_512423:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_513096:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_512942:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_512712:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_512139 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 512230i32;
                } else if (__value__ == (512230i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 512240i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 512302i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 512337i32;
                    } else {
                        _gotoNext = 512410i32;
                    };
                } else if (__value__ == (512240i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 512410i32;
                } else if (__value__ == (512302i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 512410i32;
                } else if (__value__ == (512337i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 512366i32;
                    } else {
                        _gotoNext = 512392i32;
                    };
                } else if (__value__ == (512366i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 512392i32;
                } else if (__value__ == (512392i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 512410i32;
                } else if (__value__ == (512410i32)) {
                    _q_512410 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_512423 = stdgo._internal.math.Math_floor.floor(_q_512410);
                    if ((_q_512410 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512448i32;
                    } else {
                        _gotoNext = 513096i32;
                    };
                } else if (__value__ == (512448i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512462i32;
                    } else {
                        _gotoNext = 512712i32;
                    };
                } else if (__value__ == (512462i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_512467 = __tmp__._0;
                        _y2_512471 = __tmp__._1;
                    };
                    return (_y1_512467 * _y2_512471 : stdgo.GoFloat64);
                    _gotoNext = 512712i32;
                } else if (__value__ == (512712i32)) {
                    _signgam_512712 = (1 : stdgo.GoInt);
                    {
                        _ip_512730 = (_p_512423 : stdgo.GoInt64);
                        if ((_ip_512730 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 512756i32;
                        } else {
                            _gotoNext = 512780i32;
                        };
                    };
                } else if (__value__ == (512756i32)) {
                    _signgam_512712 = (-1 : stdgo.GoInt);
                    _gotoNext = 512780i32;
                } else if (__value__ == (512780i32)) {
                    _z_512780 = (_q_512410 - _p_512423 : stdgo.GoFloat64);
                    if ((_z_512780 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512804i32;
                    } else {
                        _gotoNext = 512838i32;
                    };
                } else if (__value__ == (512804i32)) {
                    _p_512423 = (_p_512423 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_512780 = (_q_512410 - _p_512423 : stdgo.GoFloat64);
                    _gotoNext = 512838i32;
                } else if (__value__ == (512838i32)) {
                    _z_512780 = (_q_512410 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_512780 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_512780 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 512868i32;
                    } else {
                        _gotoNext = 512899i32;
                    };
                } else if (__value__ == (512868i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_512712);
                    _gotoNext = 512899i32;
                } else if (__value__ == (512899i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_512410);
                        _sq1_512899 = __tmp__._0;
                        _sq2_512904 = __tmp__._1;
                    };
                    _absz_512925 = stdgo._internal.math.Math_abs.abs(_z_512780);
                    _d_512942 = ((_absz_512925 * _sq1_512899 : stdgo.GoFloat64) * _sq2_512904 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_512942, (0 : stdgo.GoInt))) {
                        _gotoNext = 512981i32;
                    } else {
                        _gotoNext = 513021i32;
                    };
                } else if (__value__ == (512981i32)) {
                    _z_512780 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_512925 : stdgo.GoFloat64) / _sq1_512899 : stdgo.GoFloat64) / _sq2_512904 : stdgo.GoFloat64);
                    _gotoNext = 513043i32;
                } else if (__value__ == (513021i32)) {
                    _gotoNext = 513021i32;
                    _z_512780 = ((3.141592653589793 : stdgo.GoFloat64) / _d_512942 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 513043i32;
                } else if (__value__ == (513043i32)) {
                    return ((_signgam_512712 : stdgo.GoFloat64) * _z_512780 : stdgo.GoFloat64);
                    _gotoNext = 513096i32;
                } else if (__value__ == (513096i32)) {
                    _z_513096 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 513106i32;
                } else if (__value__ == (513106i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 513117i32;
                    } else {
                        _gotoNext = 513147i32;
                    };
                } else if (__value__ == (513117i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_513096 = (_z_513096 * _x : stdgo.GoFloat64);
                    _gotoNext = 513106i32;
                } else if (__value__ == (513147i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 513147i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 513157i32;
                    } else {
                        _gotoNext = 513223i32;
                    };
                } else if (__value__ == (513157i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 513175i32;
                    } else {
                        _gotoNext = 513197i32;
                    };
                } else if (__value__ == (513175i32)) {
                    _gotoNext = 513553i32;
                } else if (__value__ == (513197i32)) {
                    _z_513096 = (_z_513096 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 513147i32;
                } else if (__value__ == (513223i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 513223i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 513233i32;
                    } else {
                        _gotoNext = 513299i32;
                    };
                } else if (__value__ == (513233i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 513250i32;
                    } else {
                        _gotoNext = 513272i32;
                    };
                } else if (__value__ == (513250i32)) {
                    _gotoNext = 513553i32;
                } else if (__value__ == (513272i32)) {
                    _z_513096 = (_z_513096 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 513223i32;
                } else if (__value__ == (513299i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 513309i32;
                    } else {
                        _gotoNext = 513327i32;
                    };
                } else if (__value__ == (513309i32)) {
                    return _z_513096;
                    _gotoNext = 513327i32;
                } else if (__value__ == (513327i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_512423 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_512410 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_513096 * _p_512423 : stdgo.GoFloat64) / _q_512410 : stdgo.GoFloat64);
                    _gotoNext = 513553i32;
                } else if (__value__ == (513553i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 513571i32;
                    } else {
                        _gotoNext = 513593i32;
                    };
                } else if (__value__ == (513571i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 513593i32;
                } else if (__value__ == (513593i32)) {
                    return (_z_513096 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
