package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_902124:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_901950:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _z_902316:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_901687:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_902119:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_901691:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_901643:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_902162:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_902145:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_902000:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_901932:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_901630:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_901359;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_901359 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 901450i32;
                } else if (__value__ == (901450i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 901460i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 901522i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 901557i32;
                    } else {
                        _gotoNext = 901630i32;
                    };
                } else if (__value__ == (901460i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 901630i32;
                } else if (__value__ == (901522i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 901630i32;
                } else if (__value__ == (901557i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 901586i32;
                    } else {
                        _gotoNext = 901612i32;
                    };
                } else if (__value__ == (901586i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 901612i32;
                } else if (__value__ == (901612i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 901630i32;
                } else if (__value__ == (901630i32)) {
                    _q_901630 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_901643 = stdgo._internal.math.Math_floor.floor(_q_901630);
                    if ((_q_901630 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 901668i32;
                    } else {
                        _gotoNext = 902316i32;
                    };
                } else if (__value__ == (901668i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 901682i32;
                    } else {
                        _gotoNext = 901932i32;
                    };
                } else if (__value__ == (901682i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_901687 = __tmp__._0;
                        _y2_901691 = __tmp__._1;
                    };
                    return (_y1_901687 * _y2_901691 : stdgo.GoFloat64);
                    _gotoNext = 901932i32;
                } else if (__value__ == (901932i32)) {
                    _signgam_901932 = (1 : stdgo.GoInt);
                    {
                        _ip_901950 = (_p_901643 : stdgo.GoInt64);
                        if ((_ip_901950 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 901976i32;
                        } else {
                            _gotoNext = 902000i32;
                        };
                    };
                } else if (__value__ == (901976i32)) {
                    _signgam_901932 = (-1 : stdgo.GoInt);
                    _gotoNext = 902000i32;
                } else if (__value__ == (902000i32)) {
                    _z_902000 = (_q_901630 - _p_901643 : stdgo.GoFloat64);
                    if ((_z_902000 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 902024i32;
                    } else {
                        _gotoNext = 902058i32;
                    };
                } else if (__value__ == (902024i32)) {
                    _p_901643 = (_p_901643 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_902000 = (_q_901630 - _p_901643 : stdgo.GoFloat64);
                    _gotoNext = 902058i32;
                } else if (__value__ == (902058i32)) {
                    _z_902000 = (_q_901630 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_902000 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_902000 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 902088i32;
                    } else {
                        _gotoNext = 902119i32;
                    };
                } else if (__value__ == (902088i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_901932);
                    _gotoNext = 902119i32;
                } else if (__value__ == (902119i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_901630);
                        _sq1_902119 = __tmp__._0;
                        _sq2_902124 = __tmp__._1;
                    };
                    _absz_902145 = stdgo._internal.math.Math_abs.abs(_z_902000);
                    _d_902162 = ((_absz_902145 * _sq1_902119 : stdgo.GoFloat64) * _sq2_902124 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_902162, (0 : stdgo.GoInt))) {
                        _gotoNext = 902201i32;
                    } else {
                        _gotoNext = 902241i32;
                    };
                } else if (__value__ == (902201i32)) {
                    _z_902000 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_902145 : stdgo.GoFloat64) / _sq1_902119 : stdgo.GoFloat64) / _sq2_902124 : stdgo.GoFloat64);
                    _gotoNext = 902263i32;
                } else if (__value__ == (902241i32)) {
                    _gotoNext = 902241i32;
                    _z_902000 = ((3.141592653589793 : stdgo.GoFloat64) / _d_902162 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 902263i32;
                } else if (__value__ == (902263i32)) {
                    return ((_signgam_901932 : stdgo.GoFloat64) * _z_902000 : stdgo.GoFloat64);
                    _gotoNext = 902316i32;
                } else if (__value__ == (902316i32)) {
                    _z_902316 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 902326i32;
                } else if (__value__ == (902326i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 902337i32;
                    } else {
                        _gotoNext = 902367i32;
                    };
                } else if (__value__ == (902337i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_902316 = (_z_902316 * _x : stdgo.GoFloat64);
                    _gotoNext = 902326i32;
                } else if (__value__ == (902367i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 902367i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 902377i32;
                    } else {
                        _gotoNext = 902443i32;
                    };
                } else if (__value__ == (902377i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 902395i32;
                    } else {
                        _gotoNext = 902417i32;
                    };
                } else if (__value__ == (902395i32)) {
                    _gotoNext = 902773i32;
                } else if (__value__ == (902417i32)) {
                    _z_902316 = (_z_902316 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 902367i32;
                } else if (__value__ == (902443i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 902443i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 902453i32;
                    } else {
                        _gotoNext = 902519i32;
                    };
                } else if (__value__ == (902453i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 902470i32;
                    } else {
                        _gotoNext = 902492i32;
                    };
                } else if (__value__ == (902470i32)) {
                    _gotoNext = 902773i32;
                } else if (__value__ == (902492i32)) {
                    _z_902316 = (_z_902316 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 902443i32;
                } else if (__value__ == (902519i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 902529i32;
                    } else {
                        _gotoNext = 902547i32;
                    };
                } else if (__value__ == (902529i32)) {
                    return _z_902316;
                    _gotoNext = 902547i32;
                } else if (__value__ == (902547i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_901643 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_901630 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_902316 * _p_901643 : stdgo.GoFloat64) / _q_901630 : stdgo.GoFloat64);
                    _gotoNext = 902773i32;
                } else if (__value__ == (902773i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 902791i32;
                    } else {
                        _gotoNext = 902813i32;
                    };
                } else if (__value__ == (902791i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 902813i32;
                } else if (__value__ == (902813i32)) {
                    return (_z_902316 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
