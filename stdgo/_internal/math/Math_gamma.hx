package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_445002:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_444831:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_444373:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_444810:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_444329:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_444316:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_444618:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_444045;
        var _d_444848:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_444805:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_444686:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_444636:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_444377:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_444045 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 444136i32;
                } else if (__value__ == (444136i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 444146i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 444208i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 444243i32;
                    } else {
                        _gotoNext = 444316i32;
                    };
                } else if (__value__ == (444146i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 444316i32;
                } else if (__value__ == (444208i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 444316i32;
                } else if (__value__ == (444243i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 444272i32;
                    } else {
                        _gotoNext = 444298i32;
                    };
                } else if (__value__ == (444272i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 444298i32;
                } else if (__value__ == (444298i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 444316i32;
                } else if (__value__ == (444316i32)) {
                    _q_444316 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_444329 = stdgo._internal.math.Math_floor.floor(_q_444316);
                    if ((_q_444316 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444354i32;
                    } else {
                        _gotoNext = 445002i32;
                    };
                } else if (__value__ == (444354i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444368i32;
                    } else {
                        _gotoNext = 444618i32;
                    };
                } else if (__value__ == (444368i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_444373 = @:tmpset0 __tmp__._0;
                        _y2_444377 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_444373 * _y2_444377 : stdgo.GoFloat64);
                    _gotoNext = 444618i32;
                } else if (__value__ == (444618i32)) {
                    _signgam_444618 = (1 : stdgo.GoInt);
                    {
                        _ip_444636 = (_p_444329 : stdgo.GoInt64);
                        if ((_ip_444636 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 444662i32;
                        } else {
                            _gotoNext = 444686i32;
                        };
                    };
                } else if (__value__ == (444662i32)) {
                    _signgam_444618 = (-1 : stdgo.GoInt);
                    _gotoNext = 444686i32;
                } else if (__value__ == (444686i32)) {
                    _z_444686 = (_q_444316 - _p_444329 : stdgo.GoFloat64);
                    if ((_z_444686 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444710i32;
                    } else {
                        _gotoNext = 444744i32;
                    };
                } else if (__value__ == (444710i32)) {
                    _p_444329 = (_p_444329 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_444686 = (_q_444316 - _p_444329 : stdgo.GoFloat64);
                    _gotoNext = 444744i32;
                } else if (__value__ == (444744i32)) {
                    _z_444686 = (_q_444316 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_444686 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_444686 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 444774i32;
                    } else {
                        _gotoNext = 444805i32;
                    };
                } else if (__value__ == (444774i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_444618);
                    _gotoNext = 444805i32;
                } else if (__value__ == (444805i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_444316);
                        _sq1_444805 = @:tmpset0 __tmp__._0;
                        _sq2_444810 = @:tmpset0 __tmp__._1;
                    };
                    _absz_444831 = stdgo._internal.math.Math_abs.abs(_z_444686);
                    _d_444848 = ((_absz_444831 * _sq1_444805 : stdgo.GoFloat64) * _sq2_444810 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_444848, (0 : stdgo.GoInt))) {
                        _gotoNext = 444887i32;
                    } else {
                        _gotoNext = 444927i32;
                    };
                } else if (__value__ == (444887i32)) {
                    _z_444686 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_444831 : stdgo.GoFloat64) / _sq1_444805 : stdgo.GoFloat64) / _sq2_444810 : stdgo.GoFloat64);
                    _gotoNext = 444949i32;
                } else if (__value__ == (444927i32)) {
                    _gotoNext = 444927i32;
                    _z_444686 = ((3.141592653589793 : stdgo.GoFloat64) / _d_444848 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 444949i32;
                } else if (__value__ == (444949i32)) {
                    return ((_signgam_444618 : stdgo.GoFloat64) * _z_444686 : stdgo.GoFloat64);
                    _gotoNext = 445002i32;
                } else if (__value__ == (445002i32)) {
                    _z_445002 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 445012i32;
                } else if (__value__ == (445012i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445023i32;
                    } else {
                        _gotoNext = 445053i32;
                    };
                } else if (__value__ == (445023i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_445002 = (_z_445002 * _x : stdgo.GoFloat64);
                    _gotoNext = 445012i32;
                } else if (__value__ == (445053i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 445053i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445063i32;
                    } else {
                        _gotoNext = 445129i32;
                    };
                } else if (__value__ == (445063i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445081i32;
                    } else {
                        _gotoNext = 445103i32;
                    };
                } else if (__value__ == (445081i32)) {
                    _gotoNext = 445459i32;
                } else if (__value__ == (445103i32)) {
                    _z_445002 = (_z_445002 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 445053i32;
                } else if (__value__ == (445129i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 445129i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445139i32;
                    } else {
                        _gotoNext = 445205i32;
                    };
                } else if (__value__ == (445139i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 445156i32;
                    } else {
                        _gotoNext = 445178i32;
                    };
                } else if (__value__ == (445156i32)) {
                    _gotoNext = 445459i32;
                } else if (__value__ == (445178i32)) {
                    _z_445002 = (_z_445002 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 445129i32;
                } else if (__value__ == (445205i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 445215i32;
                    } else {
                        _gotoNext = 445233i32;
                    };
                } else if (__value__ == (445215i32)) {
                    return _z_445002;
                    _gotoNext = 445233i32;
                } else if (__value__ == (445233i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_444329 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_444316 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_445002 * _p_444329 : stdgo.GoFloat64) / _q_444316 : stdgo.GoFloat64);
                    _gotoNext = 445459i32;
                } else if (__value__ == (445459i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 445477i32;
                    } else {
                        _gotoNext = 445499i32;
                    };
                } else if (__value__ == (445477i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 445499i32;
                } else if (__value__ == (445499i32)) {
                    return (_z_445002 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
