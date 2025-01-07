package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _q_362131:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_362451:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_362192:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_362646:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_362501:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_361860;
        var _sq2_362625:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_362620:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_362144:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_362188:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_362817:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_362663:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_362433:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_361860 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 361951i32;
                } else if (__value__ == (361951i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 361961i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 362023i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 362058i32;
                    } else {
                        _gotoNext = 362131i32;
                    };
                } else if (__value__ == (361961i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 362131i32;
                } else if (__value__ == (362023i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 362131i32;
                } else if (__value__ == (362058i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 362087i32;
                    } else {
                        _gotoNext = 362113i32;
                    };
                } else if (__value__ == (362087i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 362113i32;
                } else if (__value__ == (362113i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 362131i32;
                } else if (__value__ == (362131i32)) {
                    _q_362131 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_362144 = stdgo._internal.math.Math_floor.floor(_q_362131);
                    if ((_q_362131 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362169i32;
                    } else {
                        _gotoNext = 362817i32;
                    };
                } else if (__value__ == (362169i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362183i32;
                    } else {
                        _gotoNext = 362433i32;
                    };
                } else if (__value__ == (362183i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_362188 = __tmp__._0;
                        _y2_362192 = __tmp__._1;
                    };
                    return (_y1_362188 * _y2_362192 : stdgo.GoFloat64);
                    _gotoNext = 362433i32;
                } else if (__value__ == (362433i32)) {
                    _signgam_362433 = (1 : stdgo.GoInt);
                    {
                        _ip_362451 = (_p_362144 : stdgo.GoInt64);
                        if ((_ip_362451 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 362477i32;
                        } else {
                            _gotoNext = 362501i32;
                        };
                    };
                } else if (__value__ == (362477i32)) {
                    _signgam_362433 = (-1 : stdgo.GoInt);
                    _gotoNext = 362501i32;
                } else if (__value__ == (362501i32)) {
                    _z_362501 = (_q_362131 - _p_362144 : stdgo.GoFloat64);
                    if ((_z_362501 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362525i32;
                    } else {
                        _gotoNext = 362559i32;
                    };
                } else if (__value__ == (362525i32)) {
                    _p_362144 = (_p_362144 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_362501 = (_q_362131 - _p_362144 : stdgo.GoFloat64);
                    _gotoNext = 362559i32;
                } else if (__value__ == (362559i32)) {
                    _z_362501 = (_q_362131 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_362501 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_362501 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 362589i32;
                    } else {
                        _gotoNext = 362620i32;
                    };
                } else if (__value__ == (362589i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_362433);
                    _gotoNext = 362620i32;
                } else if (__value__ == (362620i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_362131);
                        _sq1_362620 = __tmp__._0;
                        _sq2_362625 = __tmp__._1;
                    };
                    _absz_362646 = stdgo._internal.math.Math_abs.abs(_z_362501);
                    _d_362663 = ((_absz_362646 * _sq1_362620 : stdgo.GoFloat64) * _sq2_362625 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_362663, (0 : stdgo.GoInt))) {
                        _gotoNext = 362702i32;
                    } else {
                        _gotoNext = 362742i32;
                    };
                } else if (__value__ == (362702i32)) {
                    _z_362501 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_362646 : stdgo.GoFloat64) / _sq1_362620 : stdgo.GoFloat64) / _sq2_362625 : stdgo.GoFloat64);
                    _gotoNext = 362764i32;
                } else if (__value__ == (362742i32)) {
                    _gotoNext = 362742i32;
                    _z_362501 = ((3.141592653589793 : stdgo.GoFloat64) / _d_362663 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 362764i32;
                } else if (__value__ == (362764i32)) {
                    return ((_signgam_362433 : stdgo.GoFloat64) * _z_362501 : stdgo.GoFloat64);
                    _gotoNext = 362817i32;
                } else if (__value__ == (362817i32)) {
                    _z_362817 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 362827i32;
                } else if (__value__ == (362827i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362838i32;
                    } else {
                        _gotoNext = 362868i32;
                    };
                } else if (__value__ == (362838i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_362817 = (_z_362817 * _x : stdgo.GoFloat64);
                    _gotoNext = 362827i32;
                } else if (__value__ == (362868i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 362868i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362878i32;
                    } else {
                        _gotoNext = 362944i32;
                    };
                } else if (__value__ == (362878i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362896i32;
                    } else {
                        _gotoNext = 362918i32;
                    };
                } else if (__value__ == (362896i32)) {
                    _gotoNext = 363274i32;
                } else if (__value__ == (362918i32)) {
                    _z_362817 = (_z_362817 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 362868i32;
                } else if (__value__ == (362944i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 362944i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362954i32;
                    } else {
                        _gotoNext = 363020i32;
                    };
                } else if (__value__ == (362954i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362971i32;
                    } else {
                        _gotoNext = 362993i32;
                    };
                } else if (__value__ == (362971i32)) {
                    _gotoNext = 363274i32;
                } else if (__value__ == (362993i32)) {
                    _z_362817 = (_z_362817 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 362944i32;
                } else if (__value__ == (363020i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 363030i32;
                    } else {
                        _gotoNext = 363048i32;
                    };
                } else if (__value__ == (363030i32)) {
                    return _z_362817;
                    _gotoNext = 363048i32;
                } else if (__value__ == (363048i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_362144 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_362131 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_362817 * _p_362144 : stdgo.GoFloat64) / _q_362131 : stdgo.GoFloat64);
                    _gotoNext = 363274i32;
                } else if (__value__ == (363274i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 363292i32;
                    } else {
                        _gotoNext = 363314i32;
                    };
                } else if (__value__ == (363292i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 363314i32;
                } else if (__value__ == (363314i32)) {
                    return (_z_362817 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
