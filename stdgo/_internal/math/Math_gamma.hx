package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_409635:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_409597:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_409473:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_409423:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_409103:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_409592:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_409405:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_409164:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_409116:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_408832;
        var _z_409789:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_409618:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_409160:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_408832 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 408923i32;
                } else if (__value__ == (408923i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 408933i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 408995i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 409030i32;
                    } else {
                        _gotoNext = 409103i32;
                    };
                } else if (__value__ == (408933i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 409103i32;
                } else if (__value__ == (408995i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 409103i32;
                } else if (__value__ == (409030i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 409059i32;
                    } else {
                        _gotoNext = 409085i32;
                    };
                } else if (__value__ == (409059i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 409085i32;
                } else if (__value__ == (409085i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 409103i32;
                } else if (__value__ == (409103i32)) {
                    _q_409103 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_409116 = stdgo._internal.math.Math_floor.floor(_q_409103);
                    if ((_q_409103 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 409141i32;
                    } else {
                        _gotoNext = 409789i32;
                    };
                } else if (__value__ == (409141i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 409155i32;
                    } else {
                        _gotoNext = 409405i32;
                    };
                } else if (__value__ == (409155i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_409160 = __tmp__._0;
                        _y2_409164 = __tmp__._1;
                    };
                    return (_y1_409160 * _y2_409164 : stdgo.GoFloat64);
                    _gotoNext = 409405i32;
                } else if (__value__ == (409405i32)) {
                    _signgam_409405 = (1 : stdgo.GoInt);
                    {
                        _ip_409423 = (_p_409116 : stdgo.GoInt64);
                        if ((_ip_409423 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 409449i32;
                        } else {
                            _gotoNext = 409473i32;
                        };
                    };
                } else if (__value__ == (409449i32)) {
                    _signgam_409405 = (-1 : stdgo.GoInt);
                    _gotoNext = 409473i32;
                } else if (__value__ == (409473i32)) {
                    _z_409473 = (_q_409103 - _p_409116 : stdgo.GoFloat64);
                    if ((_z_409473 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 409497i32;
                    } else {
                        _gotoNext = 409531i32;
                    };
                } else if (__value__ == (409497i32)) {
                    _p_409116 = (_p_409116 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_409473 = (_q_409103 - _p_409116 : stdgo.GoFloat64);
                    _gotoNext = 409531i32;
                } else if (__value__ == (409531i32)) {
                    _z_409473 = (_q_409103 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_409473 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_409473 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 409561i32;
                    } else {
                        _gotoNext = 409592i32;
                    };
                } else if (__value__ == (409561i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_409405);
                    _gotoNext = 409592i32;
                } else if (__value__ == (409592i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_409103);
                        _sq1_409592 = __tmp__._0;
                        _sq2_409597 = __tmp__._1;
                    };
                    _absz_409618 = stdgo._internal.math.Math_abs.abs(_z_409473);
                    _d_409635 = ((_absz_409618 * _sq1_409592 : stdgo.GoFloat64) * _sq2_409597 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_409635, (0 : stdgo.GoInt))) {
                        _gotoNext = 409674i32;
                    } else {
                        _gotoNext = 409714i32;
                    };
                } else if (__value__ == (409674i32)) {
                    _z_409473 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_409618 : stdgo.GoFloat64) / _sq1_409592 : stdgo.GoFloat64) / _sq2_409597 : stdgo.GoFloat64);
                    _gotoNext = 409736i32;
                } else if (__value__ == (409714i32)) {
                    _gotoNext = 409714i32;
                    _z_409473 = ((3.141592653589793 : stdgo.GoFloat64) / _d_409635 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 409736i32;
                } else if (__value__ == (409736i32)) {
                    return ((_signgam_409405 : stdgo.GoFloat64) * _z_409473 : stdgo.GoFloat64);
                    _gotoNext = 409789i32;
                } else if (__value__ == (409789i32)) {
                    _z_409789 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 409799i32;
                } else if (__value__ == (409799i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 409810i32;
                    } else {
                        _gotoNext = 409840i32;
                    };
                } else if (__value__ == (409810i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_409789 = (_z_409789 * _x : stdgo.GoFloat64);
                    _gotoNext = 409799i32;
                } else if (__value__ == (409840i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 409840i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 409850i32;
                    } else {
                        _gotoNext = 409916i32;
                    };
                } else if (__value__ == (409850i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 409868i32;
                    } else {
                        _gotoNext = 409890i32;
                    };
                } else if (__value__ == (409868i32)) {
                    _gotoNext = 410246i32;
                } else if (__value__ == (409890i32)) {
                    _z_409789 = (_z_409789 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 409840i32;
                } else if (__value__ == (409916i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 409916i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 409926i32;
                    } else {
                        _gotoNext = 409992i32;
                    };
                } else if (__value__ == (409926i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 409943i32;
                    } else {
                        _gotoNext = 409965i32;
                    };
                } else if (__value__ == (409943i32)) {
                    _gotoNext = 410246i32;
                } else if (__value__ == (409965i32)) {
                    _z_409789 = (_z_409789 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 409916i32;
                } else if (__value__ == (409992i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 410002i32;
                    } else {
                        _gotoNext = 410020i32;
                    };
                } else if (__value__ == (410002i32)) {
                    return _z_409789;
                    _gotoNext = 410020i32;
                } else if (__value__ == (410020i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_409116 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_409103 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_409789 * _p_409116 : stdgo.GoFloat64) / _q_409103 : stdgo.GoFloat64);
                    _gotoNext = 410246i32;
                } else if (__value__ == (410246i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 410264i32;
                    } else {
                        _gotoNext = 410286i32;
                    };
                } else if (__value__ == (410264i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 410286i32;
                } else if (__value__ == (410286i32)) {
                    return (_z_409789 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
