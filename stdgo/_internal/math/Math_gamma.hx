package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_530596:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_530333:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_530289:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_530962:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_530765:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_530646:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_530578:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_530337:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_530005;
        var _d_530808:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_530770:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_530791:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_530276:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_530005 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 530096i32;
                } else if (__value__ == (530096i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 530106i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 530168i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 530203i32;
                    } else {
                        _gotoNext = 530276i32;
                    };
                } else if (__value__ == (530106i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 530276i32;
                } else if (__value__ == (530168i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 530276i32;
                } else if (__value__ == (530203i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 530232i32;
                    } else {
                        _gotoNext = 530258i32;
                    };
                } else if (__value__ == (530232i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 530258i32;
                } else if (__value__ == (530258i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 530276i32;
                } else if (__value__ == (530276i32)) {
                    _q_530276 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_530289 = stdgo._internal.math.Math_floor.floor(_q_530276);
                    if ((_q_530276 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 530314i32;
                    } else {
                        _gotoNext = 530962i32;
                    };
                } else if (__value__ == (530314i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 530328i32;
                    } else {
                        _gotoNext = 530578i32;
                    };
                } else if (__value__ == (530328i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_530333 = __tmp__._0;
                        _y2_530337 = __tmp__._1;
                    };
                    return (_y1_530333 * _y2_530337 : stdgo.GoFloat64);
                    _gotoNext = 530578i32;
                } else if (__value__ == (530578i32)) {
                    _signgam_530578 = (1 : stdgo.GoInt);
                    {
                        _ip_530596 = (_p_530289 : stdgo.GoInt64);
                        if ((_ip_530596 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 530622i32;
                        } else {
                            _gotoNext = 530646i32;
                        };
                    };
                } else if (__value__ == (530622i32)) {
                    _signgam_530578 = (-1 : stdgo.GoInt);
                    _gotoNext = 530646i32;
                } else if (__value__ == (530646i32)) {
                    _z_530646 = (_q_530276 - _p_530289 : stdgo.GoFloat64);
                    if ((_z_530646 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 530670i32;
                    } else {
                        _gotoNext = 530704i32;
                    };
                } else if (__value__ == (530670i32)) {
                    _p_530289 = (_p_530289 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_530646 = (_q_530276 - _p_530289 : stdgo.GoFloat64);
                    _gotoNext = 530704i32;
                } else if (__value__ == (530704i32)) {
                    _z_530646 = (_q_530276 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_530646 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_530646 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 530734i32;
                    } else {
                        _gotoNext = 530765i32;
                    };
                } else if (__value__ == (530734i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_530578);
                    _gotoNext = 530765i32;
                } else if (__value__ == (530765i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_530276);
                        _sq1_530765 = __tmp__._0;
                        _sq2_530770 = __tmp__._1;
                    };
                    _absz_530791 = stdgo._internal.math.Math_abs.abs(_z_530646);
                    _d_530808 = ((_absz_530791 * _sq1_530765 : stdgo.GoFloat64) * _sq2_530770 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_530808, (0 : stdgo.GoInt))) {
                        _gotoNext = 530847i32;
                    } else {
                        _gotoNext = 530887i32;
                    };
                } else if (__value__ == (530847i32)) {
                    _z_530646 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_530791 : stdgo.GoFloat64) / _sq1_530765 : stdgo.GoFloat64) / _sq2_530770 : stdgo.GoFloat64);
                    _gotoNext = 530909i32;
                } else if (__value__ == (530887i32)) {
                    _gotoNext = 530887i32;
                    _z_530646 = ((3.141592653589793 : stdgo.GoFloat64) / _d_530808 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 530909i32;
                } else if (__value__ == (530909i32)) {
                    return ((_signgam_530578 : stdgo.GoFloat64) * _z_530646 : stdgo.GoFloat64);
                    _gotoNext = 530962i32;
                } else if (__value__ == (530962i32)) {
                    _z_530962 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 530972i32;
                } else if (__value__ == (530972i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 530983i32;
                    } else {
                        _gotoNext = 531013i32;
                    };
                } else if (__value__ == (530983i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_530962 = (_z_530962 * _x : stdgo.GoFloat64);
                    _gotoNext = 530972i32;
                } else if (__value__ == (531013i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 531013i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531023i32;
                    } else {
                        _gotoNext = 531089i32;
                    };
                } else if (__value__ == (531023i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531041i32;
                    } else {
                        _gotoNext = 531063i32;
                    };
                } else if (__value__ == (531041i32)) {
                    _gotoNext = 531419i32;
                } else if (__value__ == (531063i32)) {
                    _z_530962 = (_z_530962 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 531013i32;
                } else if (__value__ == (531089i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 531089i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531099i32;
                    } else {
                        _gotoNext = 531165i32;
                    };
                } else if (__value__ == (531099i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531116i32;
                    } else {
                        _gotoNext = 531138i32;
                    };
                } else if (__value__ == (531116i32)) {
                    _gotoNext = 531419i32;
                } else if (__value__ == (531138i32)) {
                    _z_530962 = (_z_530962 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 531089i32;
                } else if (__value__ == (531165i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 531175i32;
                    } else {
                        _gotoNext = 531193i32;
                    };
                } else if (__value__ == (531175i32)) {
                    return _z_530962;
                    _gotoNext = 531193i32;
                } else if (__value__ == (531193i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_530289 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_530276 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_530962 * _p_530289 : stdgo.GoFloat64) / _q_530276 : stdgo.GoFloat64);
                    _gotoNext = 531419i32;
                } else if (__value__ == (531419i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 531437i32;
                    } else {
                        _gotoNext = 531459i32;
                    };
                } else if (__value__ == (531437i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 531459i32;
                } else if (__value__ == (531459i32)) {
                    return (_z_530962 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
