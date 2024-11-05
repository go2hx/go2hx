package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_471624:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_471196:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_471192:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_471148:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_471455:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_471437:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_471821:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_471667:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_471650:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_471629:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_471505:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_471135:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_470864;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_470864 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 470955i32;
                } else if (__value__ == (470955i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 470965i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 471027i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 471062i32;
                    } else {
                        _gotoNext = 471135i32;
                    };
                } else if (__value__ == (470965i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 471135i32;
                } else if (__value__ == (471027i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 471135i32;
                } else if (__value__ == (471062i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 471091i32;
                    } else {
                        _gotoNext = 471117i32;
                    };
                } else if (__value__ == (471091i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 471117i32;
                } else if (__value__ == (471117i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 471135i32;
                } else if (__value__ == (471135i32)) {
                    _q_471135 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_471148 = stdgo._internal.math.Math_floor.floor(_q_471135);
                    if ((_q_471135 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471173i32;
                    } else {
                        _gotoNext = 471821i32;
                    };
                } else if (__value__ == (471173i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471187i32;
                    } else {
                        _gotoNext = 471437i32;
                    };
                } else if (__value__ == (471187i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_471192 = __tmp__._0;
                        _y2_471196 = __tmp__._1;
                    };
                    return (_y1_471192 * _y2_471196 : stdgo.GoFloat64);
                    _gotoNext = 471437i32;
                } else if (__value__ == (471437i32)) {
                    _signgam_471437 = (1 : stdgo.GoInt);
                    {
                        _ip_471455 = (_p_471148 : stdgo.GoInt64);
                        if ((_ip_471455 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 471481i32;
                        } else {
                            _gotoNext = 471505i32;
                        };
                    };
                } else if (__value__ == (471481i32)) {
                    _signgam_471437 = (-1 : stdgo.GoInt);
                    _gotoNext = 471505i32;
                } else if (__value__ == (471505i32)) {
                    _z_471505 = (_q_471135 - _p_471148 : stdgo.GoFloat64);
                    if ((_z_471505 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471529i32;
                    } else {
                        _gotoNext = 471563i32;
                    };
                } else if (__value__ == (471529i32)) {
                    _p_471148 = (_p_471148 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_471505 = (_q_471135 - _p_471148 : stdgo.GoFloat64);
                    _gotoNext = 471563i32;
                } else if (__value__ == (471563i32)) {
                    _z_471505 = (_q_471135 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_471505 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_471505 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 471593i32;
                    } else {
                        _gotoNext = 471624i32;
                    };
                } else if (__value__ == (471593i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_471437);
                    _gotoNext = 471624i32;
                } else if (__value__ == (471624i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_471135);
                        _sq1_471624 = __tmp__._0;
                        _sq2_471629 = __tmp__._1;
                    };
                    _absz_471650 = stdgo._internal.math.Math_abs.abs(_z_471505);
                    _d_471667 = ((_absz_471650 * _sq1_471624 : stdgo.GoFloat64) * _sq2_471629 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_471667, (0 : stdgo.GoInt))) {
                        _gotoNext = 471706i32;
                    } else {
                        _gotoNext = 471746i32;
                    };
                } else if (__value__ == (471706i32)) {
                    _z_471505 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_471650 : stdgo.GoFloat64) / _sq1_471624 : stdgo.GoFloat64) / _sq2_471629 : stdgo.GoFloat64);
                    _gotoNext = 471768i32;
                } else if (__value__ == (471746i32)) {
                    _z_471505 = ((3.141592653589793 : stdgo.GoFloat64) / _d_471667 : stdgo.GoFloat64);
                    _gotoNext = 471768i32;
                } else if (__value__ == (471768i32)) {
                    return ((_signgam_471437 : stdgo.GoFloat64) * _z_471505 : stdgo.GoFloat64);
                    _gotoNext = 471821i32;
                } else if (__value__ == (471821i32)) {
                    _z_471821 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 471831i32;
                } else if (__value__ == (471831i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471842i32;
                    } else {
                        _gotoNext = 471872i32;
                    };
                } else if (__value__ == (471842i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_471821 = (_z_471821 * _x : stdgo.GoFloat64);
                    _gotoNext = 471831i32;
                } else if (__value__ == (471872i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 471872i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471882i32;
                    } else {
                        _gotoNext = 471948i32;
                    };
                } else if (__value__ == (471882i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471900i32;
                    } else {
                        _gotoNext = 471922i32;
                    };
                } else if (__value__ == (471900i32)) {
                    _gotoNext = 472278i32;
                } else if (__value__ == (471922i32)) {
                    _z_471821 = (_z_471821 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 471872i32;
                } else if (__value__ == (471948i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 471948i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471958i32;
                    } else {
                        _gotoNext = 472024i32;
                    };
                } else if (__value__ == (471958i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471975i32;
                    } else {
                        _gotoNext = 471997i32;
                    };
                } else if (__value__ == (471975i32)) {
                    _gotoNext = 472278i32;
                } else if (__value__ == (471997i32)) {
                    _z_471821 = (_z_471821 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 471948i32;
                } else if (__value__ == (472024i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 472034i32;
                    } else {
                        _gotoNext = 472052i32;
                    };
                } else if (__value__ == (472034i32)) {
                    return _z_471821;
                    _gotoNext = 472052i32;
                } else if (__value__ == (472052i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_471148 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_471135 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_471821 * _p_471148 : stdgo.GoFloat64) / _q_471135 : stdgo.GoFloat64);
                    _gotoNext = 472278i32;
                } else if (__value__ == (472278i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 472296i32;
                    } else {
                        _gotoNext = 472318i32;
                    };
                } else if (__value__ == (472296i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 472318i32;
                } else if (__value__ == (472318i32)) {
                    return (_z_471821 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
