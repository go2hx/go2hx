package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _q_476829:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_477361:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_477318:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_476890:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_476842:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_477199:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_477149:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_476886:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_477131:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_476558;
        var _z_477515:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_477344:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_477323:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_476558 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 476649i32;
                } else if (__value__ == (476649i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 476659i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 476721i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 476756i32;
                    } else {
                        _gotoNext = 476829i32;
                    };
                } else if (__value__ == (476659i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 476829i32;
                } else if (__value__ == (476721i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 476829i32;
                } else if (__value__ == (476756i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 476785i32;
                    } else {
                        _gotoNext = 476811i32;
                    };
                } else if (__value__ == (476785i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 476811i32;
                } else if (__value__ == (476811i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 476829i32;
                } else if (__value__ == (476829i32)) {
                    _q_476829 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_476842 = stdgo._internal.math.Math_floor.floor(_q_476829);
                    if ((_q_476829 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476867i32;
                    } else {
                        _gotoNext = 477515i32;
                    };
                } else if (__value__ == (476867i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 476881i32;
                    } else {
                        _gotoNext = 477131i32;
                    };
                } else if (__value__ == (476881i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_476886 = __tmp__._0;
                        _y2_476890 = __tmp__._1;
                    };
                    return (_y1_476886 * _y2_476890 : stdgo.GoFloat64);
                    _gotoNext = 477131i32;
                } else if (__value__ == (477131i32)) {
                    _signgam_477131 = (1 : stdgo.GoInt);
                    {
                        _ip_477149 = (_p_476842 : stdgo.GoInt64);
                        if ((_ip_477149 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 477175i32;
                        } else {
                            _gotoNext = 477199i32;
                        };
                    };
                } else if (__value__ == (477175i32)) {
                    _signgam_477131 = (-1 : stdgo.GoInt);
                    _gotoNext = 477199i32;
                } else if (__value__ == (477199i32)) {
                    _z_477199 = (_q_476829 - _p_476842 : stdgo.GoFloat64);
                    if ((_z_477199 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477223i32;
                    } else {
                        _gotoNext = 477257i32;
                    };
                } else if (__value__ == (477223i32)) {
                    _p_476842 = (_p_476842 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_477199 = (_q_476829 - _p_476842 : stdgo.GoFloat64);
                    _gotoNext = 477257i32;
                } else if (__value__ == (477257i32)) {
                    _z_477199 = (_q_476829 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_477199 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_477199 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 477287i32;
                    } else {
                        _gotoNext = 477318i32;
                    };
                } else if (__value__ == (477287i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_477131);
                    _gotoNext = 477318i32;
                } else if (__value__ == (477318i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_476829);
                        _sq1_477318 = __tmp__._0;
                        _sq2_477323 = __tmp__._1;
                    };
                    _absz_477344 = stdgo._internal.math.Math_abs.abs(_z_477199);
                    _d_477361 = ((_absz_477344 * _sq1_477318 : stdgo.GoFloat64) * _sq2_477323 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_477361, (0 : stdgo.GoInt))) {
                        _gotoNext = 477400i32;
                    } else {
                        _gotoNext = 477440i32;
                    };
                } else if (__value__ == (477400i32)) {
                    _z_477199 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_477344 : stdgo.GoFloat64) / _sq1_477318 : stdgo.GoFloat64) / _sq2_477323 : stdgo.GoFloat64);
                    _gotoNext = 477462i32;
                } else if (__value__ == (477440i32)) {
                    _gotoNext = 477440i32;
                    _z_477199 = ((3.141592653589793 : stdgo.GoFloat64) / _d_477361 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 477462i32;
                } else if (__value__ == (477462i32)) {
                    return ((_signgam_477131 : stdgo.GoFloat64) * _z_477199 : stdgo.GoFloat64);
                    _gotoNext = 477515i32;
                } else if (__value__ == (477515i32)) {
                    _z_477515 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 477525i32;
                } else if (__value__ == (477525i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477536i32;
                    } else {
                        _gotoNext = 477566i32;
                    };
                } else if (__value__ == (477536i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_477515 = (_z_477515 * _x : stdgo.GoFloat64);
                    _gotoNext = 477525i32;
                } else if (__value__ == (477566i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 477566i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477576i32;
                    } else {
                        _gotoNext = 477642i32;
                    };
                } else if (__value__ == (477576i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477594i32;
                    } else {
                        _gotoNext = 477616i32;
                    };
                } else if (__value__ == (477594i32)) {
                    _gotoNext = 477972i32;
                } else if (__value__ == (477616i32)) {
                    _z_477515 = (_z_477515 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 477566i32;
                } else if (__value__ == (477642i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 477642i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477652i32;
                    } else {
                        _gotoNext = 477718i32;
                    };
                } else if (__value__ == (477652i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 477669i32;
                    } else {
                        _gotoNext = 477691i32;
                    };
                } else if (__value__ == (477669i32)) {
                    _gotoNext = 477972i32;
                } else if (__value__ == (477691i32)) {
                    _z_477515 = (_z_477515 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 477642i32;
                } else if (__value__ == (477718i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 477728i32;
                    } else {
                        _gotoNext = 477746i32;
                    };
                } else if (__value__ == (477728i32)) {
                    return _z_477515;
                    _gotoNext = 477746i32;
                } else if (__value__ == (477746i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_476842 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_476829 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_477515 * _p_476842 : stdgo.GoFloat64) / _q_476829 : stdgo.GoFloat64);
                    _gotoNext = 477972i32;
                } else if (__value__ == (477972i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 477990i32;
                    } else {
                        _gotoNext = 478012i32;
                    };
                } else if (__value__ == (477990i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 478012i32;
                } else if (__value__ == (478012i32)) {
                    return (_z_477515 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
