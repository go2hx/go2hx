package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_410134;
        var _absz_410920:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_410725:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_410466:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_410418:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_410405:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_410775:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_410894:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_410462:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_410707:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_411091:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_410937:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_410899:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_410134 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 410225i32;
                } else if (__value__ == (410225i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 410235i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 410297i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 410332i32;
                    } else {
                        _gotoNext = 410405i32;
                    };
                } else if (__value__ == (410235i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 410405i32;
                } else if (__value__ == (410297i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 410405i32;
                } else if (__value__ == (410332i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 410361i32;
                    } else {
                        _gotoNext = 410387i32;
                    };
                } else if (__value__ == (410361i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 410387i32;
                } else if (__value__ == (410387i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 410405i32;
                } else if (__value__ == (410405i32)) {
                    _q_410405 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_410418 = stdgo._internal.math.Math_floor.floor(_q_410405);
                    if ((_q_410405 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410443i32;
                    } else {
                        _gotoNext = 411091i32;
                    };
                } else if (__value__ == (410443i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410457i32;
                    } else {
                        _gotoNext = 410707i32;
                    };
                } else if (__value__ == (410457i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_410462 = @:tmpset0 __tmp__._0;
                        _y2_410466 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_410462 * _y2_410466 : stdgo.GoFloat64);
                    _gotoNext = 410707i32;
                } else if (__value__ == (410707i32)) {
                    _signgam_410707 = (1 : stdgo.GoInt);
                    {
                        _ip_410725 = (_p_410418 : stdgo.GoInt64);
                        if ((_ip_410725 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 410751i32;
                        } else {
                            _gotoNext = 410775i32;
                        };
                    };
                } else if (__value__ == (410751i32)) {
                    _signgam_410707 = (-1 : stdgo.GoInt);
                    _gotoNext = 410775i32;
                } else if (__value__ == (410775i32)) {
                    _z_410775 = (_q_410405 - _p_410418 : stdgo.GoFloat64);
                    if ((_z_410775 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410799i32;
                    } else {
                        _gotoNext = 410833i32;
                    };
                } else if (__value__ == (410799i32)) {
                    _p_410418 = (_p_410418 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_410775 = (_q_410405 - _p_410418 : stdgo.GoFloat64);
                    _gotoNext = 410833i32;
                } else if (__value__ == (410833i32)) {
                    _z_410775 = (_q_410405 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_410775 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_410775 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 410863i32;
                    } else {
                        _gotoNext = 410894i32;
                    };
                } else if (__value__ == (410863i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_410707);
                    _gotoNext = 410894i32;
                } else if (__value__ == (410894i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_410405);
                        _sq1_410894 = @:tmpset0 __tmp__._0;
                        _sq2_410899 = @:tmpset0 __tmp__._1;
                    };
                    _absz_410920 = stdgo._internal.math.Math_abs.abs(_z_410775);
                    _d_410937 = ((_absz_410920 * _sq1_410894 : stdgo.GoFloat64) * _sq2_410899 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_410937, (0 : stdgo.GoInt))) {
                        _gotoNext = 410976i32;
                    } else {
                        _gotoNext = 411016i32;
                    };
                } else if (__value__ == (410976i32)) {
                    _z_410775 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_410920 : stdgo.GoFloat64) / _sq1_410894 : stdgo.GoFloat64) / _sq2_410899 : stdgo.GoFloat64);
                    _gotoNext = 411038i32;
                } else if (__value__ == (411016i32)) {
                    _gotoNext = 411016i32;
                    _z_410775 = ((3.141592653589793 : stdgo.GoFloat64) / _d_410937 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 411038i32;
                } else if (__value__ == (411038i32)) {
                    return ((_signgam_410707 : stdgo.GoFloat64) * _z_410775 : stdgo.GoFloat64);
                    _gotoNext = 411091i32;
                } else if (__value__ == (411091i32)) {
                    _z_411091 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 411101i32;
                } else if (__value__ == (411101i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411112i32;
                    } else {
                        _gotoNext = 411142i32;
                    };
                } else if (__value__ == (411112i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_411091 = (_z_411091 * _x : stdgo.GoFloat64);
                    _gotoNext = 411101i32;
                } else if (__value__ == (411142i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 411142i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411152i32;
                    } else {
                        _gotoNext = 411218i32;
                    };
                } else if (__value__ == (411152i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411170i32;
                    } else {
                        _gotoNext = 411192i32;
                    };
                } else if (__value__ == (411170i32)) {
                    _gotoNext = 411548i32;
                } else if (__value__ == (411192i32)) {
                    _z_411091 = (_z_411091 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 411142i32;
                } else if (__value__ == (411218i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 411218i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411228i32;
                    } else {
                        _gotoNext = 411294i32;
                    };
                } else if (__value__ == (411228i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411245i32;
                    } else {
                        _gotoNext = 411267i32;
                    };
                } else if (__value__ == (411245i32)) {
                    _gotoNext = 411548i32;
                } else if (__value__ == (411267i32)) {
                    _z_411091 = (_z_411091 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 411218i32;
                } else if (__value__ == (411294i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 411304i32;
                    } else {
                        _gotoNext = 411322i32;
                    };
                } else if (__value__ == (411304i32)) {
                    return _z_411091;
                    _gotoNext = 411322i32;
                } else if (__value__ == (411322i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_410418 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_410405 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_411091 * _p_410418 : stdgo.GoFloat64) / _q_410405 : stdgo.GoFloat64);
                    _gotoNext = 411548i32;
                } else if (__value__ == (411548i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 411566i32;
                    } else {
                        _gotoNext = 411588i32;
                    };
                } else if (__value__ == (411566i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 411588i32;
                } else if (__value__ == (411588i32)) {
                    return (_z_411091 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
