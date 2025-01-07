package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_495152:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_494698:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_494650:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_494366;
        var _z_495323:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_495126:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_495169:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_494939:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq2_495131:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_495007:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_494957:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_494694:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_494637:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_494366 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 494457i32;
                } else if (__value__ == (494457i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 494467i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 494529i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 494564i32;
                    } else {
                        _gotoNext = 494637i32;
                    };
                } else if (__value__ == (494467i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 494637i32;
                } else if (__value__ == (494529i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 494637i32;
                } else if (__value__ == (494564i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 494593i32;
                    } else {
                        _gotoNext = 494619i32;
                    };
                } else if (__value__ == (494593i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 494619i32;
                } else if (__value__ == (494619i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 494637i32;
                } else if (__value__ == (494637i32)) {
                    _q_494637 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_494650 = stdgo._internal.math.Math_floor.floor(_q_494637);
                    if ((_q_494637 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 494675i32;
                    } else {
                        _gotoNext = 495323i32;
                    };
                } else if (__value__ == (494675i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 494689i32;
                    } else {
                        _gotoNext = 494939i32;
                    };
                } else if (__value__ == (494689i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_494694 = __tmp__._0;
                        _y2_494698 = __tmp__._1;
                    };
                    return (_y1_494694 * _y2_494698 : stdgo.GoFloat64);
                    _gotoNext = 494939i32;
                } else if (__value__ == (494939i32)) {
                    _signgam_494939 = (1 : stdgo.GoInt);
                    {
                        _ip_494957 = (_p_494650 : stdgo.GoInt64);
                        if ((_ip_494957 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 494983i32;
                        } else {
                            _gotoNext = 495007i32;
                        };
                    };
                } else if (__value__ == (494983i32)) {
                    _signgam_494939 = (-1 : stdgo.GoInt);
                    _gotoNext = 495007i32;
                } else if (__value__ == (495007i32)) {
                    _z_495007 = (_q_494637 - _p_494650 : stdgo.GoFloat64);
                    if ((_z_495007 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 495031i32;
                    } else {
                        _gotoNext = 495065i32;
                    };
                } else if (__value__ == (495031i32)) {
                    _p_494650 = (_p_494650 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_495007 = (_q_494637 - _p_494650 : stdgo.GoFloat64);
                    _gotoNext = 495065i32;
                } else if (__value__ == (495065i32)) {
                    _z_495007 = (_q_494637 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_495007 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_495007 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 495095i32;
                    } else {
                        _gotoNext = 495126i32;
                    };
                } else if (__value__ == (495095i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_494939);
                    _gotoNext = 495126i32;
                } else if (__value__ == (495126i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_494637);
                        _sq1_495126 = __tmp__._0;
                        _sq2_495131 = __tmp__._1;
                    };
                    _absz_495152 = stdgo._internal.math.Math_abs.abs(_z_495007);
                    _d_495169 = ((_absz_495152 * _sq1_495126 : stdgo.GoFloat64) * _sq2_495131 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_495169, (0 : stdgo.GoInt))) {
                        _gotoNext = 495208i32;
                    } else {
                        _gotoNext = 495248i32;
                    };
                } else if (__value__ == (495208i32)) {
                    _z_495007 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_495152 : stdgo.GoFloat64) / _sq1_495126 : stdgo.GoFloat64) / _sq2_495131 : stdgo.GoFloat64);
                    _gotoNext = 495270i32;
                } else if (__value__ == (495248i32)) {
                    _gotoNext = 495248i32;
                    _z_495007 = ((3.141592653589793 : stdgo.GoFloat64) / _d_495169 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 495270i32;
                } else if (__value__ == (495270i32)) {
                    return ((_signgam_494939 : stdgo.GoFloat64) * _z_495007 : stdgo.GoFloat64);
                    _gotoNext = 495323i32;
                } else if (__value__ == (495323i32)) {
                    _z_495323 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 495333i32;
                } else if (__value__ == (495333i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 495344i32;
                    } else {
                        _gotoNext = 495374i32;
                    };
                } else if (__value__ == (495344i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_495323 = (_z_495323 * _x : stdgo.GoFloat64);
                    _gotoNext = 495333i32;
                } else if (__value__ == (495374i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 495374i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 495384i32;
                    } else {
                        _gotoNext = 495450i32;
                    };
                } else if (__value__ == (495384i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 495402i32;
                    } else {
                        _gotoNext = 495424i32;
                    };
                } else if (__value__ == (495402i32)) {
                    _gotoNext = 495780i32;
                } else if (__value__ == (495424i32)) {
                    _z_495323 = (_z_495323 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 495374i32;
                } else if (__value__ == (495450i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 495450i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 495460i32;
                    } else {
                        _gotoNext = 495526i32;
                    };
                } else if (__value__ == (495460i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 495477i32;
                    } else {
                        _gotoNext = 495499i32;
                    };
                } else if (__value__ == (495477i32)) {
                    _gotoNext = 495780i32;
                } else if (__value__ == (495499i32)) {
                    _z_495323 = (_z_495323 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 495450i32;
                } else if (__value__ == (495526i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 495536i32;
                    } else {
                        _gotoNext = 495554i32;
                    };
                } else if (__value__ == (495536i32)) {
                    return _z_495323;
                    _gotoNext = 495554i32;
                } else if (__value__ == (495554i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_494650 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_494637 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_495323 * _p_494650 : stdgo.GoFloat64) / _q_494637 : stdgo.GoFloat64);
                    _gotoNext = 495780i32;
                } else if (__value__ == (495780i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 495798i32;
                    } else {
                        _gotoNext = 495820i32;
                    };
                } else if (__value__ == (495798i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 495820i32;
                } else if (__value__ == (495820i32)) {
                    return (_z_495323 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
