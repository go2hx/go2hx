package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_582134:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_582066:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_581825:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_581777:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_582296:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_582258:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_582253:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_582084:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_581821:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_581764:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_581493;
        var _z_582450:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_582279:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_581493 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 581584i32;
                } else if (__value__ == (581584i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 581594i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 581656i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 581691i32;
                    } else {
                        _gotoNext = 581764i32;
                    };
                } else if (__value__ == (581594i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 581764i32;
                } else if (__value__ == (581656i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 581764i32;
                } else if (__value__ == (581691i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 581720i32;
                    } else {
                        _gotoNext = 581746i32;
                    };
                } else if (__value__ == (581720i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 581746i32;
                } else if (__value__ == (581746i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 581764i32;
                } else if (__value__ == (581764i32)) {
                    _q_581764 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_581777 = stdgo._internal.math.Math_floor.floor(_q_581764);
                    if ((_q_581764 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 581802i32;
                    } else {
                        _gotoNext = 582450i32;
                    };
                } else if (__value__ == (581802i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 581816i32;
                    } else {
                        _gotoNext = 582066i32;
                    };
                } else if (__value__ == (581816i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_581821 = @:tmpset0 __tmp__._0;
                        _y2_581825 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_581821 * _y2_581825 : stdgo.GoFloat64);
                    _gotoNext = 582066i32;
                } else if (__value__ == (582066i32)) {
                    _signgam_582066 = (1 : stdgo.GoInt);
                    {
                        _ip_582084 = (_p_581777 : stdgo.GoInt64);
                        if ((_ip_582084 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 582110i32;
                        } else {
                            _gotoNext = 582134i32;
                        };
                    };
                } else if (__value__ == (582110i32)) {
                    _signgam_582066 = (-1 : stdgo.GoInt);
                    _gotoNext = 582134i32;
                } else if (__value__ == (582134i32)) {
                    _z_582134 = (_q_581764 - _p_581777 : stdgo.GoFloat64);
                    if ((_z_582134 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 582158i32;
                    } else {
                        _gotoNext = 582192i32;
                    };
                } else if (__value__ == (582158i32)) {
                    _p_581777 = (_p_581777 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_582134 = (_q_581764 - _p_581777 : stdgo.GoFloat64);
                    _gotoNext = 582192i32;
                } else if (__value__ == (582192i32)) {
                    _z_582134 = (_q_581764 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_582134 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_582134 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 582222i32;
                    } else {
                        _gotoNext = 582253i32;
                    };
                } else if (__value__ == (582222i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_582066);
                    _gotoNext = 582253i32;
                } else if (__value__ == (582253i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_581764);
                        _sq1_582253 = @:tmpset0 __tmp__._0;
                        _sq2_582258 = @:tmpset0 __tmp__._1;
                    };
                    _absz_582279 = stdgo._internal.math.Math_abs.abs(_z_582134);
                    _d_582296 = ((_absz_582279 * _sq1_582253 : stdgo.GoFloat64) * _sq2_582258 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_582296, (0 : stdgo.GoInt))) {
                        _gotoNext = 582335i32;
                    } else {
                        _gotoNext = 582375i32;
                    };
                } else if (__value__ == (582335i32)) {
                    _z_582134 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_582279 : stdgo.GoFloat64) / _sq1_582253 : stdgo.GoFloat64) / _sq2_582258 : stdgo.GoFloat64);
                    _gotoNext = 582397i32;
                } else if (__value__ == (582375i32)) {
                    _gotoNext = 582375i32;
                    _z_582134 = ((3.141592653589793 : stdgo.GoFloat64) / _d_582296 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 582397i32;
                } else if (__value__ == (582397i32)) {
                    return ((_signgam_582066 : stdgo.GoFloat64) * _z_582134 : stdgo.GoFloat64);
                    _gotoNext = 582450i32;
                } else if (__value__ == (582450i32)) {
                    _z_582450 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 582460i32;
                } else if (__value__ == (582460i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 582471i32;
                    } else {
                        _gotoNext = 582501i32;
                    };
                } else if (__value__ == (582471i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_582450 = (_z_582450 * _x : stdgo.GoFloat64);
                    _gotoNext = 582460i32;
                } else if (__value__ == (582501i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 582501i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 582511i32;
                    } else {
                        _gotoNext = 582577i32;
                    };
                } else if (__value__ == (582511i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 582529i32;
                    } else {
                        _gotoNext = 582551i32;
                    };
                } else if (__value__ == (582529i32)) {
                    _gotoNext = 582907i32;
                } else if (__value__ == (582551i32)) {
                    _z_582450 = (_z_582450 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 582501i32;
                } else if (__value__ == (582577i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 582577i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 582587i32;
                    } else {
                        _gotoNext = 582653i32;
                    };
                } else if (__value__ == (582587i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 582604i32;
                    } else {
                        _gotoNext = 582626i32;
                    };
                } else if (__value__ == (582604i32)) {
                    _gotoNext = 582907i32;
                } else if (__value__ == (582626i32)) {
                    _z_582450 = (_z_582450 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 582577i32;
                } else if (__value__ == (582653i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 582663i32;
                    } else {
                        _gotoNext = 582681i32;
                    };
                } else if (__value__ == (582663i32)) {
                    return _z_582450;
                    _gotoNext = 582681i32;
                } else if (__value__ == (582681i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_581777 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_581764 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_582450 * _p_581777 : stdgo.GoFloat64) / _q_581764 : stdgo.GoFloat64);
                    _gotoNext = 582907i32;
                } else if (__value__ == (582907i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 582925i32;
                    } else {
                        _gotoNext = 582947i32;
                    };
                } else if (__value__ == (582925i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 582947i32;
                } else if (__value__ == (582947i32)) {
                    return (_z_582450 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
