package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_384521;
        var _z_385162:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_385094:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_384849:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_385324:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_385112:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _sq2_385286:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_384792:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_385478:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_385307:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_385281:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_384853:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_384805:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_384521 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 384612i32;
                } else if (__value__ == (384612i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 384622i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 384684i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 384719i32;
                    } else {
                        _gotoNext = 384792i32;
                    };
                } else if (__value__ == (384622i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 384792i32;
                } else if (__value__ == (384684i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 384792i32;
                } else if (__value__ == (384719i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 384748i32;
                    } else {
                        _gotoNext = 384774i32;
                    };
                } else if (__value__ == (384748i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 384774i32;
                } else if (__value__ == (384774i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 384792i32;
                } else if (__value__ == (384792i32)) {
                    _q_384792 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_384805 = stdgo._internal.math.Math_floor.floor(_q_384792);
                    if ((_q_384792 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 384830i32;
                    } else {
                        _gotoNext = 385478i32;
                    };
                } else if (__value__ == (384830i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 384844i32;
                    } else {
                        _gotoNext = 385094i32;
                    };
                } else if (__value__ == (384844i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_384849 = __tmp__._0;
                        _y2_384853 = __tmp__._1;
                    };
                    return (_y1_384849 * _y2_384853 : stdgo.GoFloat64);
                    _gotoNext = 385094i32;
                } else if (__value__ == (385094i32)) {
                    _signgam_385094 = (1 : stdgo.GoInt);
                    {
                        _ip_385112 = (_p_384805 : stdgo.GoInt64);
                        if ((_ip_385112 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 385138i32;
                        } else {
                            _gotoNext = 385162i32;
                        };
                    };
                } else if (__value__ == (385138i32)) {
                    _signgam_385094 = (-1 : stdgo.GoInt);
                    _gotoNext = 385162i32;
                } else if (__value__ == (385162i32)) {
                    _z_385162 = (_q_384792 - _p_384805 : stdgo.GoFloat64);
                    if ((_z_385162 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385186i32;
                    } else {
                        _gotoNext = 385220i32;
                    };
                } else if (__value__ == (385186i32)) {
                    _p_384805 = (_p_384805 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_385162 = (_q_384792 - _p_384805 : stdgo.GoFloat64);
                    _gotoNext = 385220i32;
                } else if (__value__ == (385220i32)) {
                    _z_385162 = (_q_384792 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_385162 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_385162 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385250i32;
                    } else {
                        _gotoNext = 385281i32;
                    };
                } else if (__value__ == (385250i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_385094);
                    _gotoNext = 385281i32;
                } else if (__value__ == (385281i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_384792);
                        _sq1_385281 = __tmp__._0;
                        _sq2_385286 = __tmp__._1;
                    };
                    _absz_385307 = stdgo._internal.math.Math_abs.abs(_z_385162);
                    _d_385324 = ((_absz_385307 * _sq1_385281 : stdgo.GoFloat64) * _sq2_385286 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_385324, (0 : stdgo.GoInt))) {
                        _gotoNext = 385363i32;
                    } else {
                        _gotoNext = 385403i32;
                    };
                } else if (__value__ == (385363i32)) {
                    _z_385162 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_385307 : stdgo.GoFloat64) / _sq1_385281 : stdgo.GoFloat64) / _sq2_385286 : stdgo.GoFloat64);
                    _gotoNext = 385425i32;
                } else if (__value__ == (385403i32)) {
                    _gotoNext = 385403i32;
                    _z_385162 = ((3.141592653589793 : stdgo.GoFloat64) / _d_385324 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 385425i32;
                } else if (__value__ == (385425i32)) {
                    return ((_signgam_385094 : stdgo.GoFloat64) * _z_385162 : stdgo.GoFloat64);
                    _gotoNext = 385478i32;
                } else if (__value__ == (385478i32)) {
                    _z_385478 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 385488i32;
                } else if (__value__ == (385488i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385499i32;
                    } else {
                        _gotoNext = 385529i32;
                    };
                } else if (__value__ == (385499i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_385478 = (_z_385478 * _x : stdgo.GoFloat64);
                    _gotoNext = 385488i32;
                } else if (__value__ == (385529i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 385529i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385539i32;
                    } else {
                        _gotoNext = 385605i32;
                    };
                } else if (__value__ == (385539i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385557i32;
                    } else {
                        _gotoNext = 385579i32;
                    };
                } else if (__value__ == (385557i32)) {
                    _gotoNext = 385935i32;
                } else if (__value__ == (385579i32)) {
                    _z_385478 = (_z_385478 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 385529i32;
                } else if (__value__ == (385605i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 385605i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385615i32;
                    } else {
                        _gotoNext = 385681i32;
                    };
                } else if (__value__ == (385615i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385632i32;
                    } else {
                        _gotoNext = 385654i32;
                    };
                } else if (__value__ == (385632i32)) {
                    _gotoNext = 385935i32;
                } else if (__value__ == (385654i32)) {
                    _z_385478 = (_z_385478 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 385605i32;
                } else if (__value__ == (385681i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 385691i32;
                    } else {
                        _gotoNext = 385709i32;
                    };
                } else if (__value__ == (385691i32)) {
                    return _z_385478;
                    _gotoNext = 385709i32;
                } else if (__value__ == (385709i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_384805 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_384792 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_385478 * _p_384805 : stdgo.GoFloat64) / _q_384792 : stdgo.GoFloat64);
                    _gotoNext = 385935i32;
                } else if (__value__ == (385935i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385953i32;
                    } else {
                        _gotoNext = 385975i32;
                    };
                } else if (__value__ == (385953i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385975i32;
                } else if (__value__ == (385975i32)) {
                    return (_z_385478 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
