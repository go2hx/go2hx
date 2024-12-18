package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_407671:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_407653:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_407351:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_408037:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_407883:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_407845:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_407840:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_407408:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_407364:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_407080;
        var _absz_407866:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_407721:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_407412:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_407080 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 407171i32;
                } else if (__value__ == (407171i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 407181i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 407243i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 407278i32;
                    } else {
                        _gotoNext = 407351i32;
                    };
                } else if (__value__ == (407181i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 407351i32;
                } else if (__value__ == (407243i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 407351i32;
                } else if (__value__ == (407278i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 407307i32;
                    } else {
                        _gotoNext = 407333i32;
                    };
                } else if (__value__ == (407307i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 407333i32;
                } else if (__value__ == (407333i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 407351i32;
                } else if (__value__ == (407351i32)) {
                    _q_407351 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_407364 = stdgo._internal.math.Math_floor.floor(_q_407351);
                    if ((_q_407351 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 407389i32;
                    } else {
                        _gotoNext = 408037i32;
                    };
                } else if (__value__ == (407389i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 407403i32;
                    } else {
                        _gotoNext = 407653i32;
                    };
                } else if (__value__ == (407403i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_407408 = __tmp__._0;
                        _y2_407412 = __tmp__._1;
                    };
                    return (_y1_407408 * _y2_407412 : stdgo.GoFloat64);
                    _gotoNext = 407653i32;
                } else if (__value__ == (407653i32)) {
                    _signgam_407653 = (1 : stdgo.GoInt);
                    {
                        _ip_407671 = (_p_407364 : stdgo.GoInt64);
                        if ((_ip_407671 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 407697i32;
                        } else {
                            _gotoNext = 407721i32;
                        };
                    };
                } else if (__value__ == (407697i32)) {
                    _signgam_407653 = (-1 : stdgo.GoInt);
                    _gotoNext = 407721i32;
                } else if (__value__ == (407721i32)) {
                    _z_407721 = (_q_407351 - _p_407364 : stdgo.GoFloat64);
                    if ((_z_407721 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 407745i32;
                    } else {
                        _gotoNext = 407779i32;
                    };
                } else if (__value__ == (407745i32)) {
                    _p_407364 = (_p_407364 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_407721 = (_q_407351 - _p_407364 : stdgo.GoFloat64);
                    _gotoNext = 407779i32;
                } else if (__value__ == (407779i32)) {
                    _z_407721 = (_q_407351 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_407721 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_407721 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 407809i32;
                    } else {
                        _gotoNext = 407840i32;
                    };
                } else if (__value__ == (407809i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_407653);
                    _gotoNext = 407840i32;
                } else if (__value__ == (407840i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_407351);
                        _sq1_407840 = __tmp__._0;
                        _sq2_407845 = __tmp__._1;
                    };
                    _absz_407866 = stdgo._internal.math.Math_abs.abs(_z_407721);
                    _d_407883 = ((_absz_407866 * _sq1_407840 : stdgo.GoFloat64) * _sq2_407845 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_407883, (0 : stdgo.GoInt))) {
                        _gotoNext = 407922i32;
                    } else {
                        _gotoNext = 407962i32;
                    };
                } else if (__value__ == (407922i32)) {
                    _z_407721 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_407866 : stdgo.GoFloat64) / _sq1_407840 : stdgo.GoFloat64) / _sq2_407845 : stdgo.GoFloat64);
                    _gotoNext = 407984i32;
                } else if (__value__ == (407962i32)) {
                    _gotoNext = 407962i32;
                    _z_407721 = ((3.141592653589793 : stdgo.GoFloat64) / _d_407883 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 407984i32;
                } else if (__value__ == (407984i32)) {
                    return ((_signgam_407653 : stdgo.GoFloat64) * _z_407721 : stdgo.GoFloat64);
                    _gotoNext = 408037i32;
                } else if (__value__ == (408037i32)) {
                    _z_408037 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 408047i32;
                } else if (__value__ == (408047i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 408058i32;
                    } else {
                        _gotoNext = 408088i32;
                    };
                } else if (__value__ == (408058i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_408037 = (_z_408037 * _x : stdgo.GoFloat64);
                    _gotoNext = 408047i32;
                } else if (__value__ == (408088i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 408088i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 408098i32;
                    } else {
                        _gotoNext = 408164i32;
                    };
                } else if (__value__ == (408098i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 408116i32;
                    } else {
                        _gotoNext = 408138i32;
                    };
                } else if (__value__ == (408116i32)) {
                    _gotoNext = 408494i32;
                } else if (__value__ == (408138i32)) {
                    _z_408037 = (_z_408037 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 408088i32;
                } else if (__value__ == (408164i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 408164i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 408174i32;
                    } else {
                        _gotoNext = 408240i32;
                    };
                } else if (__value__ == (408174i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 408191i32;
                    } else {
                        _gotoNext = 408213i32;
                    };
                } else if (__value__ == (408191i32)) {
                    _gotoNext = 408494i32;
                } else if (__value__ == (408213i32)) {
                    _z_408037 = (_z_408037 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 408164i32;
                } else if (__value__ == (408240i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 408250i32;
                    } else {
                        _gotoNext = 408268i32;
                    };
                } else if (__value__ == (408250i32)) {
                    return _z_408037;
                    _gotoNext = 408268i32;
                } else if (__value__ == (408268i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_407364 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_407351 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_408037 * _p_407364 : stdgo.GoFloat64) / _q_407351 : stdgo.GoFloat64);
                    _gotoNext = 408494i32;
                } else if (__value__ == (408494i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 408512i32;
                    } else {
                        _gotoNext = 408534i32;
                    };
                } else if (__value__ == (408512i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 408534i32;
                } else if (__value__ == (408534i32)) {
                    return (_z_408037 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
