package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_444247:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_444050:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_443931:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_443574:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_444093:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_444076:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_443881:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_443863:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_443561:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_443290;
        var _sq2_444055:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_443622:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_443618:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_443290 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 443381i32;
                } else if (__value__ == (443381i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 443391i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 443453i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 443488i32;
                    } else {
                        _gotoNext = 443561i32;
                    };
                } else if (__value__ == (443391i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 443561i32;
                } else if (__value__ == (443453i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 443561i32;
                } else if (__value__ == (443488i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 443517i32;
                    } else {
                        _gotoNext = 443543i32;
                    };
                } else if (__value__ == (443517i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 443543i32;
                } else if (__value__ == (443543i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 443561i32;
                } else if (__value__ == (443561i32)) {
                    _q_443561 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_443574 = stdgo._internal.math.Math_floor.floor(_q_443561);
                    if ((_q_443561 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443599i32;
                    } else {
                        _gotoNext = 444247i32;
                    };
                } else if (__value__ == (443599i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443613i32;
                    } else {
                        _gotoNext = 443863i32;
                    };
                } else if (__value__ == (443613i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_443618 = __tmp__._0;
                        _y2_443622 = __tmp__._1;
                    };
                    return (_y1_443618 * _y2_443622 : stdgo.GoFloat64);
                    _gotoNext = 443863i32;
                } else if (__value__ == (443863i32)) {
                    _signgam_443863 = (1 : stdgo.GoInt);
                    {
                        _ip_443881 = (_p_443574 : stdgo.GoInt64);
                        if ((_ip_443881 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 443907i32;
                        } else {
                            _gotoNext = 443931i32;
                        };
                    };
                } else if (__value__ == (443907i32)) {
                    _signgam_443863 = (-1 : stdgo.GoInt);
                    _gotoNext = 443931i32;
                } else if (__value__ == (443931i32)) {
                    _z_443931 = (_q_443561 - _p_443574 : stdgo.GoFloat64);
                    if ((_z_443931 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 443955i32;
                    } else {
                        _gotoNext = 443989i32;
                    };
                } else if (__value__ == (443955i32)) {
                    _p_443574 = (_p_443574 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_443931 = (_q_443561 - _p_443574 : stdgo.GoFloat64);
                    _gotoNext = 443989i32;
                } else if (__value__ == (443989i32)) {
                    _z_443931 = (_q_443561 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_443931 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_443931 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 444019i32;
                    } else {
                        _gotoNext = 444050i32;
                    };
                } else if (__value__ == (444019i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_443863);
                    _gotoNext = 444050i32;
                } else if (__value__ == (444050i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_443561);
                        _sq1_444050 = __tmp__._0;
                        _sq2_444055 = __tmp__._1;
                    };
                    _absz_444076 = stdgo._internal.math.Math_abs.abs(_z_443931);
                    _d_444093 = ((_absz_444076 * _sq1_444050 : stdgo.GoFloat64) * _sq2_444055 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_444093, (0 : stdgo.GoInt))) {
                        _gotoNext = 444132i32;
                    } else {
                        _gotoNext = 444172i32;
                    };
                } else if (__value__ == (444132i32)) {
                    _z_443931 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_444076 : stdgo.GoFloat64) / _sq1_444050 : stdgo.GoFloat64) / _sq2_444055 : stdgo.GoFloat64);
                    _gotoNext = 444194i32;
                } else if (__value__ == (444172i32)) {
                    _gotoNext = 444172i32;
                    _z_443931 = ((3.141592653589793 : stdgo.GoFloat64) / _d_444093 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 444194i32;
                } else if (__value__ == (444194i32)) {
                    return ((_signgam_443863 : stdgo.GoFloat64) * _z_443931 : stdgo.GoFloat64);
                    _gotoNext = 444247i32;
                } else if (__value__ == (444247i32)) {
                    _z_444247 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 444257i32;
                } else if (__value__ == (444257i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444268i32;
                    } else {
                        _gotoNext = 444298i32;
                    };
                } else if (__value__ == (444268i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_444247 = (_z_444247 * _x : stdgo.GoFloat64);
                    _gotoNext = 444257i32;
                } else if (__value__ == (444298i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 444298i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444308i32;
                    } else {
                        _gotoNext = 444374i32;
                    };
                } else if (__value__ == (444308i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444326i32;
                    } else {
                        _gotoNext = 444348i32;
                    };
                } else if (__value__ == (444326i32)) {
                    _gotoNext = 444704i32;
                } else if (__value__ == (444348i32)) {
                    _z_444247 = (_z_444247 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 444298i32;
                } else if (__value__ == (444374i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 444374i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444384i32;
                    } else {
                        _gotoNext = 444450i32;
                    };
                } else if (__value__ == (444384i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 444401i32;
                    } else {
                        _gotoNext = 444423i32;
                    };
                } else if (__value__ == (444401i32)) {
                    _gotoNext = 444704i32;
                } else if (__value__ == (444423i32)) {
                    _z_444247 = (_z_444247 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 444374i32;
                } else if (__value__ == (444450i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 444460i32;
                    } else {
                        _gotoNext = 444478i32;
                    };
                } else if (__value__ == (444460i32)) {
                    return _z_444247;
                    _gotoNext = 444478i32;
                } else if (__value__ == (444478i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_443574 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_443561 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_444247 * _p_443574 : stdgo.GoFloat64) / _q_443561 : stdgo.GoFloat64);
                    _gotoNext = 444704i32;
                } else if (__value__ == (444704i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 444722i32;
                    } else {
                        _gotoNext = 444744i32;
                    };
                } else if (__value__ == (444722i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 444744i32;
                } else if (__value__ == (444744i32)) {
                    return (_z_444247 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
