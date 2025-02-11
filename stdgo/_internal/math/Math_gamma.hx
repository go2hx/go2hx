package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_471056:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_470937:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_470869:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_470567:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_470296;
        var _z_471253:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_471061:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_470887:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_470628:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_471099:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_471082:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_470624:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_470580:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_470296 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 470387i32;
                } else if (__value__ == (470387i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 470397i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 470459i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 470494i32;
                    } else {
                        _gotoNext = 470567i32;
                    };
                } else if (__value__ == (470397i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 470567i32;
                } else if (__value__ == (470459i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 470567i32;
                } else if (__value__ == (470494i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 470523i32;
                    } else {
                        _gotoNext = 470549i32;
                    };
                } else if (__value__ == (470523i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 470549i32;
                } else if (__value__ == (470549i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 470567i32;
                } else if (__value__ == (470567i32)) {
                    _q_470567 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_470580 = stdgo._internal.math.Math_floor.floor(_q_470567);
                    if ((_q_470567 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 470605i32;
                    } else {
                        _gotoNext = 471253i32;
                    };
                } else if (__value__ == (470605i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 470619i32;
                    } else {
                        _gotoNext = 470869i32;
                    };
                } else if (__value__ == (470619i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_470624 = @:tmpset0 __tmp__._0;
                        _y2_470628 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_470624 * _y2_470628 : stdgo.GoFloat64);
                    _gotoNext = 470869i32;
                } else if (__value__ == (470869i32)) {
                    _signgam_470869 = (1 : stdgo.GoInt);
                    {
                        _ip_470887 = (_p_470580 : stdgo.GoInt64);
                        if ((_ip_470887 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 470913i32;
                        } else {
                            _gotoNext = 470937i32;
                        };
                    };
                } else if (__value__ == (470913i32)) {
                    _signgam_470869 = (-1 : stdgo.GoInt);
                    _gotoNext = 470937i32;
                } else if (__value__ == (470937i32)) {
                    _z_470937 = (_q_470567 - _p_470580 : stdgo.GoFloat64);
                    if ((_z_470937 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 470961i32;
                    } else {
                        _gotoNext = 470995i32;
                    };
                } else if (__value__ == (470961i32)) {
                    _p_470580 = (_p_470580 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_470937 = (_q_470567 - _p_470580 : stdgo.GoFloat64);
                    _gotoNext = 470995i32;
                } else if (__value__ == (470995i32)) {
                    _z_470937 = (_q_470567 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_470937 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_470937 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 471025i32;
                    } else {
                        _gotoNext = 471056i32;
                    };
                } else if (__value__ == (471025i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_470869);
                    _gotoNext = 471056i32;
                } else if (__value__ == (471056i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_470567);
                        _sq1_471056 = @:tmpset0 __tmp__._0;
                        _sq2_471061 = @:tmpset0 __tmp__._1;
                    };
                    _absz_471082 = stdgo._internal.math.Math_abs.abs(_z_470937);
                    _d_471099 = ((_absz_471082 * _sq1_471056 : stdgo.GoFloat64) * _sq2_471061 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_471099, (0 : stdgo.GoInt))) {
                        _gotoNext = 471138i32;
                    } else {
                        _gotoNext = 471178i32;
                    };
                } else if (__value__ == (471138i32)) {
                    _z_470937 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_471082 : stdgo.GoFloat64) / _sq1_471056 : stdgo.GoFloat64) / _sq2_471061 : stdgo.GoFloat64);
                    _gotoNext = 471200i32;
                } else if (__value__ == (471178i32)) {
                    _gotoNext = 471178i32;
                    _z_470937 = ((3.141592653589793 : stdgo.GoFloat64) / _d_471099 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 471200i32;
                } else if (__value__ == (471200i32)) {
                    return ((_signgam_470869 : stdgo.GoFloat64) * _z_470937 : stdgo.GoFloat64);
                    _gotoNext = 471253i32;
                } else if (__value__ == (471253i32)) {
                    _z_471253 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 471263i32;
                } else if (__value__ == (471263i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471274i32;
                    } else {
                        _gotoNext = 471304i32;
                    };
                } else if (__value__ == (471274i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_471253 = (_z_471253 * _x : stdgo.GoFloat64);
                    _gotoNext = 471263i32;
                } else if (__value__ == (471304i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 471304i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471314i32;
                    } else {
                        _gotoNext = 471380i32;
                    };
                } else if (__value__ == (471314i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471332i32;
                    } else {
                        _gotoNext = 471354i32;
                    };
                } else if (__value__ == (471332i32)) {
                    _gotoNext = 471710i32;
                } else if (__value__ == (471354i32)) {
                    _z_471253 = (_z_471253 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 471304i32;
                } else if (__value__ == (471380i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 471380i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471390i32;
                    } else {
                        _gotoNext = 471456i32;
                    };
                } else if (__value__ == (471390i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 471407i32;
                    } else {
                        _gotoNext = 471429i32;
                    };
                } else if (__value__ == (471407i32)) {
                    _gotoNext = 471710i32;
                } else if (__value__ == (471429i32)) {
                    _z_471253 = (_z_471253 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 471380i32;
                } else if (__value__ == (471456i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 471466i32;
                    } else {
                        _gotoNext = 471484i32;
                    };
                } else if (__value__ == (471466i32)) {
                    return _z_471253;
                    _gotoNext = 471484i32;
                } else if (__value__ == (471484i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_470580 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_470567 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_471253 * _p_470580 : stdgo.GoFloat64) / _q_470567 : stdgo.GoFloat64);
                    _gotoNext = 471710i32;
                } else if (__value__ == (471710i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 471728i32;
                    } else {
                        _gotoNext = 471750i32;
                    };
                } else if (__value__ == (471728i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 471750i32;
                } else if (__value__ == (471750i32)) {
                    return (_z_471253 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
