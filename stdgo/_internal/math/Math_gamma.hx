package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_373980:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq2_374172:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_374167:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_373691:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_374210:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_373998:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_373739:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_373735:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_373678:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_373407;
        var _z_374364:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_374193:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_374048:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_373407 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 373498i32;
                } else if (__value__ == (373498i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 373508i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 373570i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 373605i32;
                    } else {
                        _gotoNext = 373678i32;
                    };
                } else if (__value__ == (373508i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 373678i32;
                } else if (__value__ == (373570i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 373678i32;
                } else if (__value__ == (373605i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 373634i32;
                    } else {
                        _gotoNext = 373660i32;
                    };
                } else if (__value__ == (373634i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 373660i32;
                } else if (__value__ == (373660i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 373678i32;
                } else if (__value__ == (373678i32)) {
                    _q_373678 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_373691 = stdgo._internal.math.Math_floor.floor(_q_373678);
                    if ((_q_373678 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 373716i32;
                    } else {
                        _gotoNext = 374364i32;
                    };
                } else if (__value__ == (373716i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 373730i32;
                    } else {
                        _gotoNext = 373980i32;
                    };
                } else if (__value__ == (373730i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_373735 = @:tmpset0 __tmp__._0;
                        _y2_373739 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_373735 * _y2_373739 : stdgo.GoFloat64);
                    _gotoNext = 373980i32;
                } else if (__value__ == (373980i32)) {
                    _signgam_373980 = (1 : stdgo.GoInt);
                    {
                        _ip_373998 = (_p_373691 : stdgo.GoInt64);
                        if ((_ip_373998 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 374024i32;
                        } else {
                            _gotoNext = 374048i32;
                        };
                    };
                } else if (__value__ == (374024i32)) {
                    _signgam_373980 = (-1 : stdgo.GoInt);
                    _gotoNext = 374048i32;
                } else if (__value__ == (374048i32)) {
                    _z_374048 = (_q_373678 - _p_373691 : stdgo.GoFloat64);
                    if ((_z_374048 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 374072i32;
                    } else {
                        _gotoNext = 374106i32;
                    };
                } else if (__value__ == (374072i32)) {
                    _p_373691 = (_p_373691 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_374048 = (_q_373678 - _p_373691 : stdgo.GoFloat64);
                    _gotoNext = 374106i32;
                } else if (__value__ == (374106i32)) {
                    _z_374048 = (_q_373678 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_374048 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_374048 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 374136i32;
                    } else {
                        _gotoNext = 374167i32;
                    };
                } else if (__value__ == (374136i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_373980);
                    _gotoNext = 374167i32;
                } else if (__value__ == (374167i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_373678);
                        _sq1_374167 = @:tmpset0 __tmp__._0;
                        _sq2_374172 = @:tmpset0 __tmp__._1;
                    };
                    _absz_374193 = stdgo._internal.math.Math_abs.abs(_z_374048);
                    _d_374210 = ((_absz_374193 * _sq1_374167 : stdgo.GoFloat64) * _sq2_374172 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_374210, (0 : stdgo.GoInt))) {
                        _gotoNext = 374249i32;
                    } else {
                        _gotoNext = 374289i32;
                    };
                } else if (__value__ == (374249i32)) {
                    _z_374048 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_374193 : stdgo.GoFloat64) / _sq1_374167 : stdgo.GoFloat64) / _sq2_374172 : stdgo.GoFloat64);
                    _gotoNext = 374311i32;
                } else if (__value__ == (374289i32)) {
                    _gotoNext = 374289i32;
                    _z_374048 = ((3.141592653589793 : stdgo.GoFloat64) / _d_374210 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 374311i32;
                } else if (__value__ == (374311i32)) {
                    return ((_signgam_373980 : stdgo.GoFloat64) * _z_374048 : stdgo.GoFloat64);
                    _gotoNext = 374364i32;
                } else if (__value__ == (374364i32)) {
                    _z_374364 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 374374i32;
                } else if (__value__ == (374374i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 374385i32;
                    } else {
                        _gotoNext = 374415i32;
                    };
                } else if (__value__ == (374385i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_374364 = (_z_374364 * _x : stdgo.GoFloat64);
                    _gotoNext = 374374i32;
                } else if (__value__ == (374415i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 374415i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 374425i32;
                    } else {
                        _gotoNext = 374491i32;
                    };
                } else if (__value__ == (374425i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 374443i32;
                    } else {
                        _gotoNext = 374465i32;
                    };
                } else if (__value__ == (374443i32)) {
                    _gotoNext = 374821i32;
                } else if (__value__ == (374465i32)) {
                    _z_374364 = (_z_374364 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 374415i32;
                } else if (__value__ == (374491i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 374491i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 374501i32;
                    } else {
                        _gotoNext = 374567i32;
                    };
                } else if (__value__ == (374501i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 374518i32;
                    } else {
                        _gotoNext = 374540i32;
                    };
                } else if (__value__ == (374518i32)) {
                    _gotoNext = 374821i32;
                } else if (__value__ == (374540i32)) {
                    _z_374364 = (_z_374364 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 374491i32;
                } else if (__value__ == (374567i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 374577i32;
                    } else {
                        _gotoNext = 374595i32;
                    };
                } else if (__value__ == (374577i32)) {
                    return _z_374364;
                    _gotoNext = 374595i32;
                } else if (__value__ == (374595i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_373691 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_373678 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_374364 * _p_373691 : stdgo.GoFloat64) / _q_373678 : stdgo.GoFloat64);
                    _gotoNext = 374821i32;
                } else if (__value__ == (374821i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 374839i32;
                    } else {
                        _gotoNext = 374861i32;
                    };
                } else if (__value__ == (374839i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 374861i32;
                } else if (__value__ == (374861i32)) {
                    return (_z_374364 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
