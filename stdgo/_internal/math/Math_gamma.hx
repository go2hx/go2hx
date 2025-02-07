package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_229148:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_229130:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_228889:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_228828:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_229322:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_228885:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_228841:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_228557;
        var _z_229514:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_229343:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_229198:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_229360:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_229317:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_228557 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 228648i32;
                } else if (__value__ == (228648i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 228658i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 228720i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 228755i32;
                    } else {
                        _gotoNext = 228828i32;
                    };
                } else if (__value__ == (228658i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 228828i32;
                } else if (__value__ == (228720i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 228828i32;
                } else if (__value__ == (228755i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 228784i32;
                    } else {
                        _gotoNext = 228810i32;
                    };
                } else if (__value__ == (228784i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 228810i32;
                } else if (__value__ == (228810i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 228828i32;
                } else if (__value__ == (228828i32)) {
                    _q_228828 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_228841 = stdgo._internal.math.Math_floor.floor(_q_228828);
                    if ((_q_228828 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 228866i32;
                    } else {
                        _gotoNext = 229514i32;
                    };
                } else if (__value__ == (228866i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 228880i32;
                    } else {
                        _gotoNext = 229130i32;
                    };
                } else if (__value__ == (228880i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_228885 = @:tmpset0 __tmp__._0;
                        _y2_228889 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_228885 * _y2_228889 : stdgo.GoFloat64);
                    _gotoNext = 229130i32;
                } else if (__value__ == (229130i32)) {
                    _signgam_229130 = (1 : stdgo.GoInt);
                    {
                        _ip_229148 = (_p_228841 : stdgo.GoInt64);
                        if ((_ip_229148 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 229174i32;
                        } else {
                            _gotoNext = 229198i32;
                        };
                    };
                } else if (__value__ == (229174i32)) {
                    _signgam_229130 = (-1 : stdgo.GoInt);
                    _gotoNext = 229198i32;
                } else if (__value__ == (229198i32)) {
                    _z_229198 = (_q_228828 - _p_228841 : stdgo.GoFloat64);
                    if ((_z_229198 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 229222i32;
                    } else {
                        _gotoNext = 229256i32;
                    };
                } else if (__value__ == (229222i32)) {
                    _p_228841 = (_p_228841 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_229198 = (_q_228828 - _p_228841 : stdgo.GoFloat64);
                    _gotoNext = 229256i32;
                } else if (__value__ == (229256i32)) {
                    _z_229198 = (_q_228828 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_229198 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_229198 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 229286i32;
                    } else {
                        _gotoNext = 229317i32;
                    };
                } else if (__value__ == (229286i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_229130);
                    _gotoNext = 229317i32;
                } else if (__value__ == (229317i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_228828);
                        _sq1_229317 = @:tmpset0 __tmp__._0;
                        _sq2_229322 = @:tmpset0 __tmp__._1;
                    };
                    _absz_229343 = stdgo._internal.math.Math_abs.abs(_z_229198);
                    _d_229360 = ((_absz_229343 * _sq1_229317 : stdgo.GoFloat64) * _sq2_229322 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_229360, (0 : stdgo.GoInt))) {
                        _gotoNext = 229399i32;
                    } else {
                        _gotoNext = 229439i32;
                    };
                } else if (__value__ == (229399i32)) {
                    _z_229198 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_229343 : stdgo.GoFloat64) / _sq1_229317 : stdgo.GoFloat64) / _sq2_229322 : stdgo.GoFloat64);
                    _gotoNext = 229461i32;
                } else if (__value__ == (229439i32)) {
                    _gotoNext = 229439i32;
                    _z_229198 = ((3.141592653589793 : stdgo.GoFloat64) / _d_229360 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 229461i32;
                } else if (__value__ == (229461i32)) {
                    return ((_signgam_229130 : stdgo.GoFloat64) * _z_229198 : stdgo.GoFloat64);
                    _gotoNext = 229514i32;
                } else if (__value__ == (229514i32)) {
                    _z_229514 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 229524i32;
                } else if (__value__ == (229524i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 229535i32;
                    } else {
                        _gotoNext = 229565i32;
                    };
                } else if (__value__ == (229535i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_229514 = (_z_229514 * _x : stdgo.GoFloat64);
                    _gotoNext = 229524i32;
                } else if (__value__ == (229565i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 229565i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 229575i32;
                    } else {
                        _gotoNext = 229641i32;
                    };
                } else if (__value__ == (229575i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 229593i32;
                    } else {
                        _gotoNext = 229615i32;
                    };
                } else if (__value__ == (229593i32)) {
                    _gotoNext = 229971i32;
                } else if (__value__ == (229615i32)) {
                    _z_229514 = (_z_229514 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 229565i32;
                } else if (__value__ == (229641i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 229641i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 229651i32;
                    } else {
                        _gotoNext = 229717i32;
                    };
                } else if (__value__ == (229651i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 229668i32;
                    } else {
                        _gotoNext = 229690i32;
                    };
                } else if (__value__ == (229668i32)) {
                    _gotoNext = 229971i32;
                } else if (__value__ == (229690i32)) {
                    _z_229514 = (_z_229514 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 229641i32;
                } else if (__value__ == (229717i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 229727i32;
                    } else {
                        _gotoNext = 229745i32;
                    };
                } else if (__value__ == (229727i32)) {
                    return _z_229514;
                    _gotoNext = 229745i32;
                } else if (__value__ == (229745i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_228841 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_228828 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_229514 * _p_228841 : stdgo.GoFloat64) / _q_228828 : stdgo.GoFloat64);
                    _gotoNext = 229971i32;
                } else if (__value__ == (229971i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 229989i32;
                    } else {
                        _gotoNext = 230011i32;
                    };
                } else if (__value__ == (229989i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 230011i32;
                } else if (__value__ == (230011i32)) {
                    return (_z_229514 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
