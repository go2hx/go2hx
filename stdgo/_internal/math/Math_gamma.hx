package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y1_369159:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_369422:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_369102:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_368831;
        var _sq2_369596:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_369404:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_369163:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_369115:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_369788:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_369634:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_369617:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_369591:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_369472:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_368831 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 368922i32;
                } else if (__value__ == (368922i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 368932i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 368994i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 369029i32;
                    } else {
                        _gotoNext = 369102i32;
                    };
                } else if (__value__ == (368932i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 369102i32;
                } else if (__value__ == (368994i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 369102i32;
                } else if (__value__ == (369029i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 369058i32;
                    } else {
                        _gotoNext = 369084i32;
                    };
                } else if (__value__ == (369058i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 369084i32;
                } else if (__value__ == (369084i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 369102i32;
                } else if (__value__ == (369102i32)) {
                    _q_369102 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_369115 = stdgo._internal.math.Math_floor.floor(_q_369102);
                    if ((_q_369102 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369140i32;
                    } else {
                        _gotoNext = 369788i32;
                    };
                } else if (__value__ == (369140i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369154i32;
                    } else {
                        _gotoNext = 369404i32;
                    };
                } else if (__value__ == (369154i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_369159 = @:tmpset0 __tmp__._0;
                        _y2_369163 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_369159 * _y2_369163 : stdgo.GoFloat64);
                    _gotoNext = 369404i32;
                } else if (__value__ == (369404i32)) {
                    _signgam_369404 = (1 : stdgo.GoInt);
                    {
                        _ip_369422 = (_p_369115 : stdgo.GoInt64);
                        if ((_ip_369422 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 369448i32;
                        } else {
                            _gotoNext = 369472i32;
                        };
                    };
                } else if (__value__ == (369448i32)) {
                    _signgam_369404 = (-1 : stdgo.GoInt);
                    _gotoNext = 369472i32;
                } else if (__value__ == (369472i32)) {
                    _z_369472 = (_q_369102 - _p_369115 : stdgo.GoFloat64);
                    if ((_z_369472 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369496i32;
                    } else {
                        _gotoNext = 369530i32;
                    };
                } else if (__value__ == (369496i32)) {
                    _p_369115 = (_p_369115 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_369472 = (_q_369102 - _p_369115 : stdgo.GoFloat64);
                    _gotoNext = 369530i32;
                } else if (__value__ == (369530i32)) {
                    _z_369472 = (_q_369102 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_369472 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_369472 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 369560i32;
                    } else {
                        _gotoNext = 369591i32;
                    };
                } else if (__value__ == (369560i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_369404);
                    _gotoNext = 369591i32;
                } else if (__value__ == (369591i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_369102);
                        _sq1_369591 = @:tmpset0 __tmp__._0;
                        _sq2_369596 = @:tmpset0 __tmp__._1;
                    };
                    _absz_369617 = stdgo._internal.math.Math_abs.abs(_z_369472);
                    _d_369634 = ((_absz_369617 * _sq1_369591 : stdgo.GoFloat64) * _sq2_369596 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_369634, (0 : stdgo.GoInt))) {
                        _gotoNext = 369673i32;
                    } else {
                        _gotoNext = 369713i32;
                    };
                } else if (__value__ == (369673i32)) {
                    _z_369472 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_369617 : stdgo.GoFloat64) / _sq1_369591 : stdgo.GoFloat64) / _sq2_369596 : stdgo.GoFloat64);
                    _gotoNext = 369735i32;
                } else if (__value__ == (369713i32)) {
                    _gotoNext = 369713i32;
                    _z_369472 = ((3.141592653589793 : stdgo.GoFloat64) / _d_369634 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 369735i32;
                } else if (__value__ == (369735i32)) {
                    return ((_signgam_369404 : stdgo.GoFloat64) * _z_369472 : stdgo.GoFloat64);
                    _gotoNext = 369788i32;
                } else if (__value__ == (369788i32)) {
                    _z_369788 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 369798i32;
                } else if (__value__ == (369798i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369809i32;
                    } else {
                        _gotoNext = 369839i32;
                    };
                } else if (__value__ == (369809i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_369788 = (_z_369788 * _x : stdgo.GoFloat64);
                    _gotoNext = 369798i32;
                } else if (__value__ == (369839i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 369839i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369849i32;
                    } else {
                        _gotoNext = 369915i32;
                    };
                } else if (__value__ == (369849i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369867i32;
                    } else {
                        _gotoNext = 369889i32;
                    };
                } else if (__value__ == (369867i32)) {
                    _gotoNext = 370245i32;
                } else if (__value__ == (369889i32)) {
                    _z_369788 = (_z_369788 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 369839i32;
                } else if (__value__ == (369915i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 369915i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369925i32;
                    } else {
                        _gotoNext = 369991i32;
                    };
                } else if (__value__ == (369925i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369942i32;
                    } else {
                        _gotoNext = 369964i32;
                    };
                } else if (__value__ == (369942i32)) {
                    _gotoNext = 370245i32;
                } else if (__value__ == (369964i32)) {
                    _z_369788 = (_z_369788 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 369915i32;
                } else if (__value__ == (369991i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 370001i32;
                    } else {
                        _gotoNext = 370019i32;
                    };
                } else if (__value__ == (370001i32)) {
                    return _z_369788;
                    _gotoNext = 370019i32;
                } else if (__value__ == (370019i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_369115 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_369102 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_369788 * _p_369115 : stdgo.GoFloat64) / _q_369102 : stdgo.GoFloat64);
                    _gotoNext = 370245i32;
                } else if (__value__ == (370245i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 370263i32;
                    } else {
                        _gotoNext = 370285i32;
                    };
                } else if (__value__ == (370263i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 370285i32;
                } else if (__value__ == (370285i32)) {
                    return (_z_369788 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
