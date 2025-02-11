package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_530847;
        var _z_531804:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_531131:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_531175:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_531607:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_531488:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_531420:stdgo.GoInt = (0 : stdgo.GoInt);
        var _absz_531633:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_531650:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_531118:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_531612:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_531438:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_531179:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_530847 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 530938i32;
                } else if (__value__ == (530938i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 530948i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 531010i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 531045i32;
                    } else {
                        _gotoNext = 531118i32;
                    };
                } else if (__value__ == (530948i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 531118i32;
                } else if (__value__ == (531010i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 531118i32;
                } else if (__value__ == (531045i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 531074i32;
                    } else {
                        _gotoNext = 531100i32;
                    };
                } else if (__value__ == (531074i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 531100i32;
                } else if (__value__ == (531100i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 531118i32;
                } else if (__value__ == (531118i32)) {
                    _q_531118 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_531131 = stdgo._internal.math.Math_floor.floor(_q_531118);
                    if ((_q_531118 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531156i32;
                    } else {
                        _gotoNext = 531804i32;
                    };
                } else if (__value__ == (531156i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531170i32;
                    } else {
                        _gotoNext = 531420i32;
                    };
                } else if (__value__ == (531170i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_531175 = @:tmpset0 __tmp__._0;
                        _y2_531179 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_531175 * _y2_531179 : stdgo.GoFloat64);
                    _gotoNext = 531420i32;
                } else if (__value__ == (531420i32)) {
                    _signgam_531420 = (1 : stdgo.GoInt);
                    {
                        _ip_531438 = (_p_531131 : stdgo.GoInt64);
                        if ((_ip_531438 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 531464i32;
                        } else {
                            _gotoNext = 531488i32;
                        };
                    };
                } else if (__value__ == (531464i32)) {
                    _signgam_531420 = (-1 : stdgo.GoInt);
                    _gotoNext = 531488i32;
                } else if (__value__ == (531488i32)) {
                    _z_531488 = (_q_531118 - _p_531131 : stdgo.GoFloat64);
                    if ((_z_531488 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531512i32;
                    } else {
                        _gotoNext = 531546i32;
                    };
                } else if (__value__ == (531512i32)) {
                    _p_531131 = (_p_531131 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_531488 = (_q_531118 - _p_531131 : stdgo.GoFloat64);
                    _gotoNext = 531546i32;
                } else if (__value__ == (531546i32)) {
                    _z_531488 = (_q_531118 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_531488 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_531488 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 531576i32;
                    } else {
                        _gotoNext = 531607i32;
                    };
                } else if (__value__ == (531576i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_531420);
                    _gotoNext = 531607i32;
                } else if (__value__ == (531607i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_531118);
                        _sq1_531607 = @:tmpset0 __tmp__._0;
                        _sq2_531612 = @:tmpset0 __tmp__._1;
                    };
                    _absz_531633 = stdgo._internal.math.Math_abs.abs(_z_531488);
                    _d_531650 = ((_absz_531633 * _sq1_531607 : stdgo.GoFloat64) * _sq2_531612 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_531650, (0 : stdgo.GoInt))) {
                        _gotoNext = 531689i32;
                    } else {
                        _gotoNext = 531729i32;
                    };
                } else if (__value__ == (531689i32)) {
                    _z_531488 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_531633 : stdgo.GoFloat64) / _sq1_531607 : stdgo.GoFloat64) / _sq2_531612 : stdgo.GoFloat64);
                    _gotoNext = 531751i32;
                } else if (__value__ == (531729i32)) {
                    _gotoNext = 531729i32;
                    _z_531488 = ((3.141592653589793 : stdgo.GoFloat64) / _d_531650 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 531751i32;
                } else if (__value__ == (531751i32)) {
                    return ((_signgam_531420 : stdgo.GoFloat64) * _z_531488 : stdgo.GoFloat64);
                    _gotoNext = 531804i32;
                } else if (__value__ == (531804i32)) {
                    _z_531804 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 531814i32;
                } else if (__value__ == (531814i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531825i32;
                    } else {
                        _gotoNext = 531855i32;
                    };
                } else if (__value__ == (531825i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_531804 = (_z_531804 * _x : stdgo.GoFloat64);
                    _gotoNext = 531814i32;
                } else if (__value__ == (531855i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 531855i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531865i32;
                    } else {
                        _gotoNext = 531931i32;
                    };
                } else if (__value__ == (531865i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531883i32;
                    } else {
                        _gotoNext = 531905i32;
                    };
                } else if (__value__ == (531883i32)) {
                    _gotoNext = 532261i32;
                } else if (__value__ == (531905i32)) {
                    _z_531804 = (_z_531804 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 531855i32;
                } else if (__value__ == (531931i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 531931i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531941i32;
                    } else {
                        _gotoNext = 532007i32;
                    };
                } else if (__value__ == (531941i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 531958i32;
                    } else {
                        _gotoNext = 531980i32;
                    };
                } else if (__value__ == (531958i32)) {
                    _gotoNext = 532261i32;
                } else if (__value__ == (531980i32)) {
                    _z_531804 = (_z_531804 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 531931i32;
                } else if (__value__ == (532007i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 532017i32;
                    } else {
                        _gotoNext = 532035i32;
                    };
                } else if (__value__ == (532017i32)) {
                    return _z_531804;
                    _gotoNext = 532035i32;
                } else if (__value__ == (532035i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_531131 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_531118 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_531804 * _p_531131 : stdgo.GoFloat64) / _q_531118 : stdgo.GoFloat64);
                    _gotoNext = 532261i32;
                } else if (__value__ == (532261i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 532279i32;
                    } else {
                        _gotoNext = 532301i32;
                    };
                } else if (__value__ == (532279i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 532301i32;
                } else if (__value__ == (532301i32)) {
                    return (_z_531804 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
