package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_396592:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_396574:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_396285:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_396333:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_396787:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_396761:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_396329:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_396272:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_396958:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_396804:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_396766:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_396642:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_396001;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_396001 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 396092i32;
                } else if (__value__ == (396092i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 396102i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 396164i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 396199i32;
                    } else {
                        _gotoNext = 396272i32;
                    };
                } else if (__value__ == (396102i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 396272i32;
                } else if (__value__ == (396164i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 396272i32;
                } else if (__value__ == (396199i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 396228i32;
                    } else {
                        _gotoNext = 396254i32;
                    };
                } else if (__value__ == (396228i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 396254i32;
                } else if (__value__ == (396254i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 396272i32;
                } else if (__value__ == (396272i32)) {
                    _q_396272 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_396285 = stdgo._internal.math.Math_floor.floor(_q_396272);
                    if ((_q_396272 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 396310i32;
                    } else {
                        _gotoNext = 396958i32;
                    };
                } else if (__value__ == (396310i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 396324i32;
                    } else {
                        _gotoNext = 396574i32;
                    };
                } else if (__value__ == (396324i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_396329 = __tmp__._0;
                        _y2_396333 = __tmp__._1;
                    };
                    return (_y1_396329 * _y2_396333 : stdgo.GoFloat64);
                    _gotoNext = 396574i32;
                } else if (__value__ == (396574i32)) {
                    _signgam_396574 = (1 : stdgo.GoInt);
                    {
                        _ip_396592 = (_p_396285 : stdgo.GoInt64);
                        if ((_ip_396592 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 396618i32;
                        } else {
                            _gotoNext = 396642i32;
                        };
                    };
                } else if (__value__ == (396618i32)) {
                    _signgam_396574 = (-1 : stdgo.GoInt);
                    _gotoNext = 396642i32;
                } else if (__value__ == (396642i32)) {
                    _z_396642 = (_q_396272 - _p_396285 : stdgo.GoFloat64);
                    if ((_z_396642 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 396666i32;
                    } else {
                        _gotoNext = 396700i32;
                    };
                } else if (__value__ == (396666i32)) {
                    _p_396285 = (_p_396285 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_396642 = (_q_396272 - _p_396285 : stdgo.GoFloat64);
                    _gotoNext = 396700i32;
                } else if (__value__ == (396700i32)) {
                    _z_396642 = (_q_396272 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_396642 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_396642 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 396730i32;
                    } else {
                        _gotoNext = 396761i32;
                    };
                } else if (__value__ == (396730i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_396574);
                    _gotoNext = 396761i32;
                } else if (__value__ == (396761i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_396272);
                        _sq1_396761 = __tmp__._0;
                        _sq2_396766 = __tmp__._1;
                    };
                    _absz_396787 = stdgo._internal.math.Math_abs.abs(_z_396642);
                    _d_396804 = ((_absz_396787 * _sq1_396761 : stdgo.GoFloat64) * _sq2_396766 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_396804, (0 : stdgo.GoInt))) {
                        _gotoNext = 396843i32;
                    } else {
                        _gotoNext = 396883i32;
                    };
                } else if (__value__ == (396843i32)) {
                    _z_396642 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_396787 : stdgo.GoFloat64) / _sq1_396761 : stdgo.GoFloat64) / _sq2_396766 : stdgo.GoFloat64);
                    _gotoNext = 396905i32;
                } else if (__value__ == (396883i32)) {
                    _gotoNext = 396883i32;
                    _z_396642 = ((3.141592653589793 : stdgo.GoFloat64) / _d_396804 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 396905i32;
                } else if (__value__ == (396905i32)) {
                    return ((_signgam_396574 : stdgo.GoFloat64) * _z_396642 : stdgo.GoFloat64);
                    _gotoNext = 396958i32;
                } else if (__value__ == (396958i32)) {
                    _z_396958 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 396968i32;
                } else if (__value__ == (396968i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 396979i32;
                    } else {
                        _gotoNext = 397009i32;
                    };
                } else if (__value__ == (396979i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_396958 = (_z_396958 * _x : stdgo.GoFloat64);
                    _gotoNext = 396968i32;
                } else if (__value__ == (397009i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 397009i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 397019i32;
                    } else {
                        _gotoNext = 397085i32;
                    };
                } else if (__value__ == (397019i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 397037i32;
                    } else {
                        _gotoNext = 397059i32;
                    };
                } else if (__value__ == (397037i32)) {
                    _gotoNext = 397415i32;
                } else if (__value__ == (397059i32)) {
                    _z_396958 = (_z_396958 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 397009i32;
                } else if (__value__ == (397085i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 397085i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 397095i32;
                    } else {
                        _gotoNext = 397161i32;
                    };
                } else if (__value__ == (397095i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 397112i32;
                    } else {
                        _gotoNext = 397134i32;
                    };
                } else if (__value__ == (397112i32)) {
                    _gotoNext = 397415i32;
                } else if (__value__ == (397134i32)) {
                    _z_396958 = (_z_396958 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 397085i32;
                } else if (__value__ == (397161i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 397171i32;
                    } else {
                        _gotoNext = 397189i32;
                    };
                } else if (__value__ == (397171i32)) {
                    return _z_396958;
                    _gotoNext = 397189i32;
                } else if (__value__ == (397189i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_396285 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_396272 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_396958 * _p_396285 : stdgo.GoFloat64) / _q_396272 : stdgo.GoFloat64);
                    _gotoNext = 397415i32;
                } else if (__value__ == (397415i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 397433i32;
                    } else {
                        _gotoNext = 397455i32;
                    };
                } else if (__value__ == (397433i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 397455i32;
                } else if (__value__ == (397455i32)) {
                    return (_z_396958 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
