package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_387981:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_387668:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_388297:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_387624:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_387340;
        var _d_388143:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_388100:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_387913:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_387611:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_388126:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_388105:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_387931:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_387672:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_387340 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 387431i32;
                } else if (__value__ == (387431i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 387441i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 387503i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 387538i32;
                    } else {
                        _gotoNext = 387611i32;
                    };
                } else if (__value__ == (387441i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 387611i32;
                } else if (__value__ == (387503i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 387611i32;
                } else if (__value__ == (387538i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 387567i32;
                    } else {
                        _gotoNext = 387593i32;
                    };
                } else if (__value__ == (387567i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 387593i32;
                } else if (__value__ == (387593i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 387611i32;
                } else if (__value__ == (387611i32)) {
                    _q_387611 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_387624 = stdgo._internal.math.Math_floor.floor(_q_387611);
                    if ((_q_387611 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 387649i32;
                    } else {
                        _gotoNext = 388297i32;
                    };
                } else if (__value__ == (387649i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 387663i32;
                    } else {
                        _gotoNext = 387913i32;
                    };
                } else if (__value__ == (387663i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_387668 = @:tmpset0 __tmp__._0;
                        _y2_387672 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_387668 * _y2_387672 : stdgo.GoFloat64);
                    _gotoNext = 387913i32;
                } else if (__value__ == (387913i32)) {
                    _signgam_387913 = (1 : stdgo.GoInt);
                    {
                        _ip_387931 = (_p_387624 : stdgo.GoInt64);
                        if ((_ip_387931 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 387957i32;
                        } else {
                            _gotoNext = 387981i32;
                        };
                    };
                } else if (__value__ == (387957i32)) {
                    _signgam_387913 = (-1 : stdgo.GoInt);
                    _gotoNext = 387981i32;
                } else if (__value__ == (387981i32)) {
                    _z_387981 = (_q_387611 - _p_387624 : stdgo.GoFloat64);
                    if ((_z_387981 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388005i32;
                    } else {
                        _gotoNext = 388039i32;
                    };
                } else if (__value__ == (388005i32)) {
                    _p_387624 = (_p_387624 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_387981 = (_q_387611 - _p_387624 : stdgo.GoFloat64);
                    _gotoNext = 388039i32;
                } else if (__value__ == (388039i32)) {
                    _z_387981 = (_q_387611 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_387981 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_387981 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 388069i32;
                    } else {
                        _gotoNext = 388100i32;
                    };
                } else if (__value__ == (388069i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_387913);
                    _gotoNext = 388100i32;
                } else if (__value__ == (388100i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_387611);
                        _sq1_388100 = @:tmpset0 __tmp__._0;
                        _sq2_388105 = @:tmpset0 __tmp__._1;
                    };
                    _absz_388126 = stdgo._internal.math.Math_abs.abs(_z_387981);
                    _d_388143 = ((_absz_388126 * _sq1_388100 : stdgo.GoFloat64) * _sq2_388105 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_388143, (0 : stdgo.GoInt))) {
                        _gotoNext = 388182i32;
                    } else {
                        _gotoNext = 388222i32;
                    };
                } else if (__value__ == (388182i32)) {
                    _z_387981 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_388126 : stdgo.GoFloat64) / _sq1_388100 : stdgo.GoFloat64) / _sq2_388105 : stdgo.GoFloat64);
                    _gotoNext = 388244i32;
                } else if (__value__ == (388222i32)) {
                    _gotoNext = 388222i32;
                    _z_387981 = ((3.141592653589793 : stdgo.GoFloat64) / _d_388143 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 388244i32;
                } else if (__value__ == (388244i32)) {
                    return ((_signgam_387913 : stdgo.GoFloat64) * _z_387981 : stdgo.GoFloat64);
                    _gotoNext = 388297i32;
                } else if (__value__ == (388297i32)) {
                    _z_388297 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 388307i32;
                } else if (__value__ == (388307i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388318i32;
                    } else {
                        _gotoNext = 388348i32;
                    };
                } else if (__value__ == (388318i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_388297 = (_z_388297 * _x : stdgo.GoFloat64);
                    _gotoNext = 388307i32;
                } else if (__value__ == (388348i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 388348i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388358i32;
                    } else {
                        _gotoNext = 388424i32;
                    };
                } else if (__value__ == (388358i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388376i32;
                    } else {
                        _gotoNext = 388398i32;
                    };
                } else if (__value__ == (388376i32)) {
                    _gotoNext = 388754i32;
                } else if (__value__ == (388398i32)) {
                    _z_388297 = (_z_388297 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 388348i32;
                } else if (__value__ == (388424i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 388424i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388434i32;
                    } else {
                        _gotoNext = 388500i32;
                    };
                } else if (__value__ == (388434i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 388451i32;
                    } else {
                        _gotoNext = 388473i32;
                    };
                } else if (__value__ == (388451i32)) {
                    _gotoNext = 388754i32;
                } else if (__value__ == (388473i32)) {
                    _z_388297 = (_z_388297 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 388424i32;
                } else if (__value__ == (388500i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 388510i32;
                    } else {
                        _gotoNext = 388528i32;
                    };
                } else if (__value__ == (388510i32)) {
                    return _z_388297;
                    _gotoNext = 388528i32;
                } else if (__value__ == (388528i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_387624 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_387611 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_388297 * _p_387624 : stdgo.GoFloat64) / _q_387611 : stdgo.GoFloat64);
                    _gotoNext = 388754i32;
                } else if (__value__ == (388754i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 388772i32;
                    } else {
                        _gotoNext = 388794i32;
                    };
                } else if (__value__ == (388772i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 388794i32;
                } else if (__value__ == (388794i32)) {
                    return (_z_388297 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
