package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_515117:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_515112:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_514925:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_514684:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_514680:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_514623:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_515309:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_515138:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_514943:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _d_515155:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_514636:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_514993:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_514352;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_514352 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 514443i32;
                } else if (__value__ == (514443i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 514453i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 514515i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 514550i32;
                    } else {
                        _gotoNext = 514623i32;
                    };
                } else if (__value__ == (514453i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 514623i32;
                } else if (__value__ == (514515i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 514623i32;
                } else if (__value__ == (514550i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 514579i32;
                    } else {
                        _gotoNext = 514605i32;
                    };
                } else if (__value__ == (514579i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 514605i32;
                } else if (__value__ == (514605i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 514623i32;
                } else if (__value__ == (514623i32)) {
                    _q_514623 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_514636 = stdgo._internal.math.Math_floor.floor(_q_514623);
                    if ((_q_514623 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 514661i32;
                    } else {
                        _gotoNext = 515309i32;
                    };
                } else if (__value__ == (514661i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 514675i32;
                    } else {
                        _gotoNext = 514925i32;
                    };
                } else if (__value__ == (514675i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_514680 = __tmp__._0;
                        _y2_514684 = __tmp__._1;
                    };
                    return (_y1_514680 * _y2_514684 : stdgo.GoFloat64);
                    _gotoNext = 514925i32;
                } else if (__value__ == (514925i32)) {
                    _signgam_514925 = (1 : stdgo.GoInt);
                    {
                        _ip_514943 = (_p_514636 : stdgo.GoInt64);
                        if ((_ip_514943 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 514969i32;
                        } else {
                            _gotoNext = 514993i32;
                        };
                    };
                } else if (__value__ == (514969i32)) {
                    _signgam_514925 = (-1 : stdgo.GoInt);
                    _gotoNext = 514993i32;
                } else if (__value__ == (514993i32)) {
                    _z_514993 = (_q_514623 - _p_514636 : stdgo.GoFloat64);
                    if ((_z_514993 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515017i32;
                    } else {
                        _gotoNext = 515051i32;
                    };
                } else if (__value__ == (515017i32)) {
                    _p_514636 = (_p_514636 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_514993 = (_q_514623 - _p_514636 : stdgo.GoFloat64);
                    _gotoNext = 515051i32;
                } else if (__value__ == (515051i32)) {
                    _z_514993 = (_q_514623 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_514993 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_514993 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 515081i32;
                    } else {
                        _gotoNext = 515112i32;
                    };
                } else if (__value__ == (515081i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_514925);
                    _gotoNext = 515112i32;
                } else if (__value__ == (515112i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_514623);
                        _sq1_515112 = __tmp__._0;
                        _sq2_515117 = __tmp__._1;
                    };
                    _absz_515138 = stdgo._internal.math.Math_abs.abs(_z_514993);
                    _d_515155 = ((_absz_515138 * _sq1_515112 : stdgo.GoFloat64) * _sq2_515117 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_515155, (0 : stdgo.GoInt))) {
                        _gotoNext = 515194i32;
                    } else {
                        _gotoNext = 515234i32;
                    };
                } else if (__value__ == (515194i32)) {
                    _z_514993 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_515138 : stdgo.GoFloat64) / _sq1_515112 : stdgo.GoFloat64) / _sq2_515117 : stdgo.GoFloat64);
                    _gotoNext = 515256i32;
                } else if (__value__ == (515234i32)) {
                    _gotoNext = 515234i32;
                    _z_514993 = ((3.141592653589793 : stdgo.GoFloat64) / _d_515155 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 515256i32;
                } else if (__value__ == (515256i32)) {
                    return ((_signgam_514925 : stdgo.GoFloat64) * _z_514993 : stdgo.GoFloat64);
                    _gotoNext = 515309i32;
                } else if (__value__ == (515309i32)) {
                    _z_515309 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 515319i32;
                } else if (__value__ == (515319i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515330i32;
                    } else {
                        _gotoNext = 515360i32;
                    };
                } else if (__value__ == (515330i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_515309 = (_z_515309 * _x : stdgo.GoFloat64);
                    _gotoNext = 515319i32;
                } else if (__value__ == (515360i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 515360i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515370i32;
                    } else {
                        _gotoNext = 515436i32;
                    };
                } else if (__value__ == (515370i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515388i32;
                    } else {
                        _gotoNext = 515410i32;
                    };
                } else if (__value__ == (515388i32)) {
                    _gotoNext = 515766i32;
                } else if (__value__ == (515410i32)) {
                    _z_515309 = (_z_515309 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 515360i32;
                } else if (__value__ == (515436i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 515436i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515446i32;
                    } else {
                        _gotoNext = 515512i32;
                    };
                } else if (__value__ == (515446i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 515463i32;
                    } else {
                        _gotoNext = 515485i32;
                    };
                } else if (__value__ == (515463i32)) {
                    _gotoNext = 515766i32;
                } else if (__value__ == (515485i32)) {
                    _z_515309 = (_z_515309 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 515436i32;
                } else if (__value__ == (515512i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 515522i32;
                    } else {
                        _gotoNext = 515540i32;
                    };
                } else if (__value__ == (515522i32)) {
                    return _z_515309;
                    _gotoNext = 515540i32;
                } else if (__value__ == (515540i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_514636 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_514623 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_515309 * _p_514636 : stdgo.GoFloat64) / _q_514623 : stdgo.GoFloat64);
                    _gotoNext = 515766i32;
                } else if (__value__ == (515766i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 515784i32;
                    } else {
                        _gotoNext = 515806i32;
                    };
                } else if (__value__ == (515784i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 515806i32;
                } else if (__value__ == (515806i32)) {
                    return (_z_515309 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
