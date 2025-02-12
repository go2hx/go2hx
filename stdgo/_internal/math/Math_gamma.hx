package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y2_419825:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_420253:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_420134:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_420258:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_419493;
        var _d_420296:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_420066:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_419764:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_419777:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_420450:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_420279:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_420084:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_419821:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_419493 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 419584i32;
                } else if (__value__ == (419584i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 419594i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 419656i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 419691i32;
                    } else {
                        _gotoNext = 419764i32;
                    };
                } else if (__value__ == (419594i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 419764i32;
                } else if (__value__ == (419656i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 419764i32;
                } else if (__value__ == (419691i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 419720i32;
                    } else {
                        _gotoNext = 419746i32;
                    };
                } else if (__value__ == (419720i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 419746i32;
                } else if (__value__ == (419746i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 419764i32;
                } else if (__value__ == (419764i32)) {
                    _q_419764 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_419777 = stdgo._internal.math.Math_floor.floor(_q_419764);
                    if ((_q_419764 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 419802i32;
                    } else {
                        _gotoNext = 420450i32;
                    };
                } else if (__value__ == (419802i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 419816i32;
                    } else {
                        _gotoNext = 420066i32;
                    };
                } else if (__value__ == (419816i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_419821 = @:tmpset0 __tmp__._0;
                        _y2_419825 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_419821 * _y2_419825 : stdgo.GoFloat64);
                    _gotoNext = 420066i32;
                } else if (__value__ == (420066i32)) {
                    _signgam_420066 = (1 : stdgo.GoInt);
                    {
                        _ip_420084 = (_p_419777 : stdgo.GoInt64);
                        if ((_ip_420084 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 420110i32;
                        } else {
                            _gotoNext = 420134i32;
                        };
                    };
                } else if (__value__ == (420110i32)) {
                    _signgam_420066 = (-1 : stdgo.GoInt);
                    _gotoNext = 420134i32;
                } else if (__value__ == (420134i32)) {
                    _z_420134 = (_q_419764 - _p_419777 : stdgo.GoFloat64);
                    if ((_z_420134 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420158i32;
                    } else {
                        _gotoNext = 420192i32;
                    };
                } else if (__value__ == (420158i32)) {
                    _p_419777 = (_p_419777 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_420134 = (_q_419764 - _p_419777 : stdgo.GoFloat64);
                    _gotoNext = 420192i32;
                } else if (__value__ == (420192i32)) {
                    _z_420134 = (_q_419764 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_420134 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_420134 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 420222i32;
                    } else {
                        _gotoNext = 420253i32;
                    };
                } else if (__value__ == (420222i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_420066);
                    _gotoNext = 420253i32;
                } else if (__value__ == (420253i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_419764);
                        _sq1_420253 = @:tmpset0 __tmp__._0;
                        _sq2_420258 = @:tmpset0 __tmp__._1;
                    };
                    _absz_420279 = stdgo._internal.math.Math_abs.abs(_z_420134);
                    _d_420296 = ((_absz_420279 * _sq1_420253 : stdgo.GoFloat64) * _sq2_420258 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_420296, (0 : stdgo.GoInt))) {
                        _gotoNext = 420335i32;
                    } else {
                        _gotoNext = 420375i32;
                    };
                } else if (__value__ == (420335i32)) {
                    _z_420134 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_420279 : stdgo.GoFloat64) / _sq1_420253 : stdgo.GoFloat64) / _sq2_420258 : stdgo.GoFloat64);
                    _gotoNext = 420397i32;
                } else if (__value__ == (420375i32)) {
                    _gotoNext = 420375i32;
                    _z_420134 = ((3.141592653589793 : stdgo.GoFloat64) / _d_420296 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 420397i32;
                } else if (__value__ == (420397i32)) {
                    return ((_signgam_420066 : stdgo.GoFloat64) * _z_420134 : stdgo.GoFloat64);
                    _gotoNext = 420450i32;
                } else if (__value__ == (420450i32)) {
                    _z_420450 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 420460i32;
                } else if (__value__ == (420460i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420471i32;
                    } else {
                        _gotoNext = 420501i32;
                    };
                } else if (__value__ == (420471i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_420450 = (_z_420450 * _x : stdgo.GoFloat64);
                    _gotoNext = 420460i32;
                } else if (__value__ == (420501i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 420501i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420511i32;
                    } else {
                        _gotoNext = 420577i32;
                    };
                } else if (__value__ == (420511i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420529i32;
                    } else {
                        _gotoNext = 420551i32;
                    };
                } else if (__value__ == (420529i32)) {
                    _gotoNext = 420907i32;
                } else if (__value__ == (420551i32)) {
                    _z_420450 = (_z_420450 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 420501i32;
                } else if (__value__ == (420577i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 420577i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420587i32;
                    } else {
                        _gotoNext = 420653i32;
                    };
                } else if (__value__ == (420587i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420604i32;
                    } else {
                        _gotoNext = 420626i32;
                    };
                } else if (__value__ == (420604i32)) {
                    _gotoNext = 420907i32;
                } else if (__value__ == (420626i32)) {
                    _z_420450 = (_z_420450 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 420577i32;
                } else if (__value__ == (420653i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 420663i32;
                    } else {
                        _gotoNext = 420681i32;
                    };
                } else if (__value__ == (420663i32)) {
                    return _z_420450;
                    _gotoNext = 420681i32;
                } else if (__value__ == (420681i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_419777 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_419764 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_420450 * _p_419777 : stdgo.GoFloat64) / _q_419764 : stdgo.GoFloat64);
                    _gotoNext = 420907i32;
                } else if (__value__ == (420907i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 420925i32;
                    } else {
                        _gotoNext = 420947i32;
                    };
                } else if (__value__ == (420925i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 420947i32;
                } else if (__value__ == (420947i32)) {
                    return (_z_420450 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
