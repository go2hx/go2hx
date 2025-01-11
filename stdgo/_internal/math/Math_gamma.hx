package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_382723:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_382493:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_382252:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_382877:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_382685:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_382248:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_382204:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_382706:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_382511:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _sq1_382680:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_382561:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_382191:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_381920;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_381920 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 382011i32;
                } else if (__value__ == (382011i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 382021i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 382083i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 382118i32;
                    } else {
                        _gotoNext = 382191i32;
                    };
                } else if (__value__ == (382021i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 382191i32;
                } else if (__value__ == (382083i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 382191i32;
                } else if (__value__ == (382118i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 382147i32;
                    } else {
                        _gotoNext = 382173i32;
                    };
                } else if (__value__ == (382147i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 382173i32;
                } else if (__value__ == (382173i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 382191i32;
                } else if (__value__ == (382191i32)) {
                    _q_382191 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_382204 = stdgo._internal.math.Math_floor.floor(_q_382191);
                    if ((_q_382191 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 382229i32;
                    } else {
                        _gotoNext = 382877i32;
                    };
                } else if (__value__ == (382229i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 382243i32;
                    } else {
                        _gotoNext = 382493i32;
                    };
                } else if (__value__ == (382243i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_382248 = __tmp__._0;
                        _y2_382252 = __tmp__._1;
                    };
                    return (_y1_382248 * _y2_382252 : stdgo.GoFloat64);
                    _gotoNext = 382493i32;
                } else if (__value__ == (382493i32)) {
                    _signgam_382493 = (1 : stdgo.GoInt);
                    {
                        _ip_382511 = (_p_382204 : stdgo.GoInt64);
                        if ((_ip_382511 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 382537i32;
                        } else {
                            _gotoNext = 382561i32;
                        };
                    };
                } else if (__value__ == (382537i32)) {
                    _signgam_382493 = (-1 : stdgo.GoInt);
                    _gotoNext = 382561i32;
                } else if (__value__ == (382561i32)) {
                    _z_382561 = (_q_382191 - _p_382204 : stdgo.GoFloat64);
                    if ((_z_382561 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 382585i32;
                    } else {
                        _gotoNext = 382619i32;
                    };
                } else if (__value__ == (382585i32)) {
                    _p_382204 = (_p_382204 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_382561 = (_q_382191 - _p_382204 : stdgo.GoFloat64);
                    _gotoNext = 382619i32;
                } else if (__value__ == (382619i32)) {
                    _z_382561 = (_q_382191 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_382561 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_382561 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 382649i32;
                    } else {
                        _gotoNext = 382680i32;
                    };
                } else if (__value__ == (382649i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_382493);
                    _gotoNext = 382680i32;
                } else if (__value__ == (382680i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_382191);
                        _sq1_382680 = __tmp__._0;
                        _sq2_382685 = __tmp__._1;
                    };
                    _absz_382706 = stdgo._internal.math.Math_abs.abs(_z_382561);
                    _d_382723 = ((_absz_382706 * _sq1_382680 : stdgo.GoFloat64) * _sq2_382685 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_382723, (0 : stdgo.GoInt))) {
                        _gotoNext = 382762i32;
                    } else {
                        _gotoNext = 382802i32;
                    };
                } else if (__value__ == (382762i32)) {
                    _z_382561 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_382706 : stdgo.GoFloat64) / _sq1_382680 : stdgo.GoFloat64) / _sq2_382685 : stdgo.GoFloat64);
                    _gotoNext = 382824i32;
                } else if (__value__ == (382802i32)) {
                    _gotoNext = 382802i32;
                    _z_382561 = ((3.141592653589793 : stdgo.GoFloat64) / _d_382723 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 382824i32;
                } else if (__value__ == (382824i32)) {
                    return ((_signgam_382493 : stdgo.GoFloat64) * _z_382561 : stdgo.GoFloat64);
                    _gotoNext = 382877i32;
                } else if (__value__ == (382877i32)) {
                    _z_382877 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 382887i32;
                } else if (__value__ == (382887i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 382898i32;
                    } else {
                        _gotoNext = 382928i32;
                    };
                } else if (__value__ == (382898i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_382877 = (_z_382877 * _x : stdgo.GoFloat64);
                    _gotoNext = 382887i32;
                } else if (__value__ == (382928i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 382928i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 382938i32;
                    } else {
                        _gotoNext = 383004i32;
                    };
                } else if (__value__ == (382938i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 382956i32;
                    } else {
                        _gotoNext = 382978i32;
                    };
                } else if (__value__ == (382956i32)) {
                    _gotoNext = 383334i32;
                } else if (__value__ == (382978i32)) {
                    _z_382877 = (_z_382877 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 382928i32;
                } else if (__value__ == (383004i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 383004i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 383014i32;
                    } else {
                        _gotoNext = 383080i32;
                    };
                } else if (__value__ == (383014i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 383031i32;
                    } else {
                        _gotoNext = 383053i32;
                    };
                } else if (__value__ == (383031i32)) {
                    _gotoNext = 383334i32;
                } else if (__value__ == (383053i32)) {
                    _z_382877 = (_z_382877 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 383004i32;
                } else if (__value__ == (383080i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 383090i32;
                    } else {
                        _gotoNext = 383108i32;
                    };
                } else if (__value__ == (383090i32)) {
                    return _z_382877;
                    _gotoNext = 383108i32;
                } else if (__value__ == (383108i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_382204 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_382191 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_382877 * _p_382204 : stdgo.GoFloat64) / _q_382191 : stdgo.GoFloat64);
                    _gotoNext = 383334i32;
                } else if (__value__ == (383334i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 383352i32;
                    } else {
                        _gotoNext = 383374i32;
                    };
                } else if (__value__ == (383352i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 383374i32;
                } else if (__value__ == (383374i32)) {
                    return (_z_382877 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
