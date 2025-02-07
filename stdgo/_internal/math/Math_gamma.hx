package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_455938:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_455769:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_455751:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_455462:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_455178;
        var _d_455981:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_455506:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_456135:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_455510:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_455964:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_455943:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_455819:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_455449:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_455178 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 455269i32;
                } else if (__value__ == (455269i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 455279i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 455341i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 455376i32;
                    } else {
                        _gotoNext = 455449i32;
                    };
                } else if (__value__ == (455279i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 455449i32;
                } else if (__value__ == (455341i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 455449i32;
                } else if (__value__ == (455376i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 455405i32;
                    } else {
                        _gotoNext = 455431i32;
                    };
                } else if (__value__ == (455405i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 455431i32;
                } else if (__value__ == (455431i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 455449i32;
                } else if (__value__ == (455449i32)) {
                    _q_455449 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_455462 = stdgo._internal.math.Math_floor.floor(_q_455449);
                    if ((_q_455449 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455487i32;
                    } else {
                        _gotoNext = 456135i32;
                    };
                } else if (__value__ == (455487i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455501i32;
                    } else {
                        _gotoNext = 455751i32;
                    };
                } else if (__value__ == (455501i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_455506 = @:tmpset0 __tmp__._0;
                        _y2_455510 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_455506 * _y2_455510 : stdgo.GoFloat64);
                    _gotoNext = 455751i32;
                } else if (__value__ == (455751i32)) {
                    _signgam_455751 = (1 : stdgo.GoInt);
                    {
                        _ip_455769 = (_p_455462 : stdgo.GoInt64);
                        if ((_ip_455769 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 455795i32;
                        } else {
                            _gotoNext = 455819i32;
                        };
                    };
                } else if (__value__ == (455795i32)) {
                    _signgam_455751 = (-1 : stdgo.GoInt);
                    _gotoNext = 455819i32;
                } else if (__value__ == (455819i32)) {
                    _z_455819 = (_q_455449 - _p_455462 : stdgo.GoFloat64);
                    if ((_z_455819 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455843i32;
                    } else {
                        _gotoNext = 455877i32;
                    };
                } else if (__value__ == (455843i32)) {
                    _p_455462 = (_p_455462 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_455819 = (_q_455449 - _p_455462 : stdgo.GoFloat64);
                    _gotoNext = 455877i32;
                } else if (__value__ == (455877i32)) {
                    _z_455819 = (_q_455449 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_455819 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_455819 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 455907i32;
                    } else {
                        _gotoNext = 455938i32;
                    };
                } else if (__value__ == (455907i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_455751);
                    _gotoNext = 455938i32;
                } else if (__value__ == (455938i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_455449);
                        _sq1_455938 = @:tmpset0 __tmp__._0;
                        _sq2_455943 = @:tmpset0 __tmp__._1;
                    };
                    _absz_455964 = stdgo._internal.math.Math_abs.abs(_z_455819);
                    _d_455981 = ((_absz_455964 * _sq1_455938 : stdgo.GoFloat64) * _sq2_455943 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_455981, (0 : stdgo.GoInt))) {
                        _gotoNext = 456020i32;
                    } else {
                        _gotoNext = 456060i32;
                    };
                } else if (__value__ == (456020i32)) {
                    _z_455819 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_455964 : stdgo.GoFloat64) / _sq1_455938 : stdgo.GoFloat64) / _sq2_455943 : stdgo.GoFloat64);
                    _gotoNext = 456082i32;
                } else if (__value__ == (456060i32)) {
                    _gotoNext = 456060i32;
                    _z_455819 = ((3.141592653589793 : stdgo.GoFloat64) / _d_455981 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 456082i32;
                } else if (__value__ == (456082i32)) {
                    return ((_signgam_455751 : stdgo.GoFloat64) * _z_455819 : stdgo.GoFloat64);
                    _gotoNext = 456135i32;
                } else if (__value__ == (456135i32)) {
                    _z_456135 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 456145i32;
                } else if (__value__ == (456145i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456156i32;
                    } else {
                        _gotoNext = 456186i32;
                    };
                } else if (__value__ == (456156i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_456135 = (_z_456135 * _x : stdgo.GoFloat64);
                    _gotoNext = 456145i32;
                } else if (__value__ == (456186i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 456186i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456196i32;
                    } else {
                        _gotoNext = 456262i32;
                    };
                } else if (__value__ == (456196i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456214i32;
                    } else {
                        _gotoNext = 456236i32;
                    };
                } else if (__value__ == (456214i32)) {
                    _gotoNext = 456592i32;
                } else if (__value__ == (456236i32)) {
                    _z_456135 = (_z_456135 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 456186i32;
                } else if (__value__ == (456262i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 456262i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456272i32;
                    } else {
                        _gotoNext = 456338i32;
                    };
                } else if (__value__ == (456272i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 456289i32;
                    } else {
                        _gotoNext = 456311i32;
                    };
                } else if (__value__ == (456289i32)) {
                    _gotoNext = 456592i32;
                } else if (__value__ == (456311i32)) {
                    _z_456135 = (_z_456135 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 456262i32;
                } else if (__value__ == (456338i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 456348i32;
                    } else {
                        _gotoNext = 456366i32;
                    };
                } else if (__value__ == (456348i32)) {
                    return _z_456135;
                    _gotoNext = 456366i32;
                } else if (__value__ == (456366i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_455462 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_455449 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_456135 * _p_455462 : stdgo.GoFloat64) / _q_455449 : stdgo.GoFloat64);
                    _gotoNext = 456592i32;
                } else if (__value__ == (456592i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 456610i32;
                    } else {
                        _gotoNext = 456632i32;
                    };
                } else if (__value__ == (456610i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 456632i32;
                } else if (__value__ == (456632i32)) {
                    return (_z_456135 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
