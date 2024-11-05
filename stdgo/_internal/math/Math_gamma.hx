package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_459633:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_459612:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_459607:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_459420:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_458847;
        var _z_459804:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_459175:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_459131:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_459488:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_459438:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_459179:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_459118:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_459650:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_458847 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 458938i32;
                } else if (__value__ == (458938i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 458948i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 459010i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 459045i32;
                    } else {
                        _gotoNext = 459118i32;
                    };
                } else if (__value__ == (458948i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 459118i32;
                } else if (__value__ == (459010i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 459118i32;
                } else if (__value__ == (459045i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 459074i32;
                    } else {
                        _gotoNext = 459100i32;
                    };
                } else if (__value__ == (459074i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 459100i32;
                } else if (__value__ == (459100i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 459118i32;
                } else if (__value__ == (459118i32)) {
                    _q_459118 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_459131 = stdgo._internal.math.Math_floor.floor(_q_459118);
                    if ((_q_459118 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459156i32;
                    } else {
                        _gotoNext = 459804i32;
                    };
                } else if (__value__ == (459156i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459170i32;
                    } else {
                        _gotoNext = 459420i32;
                    };
                } else if (__value__ == (459170i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_459175 = __tmp__._0;
                        _y2_459179 = __tmp__._1;
                    };
                    return (_y1_459175 * _y2_459179 : stdgo.GoFloat64);
                    _gotoNext = 459420i32;
                } else if (__value__ == (459420i32)) {
                    _signgam_459420 = (1 : stdgo.GoInt);
                    {
                        _ip_459438 = (_p_459131 : stdgo.GoInt64);
                        if ((_ip_459438 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 459464i32;
                        } else {
                            _gotoNext = 459488i32;
                        };
                    };
                } else if (__value__ == (459464i32)) {
                    _signgam_459420 = (-1 : stdgo.GoInt);
                    _gotoNext = 459488i32;
                } else if (__value__ == (459488i32)) {
                    _z_459488 = (_q_459118 - _p_459131 : stdgo.GoFloat64);
                    if ((_z_459488 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459512i32;
                    } else {
                        _gotoNext = 459546i32;
                    };
                } else if (__value__ == (459512i32)) {
                    _p_459131 = (_p_459131 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_459488 = (_q_459118 - _p_459131 : stdgo.GoFloat64);
                    _gotoNext = 459546i32;
                } else if (__value__ == (459546i32)) {
                    _z_459488 = (_q_459118 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_459488 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_459488 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 459576i32;
                    } else {
                        _gotoNext = 459607i32;
                    };
                } else if (__value__ == (459576i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_459420);
                    _gotoNext = 459607i32;
                } else if (__value__ == (459607i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_459118);
                        _sq1_459607 = __tmp__._0;
                        _sq2_459612 = __tmp__._1;
                    };
                    _absz_459633 = stdgo._internal.math.Math_abs.abs(_z_459488);
                    _d_459650 = ((_absz_459633 * _sq1_459607 : stdgo.GoFloat64) * _sq2_459612 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_459650, (0 : stdgo.GoInt))) {
                        _gotoNext = 459689i32;
                    } else {
                        _gotoNext = 459729i32;
                    };
                } else if (__value__ == (459689i32)) {
                    _z_459488 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_459633 : stdgo.GoFloat64) / _sq1_459607 : stdgo.GoFloat64) / _sq2_459612 : stdgo.GoFloat64);
                    _gotoNext = 459751i32;
                } else if (__value__ == (459729i32)) {
                    _z_459488 = ((3.141592653589793 : stdgo.GoFloat64) / _d_459650 : stdgo.GoFloat64);
                    _gotoNext = 459751i32;
                } else if (__value__ == (459751i32)) {
                    return ((_signgam_459420 : stdgo.GoFloat64) * _z_459488 : stdgo.GoFloat64);
                    _gotoNext = 459804i32;
                } else if (__value__ == (459804i32)) {
                    _z_459804 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 459814i32;
                } else if (__value__ == (459814i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459825i32;
                    } else {
                        _gotoNext = 459855i32;
                    };
                } else if (__value__ == (459825i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_459804 = (_z_459804 * _x : stdgo.GoFloat64);
                    _gotoNext = 459814i32;
                } else if (__value__ == (459855i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 459855i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459865i32;
                    } else {
                        _gotoNext = 459931i32;
                    };
                } else if (__value__ == (459865i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459883i32;
                    } else {
                        _gotoNext = 459905i32;
                    };
                } else if (__value__ == (459883i32)) {
                    _gotoNext = 460261i32;
                } else if (__value__ == (459905i32)) {
                    _z_459804 = (_z_459804 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 459855i32;
                } else if (__value__ == (459931i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 459931i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459941i32;
                    } else {
                        _gotoNext = 460007i32;
                    };
                } else if (__value__ == (459941i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 459958i32;
                    } else {
                        _gotoNext = 459980i32;
                    };
                } else if (__value__ == (459958i32)) {
                    _gotoNext = 460261i32;
                } else if (__value__ == (459980i32)) {
                    _z_459804 = (_z_459804 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 459931i32;
                } else if (__value__ == (460007i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 460017i32;
                    } else {
                        _gotoNext = 460035i32;
                    };
                } else if (__value__ == (460017i32)) {
                    return _z_459804;
                    _gotoNext = 460035i32;
                } else if (__value__ == (460035i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_459131 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_459118 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_459804 * _p_459131 : stdgo.GoFloat64) / _q_459118 : stdgo.GoFloat64);
                    _gotoNext = 460261i32;
                } else if (__value__ == (460261i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 460279i32;
                    } else {
                        _gotoNext = 460301i32;
                    };
                } else if (__value__ == (460279i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 460301i32;
                } else if (__value__ == (460301i32)) {
                    return (_z_459804 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
