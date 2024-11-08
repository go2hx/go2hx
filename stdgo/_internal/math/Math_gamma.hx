package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y1_421449:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_421405:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_421392:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_422078:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_421907:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_421881:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_421712:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_421453:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_421694:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq2_421886:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_421121;
        var _d_421924:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_421762:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_421121 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 421212i32;
                } else if (__value__ == (421212i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 421222i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 421284i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 421319i32;
                    } else {
                        _gotoNext = 421392i32;
                    };
                } else if (__value__ == (421222i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 421392i32;
                } else if (__value__ == (421284i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 421392i32;
                } else if (__value__ == (421319i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 421348i32;
                    } else {
                        _gotoNext = 421374i32;
                    };
                } else if (__value__ == (421348i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 421374i32;
                } else if (__value__ == (421374i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 421392i32;
                } else if (__value__ == (421392i32)) {
                    _q_421392 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_421405 = stdgo._internal.math.Math_floor.floor(_q_421392);
                    if ((_q_421392 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 421430i32;
                    } else {
                        _gotoNext = 422078i32;
                    };
                } else if (__value__ == (421430i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 421444i32;
                    } else {
                        _gotoNext = 421694i32;
                    };
                } else if (__value__ == (421444i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_421449 = __tmp__._0;
                        _y2_421453 = __tmp__._1;
                    };
                    return (_y1_421449 * _y2_421453 : stdgo.GoFloat64);
                    _gotoNext = 421694i32;
                } else if (__value__ == (421694i32)) {
                    _signgam_421694 = (1 : stdgo.GoInt);
                    {
                        _ip_421712 = (_p_421405 : stdgo.GoInt64);
                        if ((_ip_421712 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 421738i32;
                        } else {
                            _gotoNext = 421762i32;
                        };
                    };
                } else if (__value__ == (421738i32)) {
                    _signgam_421694 = (-1 : stdgo.GoInt);
                    _gotoNext = 421762i32;
                } else if (__value__ == (421762i32)) {
                    _z_421762 = (_q_421392 - _p_421405 : stdgo.GoFloat64);
                    if ((_z_421762 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 421786i32;
                    } else {
                        _gotoNext = 421820i32;
                    };
                } else if (__value__ == (421786i32)) {
                    _p_421405 = (_p_421405 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_421762 = (_q_421392 - _p_421405 : stdgo.GoFloat64);
                    _gotoNext = 421820i32;
                } else if (__value__ == (421820i32)) {
                    _z_421762 = (_q_421392 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_421762 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_421762 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 421850i32;
                    } else {
                        _gotoNext = 421881i32;
                    };
                } else if (__value__ == (421850i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_421694);
                    _gotoNext = 421881i32;
                } else if (__value__ == (421881i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_421392);
                        _sq1_421881 = __tmp__._0;
                        _sq2_421886 = __tmp__._1;
                    };
                    _absz_421907 = stdgo._internal.math.Math_abs.abs(_z_421762);
                    _d_421924 = ((_absz_421907 * _sq1_421881 : stdgo.GoFloat64) * _sq2_421886 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_421924, (0 : stdgo.GoInt))) {
                        _gotoNext = 421963i32;
                    } else {
                        _gotoNext = 422003i32;
                    };
                } else if (__value__ == (421963i32)) {
                    _z_421762 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_421907 : stdgo.GoFloat64) / _sq1_421881 : stdgo.GoFloat64) / _sq2_421886 : stdgo.GoFloat64);
                    _gotoNext = 422025i32;
                } else if (__value__ == (422003i32)) {
                    _z_421762 = ((3.141592653589793 : stdgo.GoFloat64) / _d_421924 : stdgo.GoFloat64);
                    _gotoNext = 422025i32;
                } else if (__value__ == (422025i32)) {
                    return ((_signgam_421694 : stdgo.GoFloat64) * _z_421762 : stdgo.GoFloat64);
                    _gotoNext = 422078i32;
                } else if (__value__ == (422078i32)) {
                    _z_422078 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 422088i32;
                } else if (__value__ == (422088i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422099i32;
                    } else {
                        _gotoNext = 422129i32;
                    };
                } else if (__value__ == (422099i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_422078 = (_z_422078 * _x : stdgo.GoFloat64);
                    _gotoNext = 422088i32;
                } else if (__value__ == (422129i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 422129i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422139i32;
                    } else {
                        _gotoNext = 422205i32;
                    };
                } else if (__value__ == (422139i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422157i32;
                    } else {
                        _gotoNext = 422179i32;
                    };
                } else if (__value__ == (422157i32)) {
                    _gotoNext = 422535i32;
                } else if (__value__ == (422179i32)) {
                    _z_422078 = (_z_422078 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 422129i32;
                } else if (__value__ == (422205i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 422205i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422215i32;
                    } else {
                        _gotoNext = 422281i32;
                    };
                } else if (__value__ == (422215i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422232i32;
                    } else {
                        _gotoNext = 422254i32;
                    };
                } else if (__value__ == (422232i32)) {
                    _gotoNext = 422535i32;
                } else if (__value__ == (422254i32)) {
                    _z_422078 = (_z_422078 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 422205i32;
                } else if (__value__ == (422281i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 422291i32;
                    } else {
                        _gotoNext = 422309i32;
                    };
                } else if (__value__ == (422291i32)) {
                    return _z_422078;
                    _gotoNext = 422309i32;
                } else if (__value__ == (422309i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_421405 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_421392 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_422078 * _p_421405 : stdgo.GoFloat64) / _q_421392 : stdgo.GoFloat64);
                    _gotoNext = 422535i32;
                } else if (__value__ == (422535i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 422553i32;
                    } else {
                        _gotoNext = 422575i32;
                    };
                } else if (__value__ == (422553i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 422575i32;
                } else if (__value__ == (422575i32)) {
                    return (_z_422078 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
