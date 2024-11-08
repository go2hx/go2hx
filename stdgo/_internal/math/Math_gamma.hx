package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_424896:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_424853:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_424734:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_424425:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_424364:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_425050:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_424858:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_424684:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_424377:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_424093;
        var _absz_424879:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_424666:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_424421:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_424093 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 424184i32;
                } else if (__value__ == (424184i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 424194i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 424256i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 424291i32;
                    } else {
                        _gotoNext = 424364i32;
                    };
                } else if (__value__ == (424194i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 424364i32;
                } else if (__value__ == (424256i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 424364i32;
                } else if (__value__ == (424291i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 424320i32;
                    } else {
                        _gotoNext = 424346i32;
                    };
                } else if (__value__ == (424320i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 424346i32;
                } else if (__value__ == (424346i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 424364i32;
                } else if (__value__ == (424364i32)) {
                    _q_424364 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_424377 = stdgo._internal.math.Math_floor.floor(_q_424364);
                    if ((_q_424364 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 424402i32;
                    } else {
                        _gotoNext = 425050i32;
                    };
                } else if (__value__ == (424402i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 424416i32;
                    } else {
                        _gotoNext = 424666i32;
                    };
                } else if (__value__ == (424416i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_424421 = __tmp__._0;
                        _y2_424425 = __tmp__._1;
                    };
                    return (_y1_424421 * _y2_424425 : stdgo.GoFloat64);
                    _gotoNext = 424666i32;
                } else if (__value__ == (424666i32)) {
                    _signgam_424666 = (1 : stdgo.GoInt);
                    {
                        _ip_424684 = (_p_424377 : stdgo.GoInt64);
                        if ((_ip_424684 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 424710i32;
                        } else {
                            _gotoNext = 424734i32;
                        };
                    };
                } else if (__value__ == (424710i32)) {
                    _signgam_424666 = (-1 : stdgo.GoInt);
                    _gotoNext = 424734i32;
                } else if (__value__ == (424734i32)) {
                    _z_424734 = (_q_424364 - _p_424377 : stdgo.GoFloat64);
                    if ((_z_424734 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 424758i32;
                    } else {
                        _gotoNext = 424792i32;
                    };
                } else if (__value__ == (424758i32)) {
                    _p_424377 = (_p_424377 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_424734 = (_q_424364 - _p_424377 : stdgo.GoFloat64);
                    _gotoNext = 424792i32;
                } else if (__value__ == (424792i32)) {
                    _z_424734 = (_q_424364 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_424734 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_424734 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 424822i32;
                    } else {
                        _gotoNext = 424853i32;
                    };
                } else if (__value__ == (424822i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_424666);
                    _gotoNext = 424853i32;
                } else if (__value__ == (424853i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_424364);
                        _sq1_424853 = __tmp__._0;
                        _sq2_424858 = __tmp__._1;
                    };
                    _absz_424879 = stdgo._internal.math.Math_abs.abs(_z_424734);
                    _d_424896 = ((_absz_424879 * _sq1_424853 : stdgo.GoFloat64) * _sq2_424858 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_424896, (0 : stdgo.GoInt))) {
                        _gotoNext = 424935i32;
                    } else {
                        _gotoNext = 424975i32;
                    };
                } else if (__value__ == (424935i32)) {
                    _z_424734 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_424879 : stdgo.GoFloat64) / _sq1_424853 : stdgo.GoFloat64) / _sq2_424858 : stdgo.GoFloat64);
                    _gotoNext = 424997i32;
                } else if (__value__ == (424975i32)) {
                    _gotoNext = 424975i32;
                    _z_424734 = ((3.141592653589793 : stdgo.GoFloat64) / _d_424896 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 424997i32;
                } else if (__value__ == (424997i32)) {
                    return ((_signgam_424666 : stdgo.GoFloat64) * _z_424734 : stdgo.GoFloat64);
                    _gotoNext = 425050i32;
                } else if (__value__ == (425050i32)) {
                    _z_425050 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 425060i32;
                } else if (__value__ == (425060i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425071i32;
                    } else {
                        _gotoNext = 425101i32;
                    };
                } else if (__value__ == (425071i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_425050 = (_z_425050 * _x : stdgo.GoFloat64);
                    _gotoNext = 425060i32;
                } else if (__value__ == (425101i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 425101i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425111i32;
                    } else {
                        _gotoNext = 425177i32;
                    };
                } else if (__value__ == (425111i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425129i32;
                    } else {
                        _gotoNext = 425151i32;
                    };
                } else if (__value__ == (425129i32)) {
                    _gotoNext = 425507i32;
                } else if (__value__ == (425151i32)) {
                    _z_425050 = (_z_425050 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 425101i32;
                } else if (__value__ == (425177i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 425177i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425187i32;
                    } else {
                        _gotoNext = 425253i32;
                    };
                } else if (__value__ == (425187i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425204i32;
                    } else {
                        _gotoNext = 425226i32;
                    };
                } else if (__value__ == (425204i32)) {
                    _gotoNext = 425507i32;
                } else if (__value__ == (425226i32)) {
                    _z_425050 = (_z_425050 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 425177i32;
                } else if (__value__ == (425253i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 425263i32;
                    } else {
                        _gotoNext = 425281i32;
                    };
                } else if (__value__ == (425263i32)) {
                    return _z_425050;
                    _gotoNext = 425281i32;
                } else if (__value__ == (425281i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_424377 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_424364 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_425050 * _p_424377 : stdgo.GoFloat64) / _q_424364 : stdgo.GoFloat64);
                    _gotoNext = 425507i32;
                } else if (__value__ == (425507i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 425525i32;
                    } else {
                        _gotoNext = 425547i32;
                    };
                } else if (__value__ == (425525i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 425547i32;
                } else if (__value__ == (425547i32)) {
                    return (_z_425050 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
