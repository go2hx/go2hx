package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_452031:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_452010:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_451836:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_451573:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_451245;
        var _sq1_452005:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_451516:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_452202:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_452048:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_451577:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_451886:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_451818:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_451529:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_451245 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 451336i32;
                } else if (__value__ == (451336i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 451346i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 451408i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 451443i32;
                    } else {
                        _gotoNext = 451516i32;
                    };
                } else if (__value__ == (451346i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 451516i32;
                } else if (__value__ == (451408i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 451516i32;
                } else if (__value__ == (451443i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 451472i32;
                    } else {
                        _gotoNext = 451498i32;
                    };
                } else if (__value__ == (451472i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 451498i32;
                } else if (__value__ == (451498i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 451516i32;
                } else if (__value__ == (451516i32)) {
                    _q_451516 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_451529 = stdgo._internal.math.Math_floor.floor(_q_451516);
                    if ((_q_451516 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 451554i32;
                    } else {
                        _gotoNext = 452202i32;
                    };
                } else if (__value__ == (451554i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 451568i32;
                    } else {
                        _gotoNext = 451818i32;
                    };
                } else if (__value__ == (451568i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_451573 = @:tmpset0 __tmp__._0;
                        _y2_451577 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_451573 * _y2_451577 : stdgo.GoFloat64);
                    _gotoNext = 451818i32;
                } else if (__value__ == (451818i32)) {
                    _signgam_451818 = (1 : stdgo.GoInt);
                    {
                        _ip_451836 = (_p_451529 : stdgo.GoInt64);
                        if ((_ip_451836 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 451862i32;
                        } else {
                            _gotoNext = 451886i32;
                        };
                    };
                } else if (__value__ == (451862i32)) {
                    _signgam_451818 = (-1 : stdgo.GoInt);
                    _gotoNext = 451886i32;
                } else if (__value__ == (451886i32)) {
                    _z_451886 = (_q_451516 - _p_451529 : stdgo.GoFloat64);
                    if ((_z_451886 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 451910i32;
                    } else {
                        _gotoNext = 451944i32;
                    };
                } else if (__value__ == (451910i32)) {
                    _p_451529 = (_p_451529 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_451886 = (_q_451516 - _p_451529 : stdgo.GoFloat64);
                    _gotoNext = 451944i32;
                } else if (__value__ == (451944i32)) {
                    _z_451886 = (_q_451516 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_451886 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_451886 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 451974i32;
                    } else {
                        _gotoNext = 452005i32;
                    };
                } else if (__value__ == (451974i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_451818);
                    _gotoNext = 452005i32;
                } else if (__value__ == (452005i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_451516);
                        _sq1_452005 = @:tmpset0 __tmp__._0;
                        _sq2_452010 = @:tmpset0 __tmp__._1;
                    };
                    _absz_452031 = stdgo._internal.math.Math_abs.abs(_z_451886);
                    _d_452048 = ((_absz_452031 * _sq1_452005 : stdgo.GoFloat64) * _sq2_452010 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_452048, (0 : stdgo.GoInt))) {
                        _gotoNext = 452087i32;
                    } else {
                        _gotoNext = 452127i32;
                    };
                } else if (__value__ == (452087i32)) {
                    _z_451886 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_452031 : stdgo.GoFloat64) / _sq1_452005 : stdgo.GoFloat64) / _sq2_452010 : stdgo.GoFloat64);
                    _gotoNext = 452149i32;
                } else if (__value__ == (452127i32)) {
                    _gotoNext = 452127i32;
                    _z_451886 = ((3.141592653589793 : stdgo.GoFloat64) / _d_452048 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 452149i32;
                } else if (__value__ == (452149i32)) {
                    return ((_signgam_451818 : stdgo.GoFloat64) * _z_451886 : stdgo.GoFloat64);
                    _gotoNext = 452202i32;
                } else if (__value__ == (452202i32)) {
                    _z_452202 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 452212i32;
                } else if (__value__ == (452212i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452223i32;
                    } else {
                        _gotoNext = 452253i32;
                    };
                } else if (__value__ == (452223i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_452202 = (_z_452202 * _x : stdgo.GoFloat64);
                    _gotoNext = 452212i32;
                } else if (__value__ == (452253i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 452253i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452263i32;
                    } else {
                        _gotoNext = 452329i32;
                    };
                } else if (__value__ == (452263i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452281i32;
                    } else {
                        _gotoNext = 452303i32;
                    };
                } else if (__value__ == (452281i32)) {
                    _gotoNext = 452659i32;
                } else if (__value__ == (452303i32)) {
                    _z_452202 = (_z_452202 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 452253i32;
                } else if (__value__ == (452329i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 452329i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452339i32;
                    } else {
                        _gotoNext = 452405i32;
                    };
                } else if (__value__ == (452339i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 452356i32;
                    } else {
                        _gotoNext = 452378i32;
                    };
                } else if (__value__ == (452356i32)) {
                    _gotoNext = 452659i32;
                } else if (__value__ == (452378i32)) {
                    _z_452202 = (_z_452202 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 452329i32;
                } else if (__value__ == (452405i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 452415i32;
                    } else {
                        _gotoNext = 452433i32;
                    };
                } else if (__value__ == (452415i32)) {
                    return _z_452202;
                    _gotoNext = 452433i32;
                } else if (__value__ == (452433i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_451529 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_451516 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_452202 * _p_451529 : stdgo.GoFloat64) / _q_451516 : stdgo.GoFloat64);
                    _gotoNext = 452659i32;
                } else if (__value__ == (452659i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 452677i32;
                    } else {
                        _gotoNext = 452699i32;
                    };
                } else if (__value__ == (452677i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 452699i32;
                } else if (__value__ == (452699i32)) {
                    return (_z_452202 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
