package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_371150:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_370958:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_370713:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_371342:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_371188:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_371145:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_371026:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_370717:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_370669:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_370385;
        var _absz_371171:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_370976:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_370656:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_370385 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 370476i32;
                } else if (__value__ == (370476i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 370486i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 370548i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 370583i32;
                    } else {
                        _gotoNext = 370656i32;
                    };
                } else if (__value__ == (370486i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 370656i32;
                } else if (__value__ == (370548i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 370656i32;
                } else if (__value__ == (370583i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 370612i32;
                    } else {
                        _gotoNext = 370638i32;
                    };
                } else if (__value__ == (370612i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 370638i32;
                } else if (__value__ == (370638i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 370656i32;
                } else if (__value__ == (370656i32)) {
                    _q_370656 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_370669 = stdgo._internal.math.Math_floor.floor(_q_370656);
                    if ((_q_370656 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 370694i32;
                    } else {
                        _gotoNext = 371342i32;
                    };
                } else if (__value__ == (370694i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 370708i32;
                    } else {
                        _gotoNext = 370958i32;
                    };
                } else if (__value__ == (370708i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_370713 = __tmp__._0;
                        _y2_370717 = __tmp__._1;
                    };
                    return (_y1_370713 * _y2_370717 : stdgo.GoFloat64);
                    _gotoNext = 370958i32;
                } else if (__value__ == (370958i32)) {
                    _signgam_370958 = (1 : stdgo.GoInt);
                    {
                        _ip_370976 = (_p_370669 : stdgo.GoInt64);
                        if ((_ip_370976 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 371002i32;
                        } else {
                            _gotoNext = 371026i32;
                        };
                    };
                } else if (__value__ == (371002i32)) {
                    _signgam_370958 = (-1 : stdgo.GoInt);
                    _gotoNext = 371026i32;
                } else if (__value__ == (371026i32)) {
                    _z_371026 = (_q_370656 - _p_370669 : stdgo.GoFloat64);
                    if ((_z_371026 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371050i32;
                    } else {
                        _gotoNext = 371084i32;
                    };
                } else if (__value__ == (371050i32)) {
                    _p_370669 = (_p_370669 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_371026 = (_q_370656 - _p_370669 : stdgo.GoFloat64);
                    _gotoNext = 371084i32;
                } else if (__value__ == (371084i32)) {
                    _z_371026 = (_q_370656 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_371026 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_371026 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 371114i32;
                    } else {
                        _gotoNext = 371145i32;
                    };
                } else if (__value__ == (371114i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_370958);
                    _gotoNext = 371145i32;
                } else if (__value__ == (371145i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_370656);
                        _sq1_371145 = __tmp__._0;
                        _sq2_371150 = __tmp__._1;
                    };
                    _absz_371171 = stdgo._internal.math.Math_abs.abs(_z_371026);
                    _d_371188 = ((_absz_371171 * _sq1_371145 : stdgo.GoFloat64) * _sq2_371150 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_371188, (0 : stdgo.GoInt))) {
                        _gotoNext = 371227i32;
                    } else {
                        _gotoNext = 371267i32;
                    };
                } else if (__value__ == (371227i32)) {
                    _z_371026 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_371171 : stdgo.GoFloat64) / _sq1_371145 : stdgo.GoFloat64) / _sq2_371150 : stdgo.GoFloat64);
                    _gotoNext = 371289i32;
                } else if (__value__ == (371267i32)) {
                    _gotoNext = 371267i32;
                    _z_371026 = ((3.141592653589793 : stdgo.GoFloat64) / _d_371188 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 371289i32;
                } else if (__value__ == (371289i32)) {
                    return ((_signgam_370958 : stdgo.GoFloat64) * _z_371026 : stdgo.GoFloat64);
                    _gotoNext = 371342i32;
                } else if (__value__ == (371342i32)) {
                    _z_371342 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 371352i32;
                } else if (__value__ == (371352i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371363i32;
                    } else {
                        _gotoNext = 371393i32;
                    };
                } else if (__value__ == (371363i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_371342 = (_z_371342 * _x : stdgo.GoFloat64);
                    _gotoNext = 371352i32;
                } else if (__value__ == (371393i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 371393i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371403i32;
                    } else {
                        _gotoNext = 371469i32;
                    };
                } else if (__value__ == (371403i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371421i32;
                    } else {
                        _gotoNext = 371443i32;
                    };
                } else if (__value__ == (371421i32)) {
                    _gotoNext = 371799i32;
                } else if (__value__ == (371443i32)) {
                    _z_371342 = (_z_371342 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 371393i32;
                } else if (__value__ == (371469i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 371469i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371479i32;
                    } else {
                        _gotoNext = 371545i32;
                    };
                } else if (__value__ == (371479i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371496i32;
                    } else {
                        _gotoNext = 371518i32;
                    };
                } else if (__value__ == (371496i32)) {
                    _gotoNext = 371799i32;
                } else if (__value__ == (371518i32)) {
                    _z_371342 = (_z_371342 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 371469i32;
                } else if (__value__ == (371545i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 371555i32;
                    } else {
                        _gotoNext = 371573i32;
                    };
                } else if (__value__ == (371555i32)) {
                    return _z_371342;
                    _gotoNext = 371573i32;
                } else if (__value__ == (371573i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_370669 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_370656 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_371342 * _p_370669 : stdgo.GoFloat64) / _q_370656 : stdgo.GoFloat64);
                    _gotoNext = 371799i32;
                } else if (__value__ == (371799i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 371817i32;
                    } else {
                        _gotoNext = 371839i32;
                    };
                } else if (__value__ == (371817i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 371839i32;
                } else if (__value__ == (371839i32)) {
                    return (_z_371342 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
