package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_444372:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_444131:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_444070:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_444756:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_444440:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_444559:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_444083:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_444390:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_444127:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_443799;
        var _d_444602:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_444585:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_444564:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_443799 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 443890i32;
                } else if (__value__ == (443890i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 443900i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 443962i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 443997i32;
                    } else {
                        _gotoNext = 444070i32;
                    };
                } else if (__value__ == (443900i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 444070i32;
                } else if (__value__ == (443962i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 444070i32;
                } else if (__value__ == (443997i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 444026i32;
                    } else {
                        _gotoNext = 444052i32;
                    };
                } else if (__value__ == (444026i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 444052i32;
                } else if (__value__ == (444052i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 444070i32;
                } else if (__value__ == (444070i32)) {
                    _q_444070 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_444083 = stdgo._internal.math.Math_floor.floor(_q_444070);
                    if ((_q_444070 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444108i32;
                    } else {
                        _gotoNext = 444756i32;
                    };
                } else if (__value__ == (444108i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444122i32;
                    } else {
                        _gotoNext = 444372i32;
                    };
                } else if (__value__ == (444122i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_444127 = __tmp__._0;
                        _y2_444131 = __tmp__._1;
                    };
                    return (_y1_444127 * _y2_444131 : stdgo.GoFloat64);
                    _gotoNext = 444372i32;
                } else if (__value__ == (444372i32)) {
                    _signgam_444372 = (1 : stdgo.GoInt);
                    {
                        _ip_444390 = (_p_444083 : stdgo.GoInt64);
                        if ((_ip_444390 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 444416i32;
                        } else {
                            _gotoNext = 444440i32;
                        };
                    };
                } else if (__value__ == (444416i32)) {
                    _signgam_444372 = (-1 : stdgo.GoInt);
                    _gotoNext = 444440i32;
                } else if (__value__ == (444440i32)) {
                    _z_444440 = (_q_444070 - _p_444083 : stdgo.GoFloat64);
                    if ((_z_444440 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444464i32;
                    } else {
                        _gotoNext = 444498i32;
                    };
                } else if (__value__ == (444464i32)) {
                    _p_444083 = (_p_444083 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_444440 = (_q_444070 - _p_444083 : stdgo.GoFloat64);
                    _gotoNext = 444498i32;
                } else if (__value__ == (444498i32)) {
                    _z_444440 = (_q_444070 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_444440 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_444440 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 444528i32;
                    } else {
                        _gotoNext = 444559i32;
                    };
                } else if (__value__ == (444528i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_444372);
                    _gotoNext = 444559i32;
                } else if (__value__ == (444559i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_444070);
                        _sq1_444559 = __tmp__._0;
                        _sq2_444564 = __tmp__._1;
                    };
                    _absz_444585 = stdgo._internal.math.Math_abs.abs(_z_444440);
                    _d_444602 = ((_absz_444585 * _sq1_444559 : stdgo.GoFloat64) * _sq2_444564 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_444602, (0 : stdgo.GoInt))) {
                        _gotoNext = 444641i32;
                    } else {
                        _gotoNext = 444681i32;
                    };
                } else if (__value__ == (444641i32)) {
                    _z_444440 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_444585 : stdgo.GoFloat64) / _sq1_444559 : stdgo.GoFloat64) / _sq2_444564 : stdgo.GoFloat64);
                    _gotoNext = 444703i32;
                } else if (__value__ == (444681i32)) {
                    _gotoNext = 444681i32;
                    _z_444440 = ((3.141592653589793 : stdgo.GoFloat64) / _d_444602 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 444703i32;
                } else if (__value__ == (444703i32)) {
                    return ((_signgam_444372 : stdgo.GoFloat64) * _z_444440 : stdgo.GoFloat64);
                    _gotoNext = 444756i32;
                } else if (__value__ == (444756i32)) {
                    _z_444756 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 444766i32;
                } else if (__value__ == (444766i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444777i32;
                    } else {
                        _gotoNext = 444807i32;
                    };
                } else if (__value__ == (444777i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_444756 = (_z_444756 * _x : stdgo.GoFloat64);
                    _gotoNext = 444766i32;
                } else if (__value__ == (444807i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 444807i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444817i32;
                    } else {
                        _gotoNext = 444883i32;
                    };
                } else if (__value__ == (444817i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444835i32;
                    } else {
                        _gotoNext = 444857i32;
                    };
                } else if (__value__ == (444835i32)) {
                    _gotoNext = 445213i32;
                } else if (__value__ == (444857i32)) {
                    _z_444756 = (_z_444756 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 444807i32;
                } else if (__value__ == (444883i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 444883i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444893i32;
                    } else {
                        _gotoNext = 444959i32;
                    };
                } else if (__value__ == (444893i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444910i32;
                    } else {
                        _gotoNext = 444932i32;
                    };
                } else if (__value__ == (444910i32)) {
                    _gotoNext = 445213i32;
                } else if (__value__ == (444932i32)) {
                    _z_444756 = (_z_444756 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 444883i32;
                } else if (__value__ == (444959i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 444969i32;
                    } else {
                        _gotoNext = 444987i32;
                    };
                } else if (__value__ == (444969i32)) {
                    return _z_444756;
                    _gotoNext = 444987i32;
                } else if (__value__ == (444987i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_444083 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_444070 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_444756 * _p_444083 : stdgo.GoFloat64) / _q_444070 : stdgo.GoFloat64);
                    _gotoNext = 445213i32;
                } else if (__value__ == (445213i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 445231i32;
                    } else {
                        _gotoNext = 445253i32;
                    };
                } else if (__value__ == (445231i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 445253i32;
                } else if (__value__ == (445253i32)) {
                    return (_z_444756 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
