package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_455669:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_455601:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_455360:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_455299:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_455028;
        var _absz_455814:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_455788:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_455619:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _d_455831:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_455793:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_455356:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_455312:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_455985:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_455028 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 455119i32;
                } else if (__value__ == (455119i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 455129i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 455191i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 455226i32;
                    } else {
                        _gotoNext = 455299i32;
                    };
                } else if (__value__ == (455129i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 455299i32;
                } else if (__value__ == (455191i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 455299i32;
                } else if (__value__ == (455226i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 455255i32;
                    } else {
                        _gotoNext = 455281i32;
                    };
                } else if (__value__ == (455255i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 455281i32;
                } else if (__value__ == (455281i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 455299i32;
                } else if (__value__ == (455299i32)) {
                    _q_455299 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_455312 = stdgo._internal.math.Math_floor.floor(_q_455299);
                    if ((_q_455299 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455337i32;
                    } else {
                        _gotoNext = 455985i32;
                    };
                } else if (__value__ == (455337i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455351i32;
                    } else {
                        _gotoNext = 455601i32;
                    };
                } else if (__value__ == (455351i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_455356 = @:tmpset0 __tmp__._0;
                        _y2_455360 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_455356 * _y2_455360 : stdgo.GoFloat64);
                    _gotoNext = 455601i32;
                } else if (__value__ == (455601i32)) {
                    _signgam_455601 = (1 : stdgo.GoInt);
                    {
                        _ip_455619 = (_p_455312 : stdgo.GoInt64);
                        if ((_ip_455619 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 455645i32;
                        } else {
                            _gotoNext = 455669i32;
                        };
                    };
                } else if (__value__ == (455645i32)) {
                    _signgam_455601 = (-1 : stdgo.GoInt);
                    _gotoNext = 455669i32;
                } else if (__value__ == (455669i32)) {
                    _z_455669 = (_q_455299 - _p_455312 : stdgo.GoFloat64);
                    if ((_z_455669 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455693i32;
                    } else {
                        _gotoNext = 455727i32;
                    };
                } else if (__value__ == (455693i32)) {
                    _p_455312 = (_p_455312 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_455669 = (_q_455299 - _p_455312 : stdgo.GoFloat64);
                    _gotoNext = 455727i32;
                } else if (__value__ == (455727i32)) {
                    _z_455669 = (_q_455299 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_455669 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_455669 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 455757i32;
                    } else {
                        _gotoNext = 455788i32;
                    };
                } else if (__value__ == (455757i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_455601);
                    _gotoNext = 455788i32;
                } else if (__value__ == (455788i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_455299);
                        _sq1_455788 = @:tmpset0 __tmp__._0;
                        _sq2_455793 = @:tmpset0 __tmp__._1;
                    };
                    _absz_455814 = stdgo._internal.math.Math_abs.abs(_z_455669);
                    _d_455831 = ((_absz_455814 * _sq1_455788 : stdgo.GoFloat64) * _sq2_455793 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_455831, (0 : stdgo.GoInt))) {
                        _gotoNext = 455870i32;
                    } else {
                        _gotoNext = 455910i32;
                    };
                } else if (__value__ == (455870i32)) {
                    _z_455669 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_455814 : stdgo.GoFloat64) / _sq1_455788 : stdgo.GoFloat64) / _sq2_455793 : stdgo.GoFloat64);
                    _gotoNext = 455932i32;
                } else if (__value__ == (455910i32)) {
                    _gotoNext = 455910i32;
                    _z_455669 = ((3.141592653589793 : stdgo.GoFloat64) / _d_455831 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 455932i32;
                } else if (__value__ == (455932i32)) {
                    return ((_signgam_455601 : stdgo.GoFloat64) * _z_455669 : stdgo.GoFloat64);
                    _gotoNext = 455985i32;
                } else if (__value__ == (455985i32)) {
                    _z_455985 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 455995i32;
                } else if (__value__ == (455995i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456006i32;
                    } else {
                        _gotoNext = 456036i32;
                    };
                } else if (__value__ == (456006i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_455985 = (_z_455985 * _x : stdgo.GoFloat64);
                    _gotoNext = 455995i32;
                } else if (__value__ == (456036i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 456036i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456046i32;
                    } else {
                        _gotoNext = 456112i32;
                    };
                } else if (__value__ == (456046i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456064i32;
                    } else {
                        _gotoNext = 456086i32;
                    };
                } else if (__value__ == (456064i32)) {
                    _gotoNext = 456442i32;
                } else if (__value__ == (456086i32)) {
                    _z_455985 = (_z_455985 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 456036i32;
                } else if (__value__ == (456112i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 456112i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456122i32;
                    } else {
                        _gotoNext = 456188i32;
                    };
                } else if (__value__ == (456122i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456139i32;
                    } else {
                        _gotoNext = 456161i32;
                    };
                } else if (__value__ == (456139i32)) {
                    _gotoNext = 456442i32;
                } else if (__value__ == (456161i32)) {
                    _z_455985 = (_z_455985 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 456112i32;
                } else if (__value__ == (456188i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 456198i32;
                    } else {
                        _gotoNext = 456216i32;
                    };
                } else if (__value__ == (456198i32)) {
                    return _z_455985;
                    _gotoNext = 456216i32;
                } else if (__value__ == (456216i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_455312 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_455299 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_455985 * _p_455312 : stdgo.GoFloat64) / _q_455299 : stdgo.GoFloat64);
                    _gotoNext = 456442i32;
                } else if (__value__ == (456442i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 456460i32;
                    } else {
                        _gotoNext = 456482i32;
                    };
                } else if (__value__ == (456460i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 456482i32;
                } else if (__value__ == (456482i32)) {
                    return (_z_455985 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
