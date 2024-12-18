package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_457926:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_457772:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_457729:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_457542:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_457253:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_457610:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_457560:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_456969;
        var _absz_457755:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_457734:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_457240:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_457301:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_457297:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_456969 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 457060i32;
                } else if (__value__ == (457060i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 457070i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 457132i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 457167i32;
                    } else {
                        _gotoNext = 457240i32;
                    };
                } else if (__value__ == (457070i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 457240i32;
                } else if (__value__ == (457132i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 457240i32;
                } else if (__value__ == (457167i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 457196i32;
                    } else {
                        _gotoNext = 457222i32;
                    };
                } else if (__value__ == (457196i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 457222i32;
                } else if (__value__ == (457222i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 457240i32;
                } else if (__value__ == (457240i32)) {
                    _q_457240 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_457253 = stdgo._internal.math.Math_floor.floor(_q_457240);
                    if ((_q_457240 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457278i32;
                    } else {
                        _gotoNext = 457926i32;
                    };
                } else if (__value__ == (457278i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457292i32;
                    } else {
                        _gotoNext = 457542i32;
                    };
                } else if (__value__ == (457292i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_457297 = __tmp__._0;
                        _y2_457301 = __tmp__._1;
                    };
                    return (_y1_457297 * _y2_457301 : stdgo.GoFloat64);
                    _gotoNext = 457542i32;
                } else if (__value__ == (457542i32)) {
                    _signgam_457542 = (1 : stdgo.GoInt);
                    {
                        _ip_457560 = (_p_457253 : stdgo.GoInt64);
                        if ((_ip_457560 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 457586i32;
                        } else {
                            _gotoNext = 457610i32;
                        };
                    };
                } else if (__value__ == (457586i32)) {
                    _signgam_457542 = (-1 : stdgo.GoInt);
                    _gotoNext = 457610i32;
                } else if (__value__ == (457610i32)) {
                    _z_457610 = (_q_457240 - _p_457253 : stdgo.GoFloat64);
                    if ((_z_457610 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457634i32;
                    } else {
                        _gotoNext = 457668i32;
                    };
                } else if (__value__ == (457634i32)) {
                    _p_457253 = (_p_457253 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_457610 = (_q_457240 - _p_457253 : stdgo.GoFloat64);
                    _gotoNext = 457668i32;
                } else if (__value__ == (457668i32)) {
                    _z_457610 = (_q_457240 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_457610 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_457610 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 457698i32;
                    } else {
                        _gotoNext = 457729i32;
                    };
                } else if (__value__ == (457698i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_457542);
                    _gotoNext = 457729i32;
                } else if (__value__ == (457729i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_457240);
                        _sq1_457729 = __tmp__._0;
                        _sq2_457734 = __tmp__._1;
                    };
                    _absz_457755 = stdgo._internal.math.Math_abs.abs(_z_457610);
                    _d_457772 = ((_absz_457755 * _sq1_457729 : stdgo.GoFloat64) * _sq2_457734 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_457772, (0 : stdgo.GoInt))) {
                        _gotoNext = 457811i32;
                    } else {
                        _gotoNext = 457851i32;
                    };
                } else if (__value__ == (457811i32)) {
                    _z_457610 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_457755 : stdgo.GoFloat64) / _sq1_457729 : stdgo.GoFloat64) / _sq2_457734 : stdgo.GoFloat64);
                    _gotoNext = 457873i32;
                } else if (__value__ == (457851i32)) {
                    _gotoNext = 457851i32;
                    _z_457610 = ((3.141592653589793 : stdgo.GoFloat64) / _d_457772 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 457873i32;
                } else if (__value__ == (457873i32)) {
                    return ((_signgam_457542 : stdgo.GoFloat64) * _z_457610 : stdgo.GoFloat64);
                    _gotoNext = 457926i32;
                } else if (__value__ == (457926i32)) {
                    _z_457926 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 457936i32;
                } else if (__value__ == (457936i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457947i32;
                    } else {
                        _gotoNext = 457977i32;
                    };
                } else if (__value__ == (457947i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_457926 = (_z_457926 * _x : stdgo.GoFloat64);
                    _gotoNext = 457936i32;
                } else if (__value__ == (457977i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 457977i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457987i32;
                    } else {
                        _gotoNext = 458053i32;
                    };
                } else if (__value__ == (457987i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458005i32;
                    } else {
                        _gotoNext = 458027i32;
                    };
                } else if (__value__ == (458005i32)) {
                    _gotoNext = 458383i32;
                } else if (__value__ == (458027i32)) {
                    _z_457926 = (_z_457926 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 457977i32;
                } else if (__value__ == (458053i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 458053i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458063i32;
                    } else {
                        _gotoNext = 458129i32;
                    };
                } else if (__value__ == (458063i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458080i32;
                    } else {
                        _gotoNext = 458102i32;
                    };
                } else if (__value__ == (458080i32)) {
                    _gotoNext = 458383i32;
                } else if (__value__ == (458102i32)) {
                    _z_457926 = (_z_457926 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 458053i32;
                } else if (__value__ == (458129i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 458139i32;
                    } else {
                        _gotoNext = 458157i32;
                    };
                } else if (__value__ == (458139i32)) {
                    return _z_457926;
                    _gotoNext = 458157i32;
                } else if (__value__ == (458157i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_457253 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_457240 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_457926 * _p_457253 : stdgo.GoFloat64) / _q_457240 : stdgo.GoFloat64);
                    _gotoNext = 458383i32;
                } else if (__value__ == (458383i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 458401i32;
                    } else {
                        _gotoNext = 458423i32;
                    };
                } else if (__value__ == (458401i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 458423i32;
                } else if (__value__ == (458423i32)) {
                    return (_z_457926 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
