package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _p_476425:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_476412:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_476141;
        var _z_477098:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_476906:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_476782:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_476714:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_476469:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_476944:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_476473:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_476927:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_476901:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_476732:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_476141 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 476232i32;
                } else if (__value__ == (476232i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 476242i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 476304i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 476339i32;
                    } else {
                        _gotoNext = 476412i32;
                    };
                } else if (__value__ == (476242i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 476412i32;
                } else if (__value__ == (476304i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 476412i32;
                } else if (__value__ == (476339i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 476368i32;
                    } else {
                        _gotoNext = 476394i32;
                    };
                } else if (__value__ == (476368i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 476394i32;
                } else if (__value__ == (476394i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 476412i32;
                } else if (__value__ == (476412i32)) {
                    _q_476412 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_476425 = stdgo._internal.math.Math_floor.floor(_q_476412);
                    if ((_q_476412 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476450i32;
                    } else {
                        _gotoNext = 477098i32;
                    };
                } else if (__value__ == (476450i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476464i32;
                    } else {
                        _gotoNext = 476714i32;
                    };
                } else if (__value__ == (476464i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_476469 = __tmp__._0;
                        _y2_476473 = __tmp__._1;
                    };
                    return (_y1_476469 * _y2_476473 : stdgo.GoFloat64);
                    _gotoNext = 476714i32;
                } else if (__value__ == (476714i32)) {
                    _signgam_476714 = (1 : stdgo.GoInt);
                    {
                        _ip_476732 = (_p_476425 : stdgo.GoInt64);
                        if ((_ip_476732 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 476758i32;
                        } else {
                            _gotoNext = 476782i32;
                        };
                    };
                } else if (__value__ == (476758i32)) {
                    _signgam_476714 = (-1 : stdgo.GoInt);
                    _gotoNext = 476782i32;
                } else if (__value__ == (476782i32)) {
                    _z_476782 = (_q_476412 - _p_476425 : stdgo.GoFloat64);
                    if ((_z_476782 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476806i32;
                    } else {
                        _gotoNext = 476840i32;
                    };
                } else if (__value__ == (476806i32)) {
                    _p_476425 = (_p_476425 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_476782 = (_q_476412 - _p_476425 : stdgo.GoFloat64);
                    _gotoNext = 476840i32;
                } else if (__value__ == (476840i32)) {
                    _z_476782 = (_q_476412 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_476782 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_476782 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 476870i32;
                    } else {
                        _gotoNext = 476901i32;
                    };
                } else if (__value__ == (476870i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_476714);
                    _gotoNext = 476901i32;
                } else if (__value__ == (476901i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_476412);
                        _sq1_476901 = __tmp__._0;
                        _sq2_476906 = __tmp__._1;
                    };
                    _absz_476927 = stdgo._internal.math.Math_abs.abs(_z_476782);
                    _d_476944 = ((_absz_476927 * _sq1_476901 : stdgo.GoFloat64) * _sq2_476906 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_476944, (0 : stdgo.GoInt))) {
                        _gotoNext = 476983i32;
                    } else {
                        _gotoNext = 477023i32;
                    };
                } else if (__value__ == (476983i32)) {
                    _z_476782 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_476927 : stdgo.GoFloat64) / _sq1_476901 : stdgo.GoFloat64) / _sq2_476906 : stdgo.GoFloat64);
                    _gotoNext = 477045i32;
                } else if (__value__ == (477023i32)) {
                    _gotoNext = 477023i32;
                    _z_476782 = ((3.141592653589793 : stdgo.GoFloat64) / _d_476944 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 477045i32;
                } else if (__value__ == (477045i32)) {
                    return ((_signgam_476714 : stdgo.GoFloat64) * _z_476782 : stdgo.GoFloat64);
                    _gotoNext = 477098i32;
                } else if (__value__ == (477098i32)) {
                    _z_477098 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 477108i32;
                } else if (__value__ == (477108i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477119i32;
                    } else {
                        _gotoNext = 477149i32;
                    };
                } else if (__value__ == (477119i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_477098 = (_z_477098 * _x : stdgo.GoFloat64);
                    _gotoNext = 477108i32;
                } else if (__value__ == (477149i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 477149i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477159i32;
                    } else {
                        _gotoNext = 477225i32;
                    };
                } else if (__value__ == (477159i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477177i32;
                    } else {
                        _gotoNext = 477199i32;
                    };
                } else if (__value__ == (477177i32)) {
                    _gotoNext = 477555i32;
                } else if (__value__ == (477199i32)) {
                    _z_477098 = (_z_477098 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 477149i32;
                } else if (__value__ == (477225i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 477225i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477235i32;
                    } else {
                        _gotoNext = 477301i32;
                    };
                } else if (__value__ == (477235i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477252i32;
                    } else {
                        _gotoNext = 477274i32;
                    };
                } else if (__value__ == (477252i32)) {
                    _gotoNext = 477555i32;
                } else if (__value__ == (477274i32)) {
                    _z_477098 = (_z_477098 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 477225i32;
                } else if (__value__ == (477301i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 477311i32;
                    } else {
                        _gotoNext = 477329i32;
                    };
                } else if (__value__ == (477311i32)) {
                    return _z_477098;
                    _gotoNext = 477329i32;
                } else if (__value__ == (477329i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_476425 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_476412 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_477098 * _p_476425 : stdgo.GoFloat64) / _q_476412 : stdgo.GoFloat64);
                    _gotoNext = 477555i32;
                } else if (__value__ == (477555i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 477573i32;
                    } else {
                        _gotoNext = 477595i32;
                    };
                } else if (__value__ == (477573i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 477595i32;
                } else if (__value__ == (477595i32)) {
                    return (_z_477098 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
