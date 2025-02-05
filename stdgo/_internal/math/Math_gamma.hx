package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _q_449442:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_449974:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_449957:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_449812:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_449455:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_449744:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_450128:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_449936:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_449762:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _sq1_449931:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_449171;
        var _y2_449503:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_449499:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_449171 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 449262i32;
                } else if (__value__ == (449262i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 449272i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 449334i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 449369i32;
                    } else {
                        _gotoNext = 449442i32;
                    };
                } else if (__value__ == (449272i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 449442i32;
                } else if (__value__ == (449334i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 449442i32;
                } else if (__value__ == (449369i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 449398i32;
                    } else {
                        _gotoNext = 449424i32;
                    };
                } else if (__value__ == (449398i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 449424i32;
                } else if (__value__ == (449424i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 449442i32;
                } else if (__value__ == (449442i32)) {
                    _q_449442 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_449455 = stdgo._internal.math.Math_floor.floor(_q_449442);
                    if ((_q_449442 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449480i32;
                    } else {
                        _gotoNext = 450128i32;
                    };
                } else if (__value__ == (449480i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449494i32;
                    } else {
                        _gotoNext = 449744i32;
                    };
                } else if (__value__ == (449494i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_449499 = @:tmpset0 __tmp__._0;
                        _y2_449503 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_449499 * _y2_449503 : stdgo.GoFloat64);
                    _gotoNext = 449744i32;
                } else if (__value__ == (449744i32)) {
                    _signgam_449744 = (1 : stdgo.GoInt);
                    {
                        _ip_449762 = (_p_449455 : stdgo.GoInt64);
                        if ((_ip_449762 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 449788i32;
                        } else {
                            _gotoNext = 449812i32;
                        };
                    };
                } else if (__value__ == (449788i32)) {
                    _signgam_449744 = (-1 : stdgo.GoInt);
                    _gotoNext = 449812i32;
                } else if (__value__ == (449812i32)) {
                    _z_449812 = (_q_449442 - _p_449455 : stdgo.GoFloat64);
                    if ((_z_449812 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449836i32;
                    } else {
                        _gotoNext = 449870i32;
                    };
                } else if (__value__ == (449836i32)) {
                    _p_449455 = (_p_449455 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_449812 = (_q_449442 - _p_449455 : stdgo.GoFloat64);
                    _gotoNext = 449870i32;
                } else if (__value__ == (449870i32)) {
                    _z_449812 = (_q_449442 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_449812 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_449812 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 449900i32;
                    } else {
                        _gotoNext = 449931i32;
                    };
                } else if (__value__ == (449900i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_449744);
                    _gotoNext = 449931i32;
                } else if (__value__ == (449931i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_449442);
                        _sq1_449931 = @:tmpset0 __tmp__._0;
                        _sq2_449936 = @:tmpset0 __tmp__._1;
                    };
                    _absz_449957 = stdgo._internal.math.Math_abs.abs(_z_449812);
                    _d_449974 = ((_absz_449957 * _sq1_449931 : stdgo.GoFloat64) * _sq2_449936 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_449974, (0 : stdgo.GoInt))) {
                        _gotoNext = 450013i32;
                    } else {
                        _gotoNext = 450053i32;
                    };
                } else if (__value__ == (450013i32)) {
                    _z_449812 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_449957 : stdgo.GoFloat64) / _sq1_449931 : stdgo.GoFloat64) / _sq2_449936 : stdgo.GoFloat64);
                    _gotoNext = 450075i32;
                } else if (__value__ == (450053i32)) {
                    _gotoNext = 450053i32;
                    _z_449812 = ((3.141592653589793 : stdgo.GoFloat64) / _d_449974 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 450075i32;
                } else if (__value__ == (450075i32)) {
                    return ((_signgam_449744 : stdgo.GoFloat64) * _z_449812 : stdgo.GoFloat64);
                    _gotoNext = 450128i32;
                } else if (__value__ == (450128i32)) {
                    _z_450128 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 450138i32;
                } else if (__value__ == (450138i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450149i32;
                    } else {
                        _gotoNext = 450179i32;
                    };
                } else if (__value__ == (450149i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_450128 = (_z_450128 * _x : stdgo.GoFloat64);
                    _gotoNext = 450138i32;
                } else if (__value__ == (450179i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 450179i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450189i32;
                    } else {
                        _gotoNext = 450255i32;
                    };
                } else if (__value__ == (450189i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450207i32;
                    } else {
                        _gotoNext = 450229i32;
                    };
                } else if (__value__ == (450207i32)) {
                    _gotoNext = 450585i32;
                } else if (__value__ == (450229i32)) {
                    _z_450128 = (_z_450128 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 450179i32;
                } else if (__value__ == (450255i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 450255i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450265i32;
                    } else {
                        _gotoNext = 450331i32;
                    };
                } else if (__value__ == (450265i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450282i32;
                    } else {
                        _gotoNext = 450304i32;
                    };
                } else if (__value__ == (450282i32)) {
                    _gotoNext = 450585i32;
                } else if (__value__ == (450304i32)) {
                    _z_450128 = (_z_450128 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 450255i32;
                } else if (__value__ == (450331i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 450341i32;
                    } else {
                        _gotoNext = 450359i32;
                    };
                } else if (__value__ == (450341i32)) {
                    return _z_450128;
                    _gotoNext = 450359i32;
                } else if (__value__ == (450359i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_449455 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_449442 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_450128 * _p_449455 : stdgo.GoFloat64) / _q_449442 : stdgo.GoFloat64);
                    _gotoNext = 450585i32;
                } else if (__value__ == (450585i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 450603i32;
                    } else {
                        _gotoNext = 450625i32;
                    };
                } else if (__value__ == (450603i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 450625i32;
                } else if (__value__ == (450625i32)) {
                    return (_z_450128 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
