package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_422560:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_422251:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_422247:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_421919;
        var _z_422876:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_422722:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_422492:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq2_422684:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_422510:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_422190:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_422705:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_422679:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_422203:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_421919 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 422010i32;
                } else if (__value__ == (422010i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 422020i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 422082i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 422117i32;
                    } else {
                        _gotoNext = 422190i32;
                    };
                } else if (__value__ == (422020i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 422190i32;
                } else if (__value__ == (422082i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 422190i32;
                } else if (__value__ == (422117i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 422146i32;
                    } else {
                        _gotoNext = 422172i32;
                    };
                } else if (__value__ == (422146i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 422172i32;
                } else if (__value__ == (422172i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 422190i32;
                } else if (__value__ == (422190i32)) {
                    _q_422190 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_422203 = stdgo._internal.math.Math_floor.floor(_q_422190);
                    if ((_q_422190 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422228i32;
                    } else {
                        _gotoNext = 422876i32;
                    };
                } else if (__value__ == (422228i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422242i32;
                    } else {
                        _gotoNext = 422492i32;
                    };
                } else if (__value__ == (422242i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_422247 = @:tmpset0 __tmp__._0;
                        _y2_422251 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_422247 * _y2_422251 : stdgo.GoFloat64);
                    _gotoNext = 422492i32;
                } else if (__value__ == (422492i32)) {
                    _signgam_422492 = (1 : stdgo.GoInt);
                    {
                        _ip_422510 = (_p_422203 : stdgo.GoInt64);
                        if ((_ip_422510 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 422536i32;
                        } else {
                            _gotoNext = 422560i32;
                        };
                    };
                } else if (__value__ == (422536i32)) {
                    _signgam_422492 = (-1 : stdgo.GoInt);
                    _gotoNext = 422560i32;
                } else if (__value__ == (422560i32)) {
                    _z_422560 = (_q_422190 - _p_422203 : stdgo.GoFloat64);
                    if ((_z_422560 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422584i32;
                    } else {
                        _gotoNext = 422618i32;
                    };
                } else if (__value__ == (422584i32)) {
                    _p_422203 = (_p_422203 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_422560 = (_q_422190 - _p_422203 : stdgo.GoFloat64);
                    _gotoNext = 422618i32;
                } else if (__value__ == (422618i32)) {
                    _z_422560 = (_q_422190 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_422560 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_422560 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 422648i32;
                    } else {
                        _gotoNext = 422679i32;
                    };
                } else if (__value__ == (422648i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_422492);
                    _gotoNext = 422679i32;
                } else if (__value__ == (422679i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_422190);
                        _sq1_422679 = @:tmpset0 __tmp__._0;
                        _sq2_422684 = @:tmpset0 __tmp__._1;
                    };
                    _absz_422705 = stdgo._internal.math.Math_abs.abs(_z_422560);
                    _d_422722 = ((_absz_422705 * _sq1_422679 : stdgo.GoFloat64) * _sq2_422684 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_422722, (0 : stdgo.GoInt))) {
                        _gotoNext = 422761i32;
                    } else {
                        _gotoNext = 422801i32;
                    };
                } else if (__value__ == (422761i32)) {
                    _z_422560 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_422705 : stdgo.GoFloat64) / _sq1_422679 : stdgo.GoFloat64) / _sq2_422684 : stdgo.GoFloat64);
                    _gotoNext = 422823i32;
                } else if (__value__ == (422801i32)) {
                    _gotoNext = 422801i32;
                    _z_422560 = ((3.141592653589793 : stdgo.GoFloat64) / _d_422722 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 422823i32;
                } else if (__value__ == (422823i32)) {
                    return ((_signgam_422492 : stdgo.GoFloat64) * _z_422560 : stdgo.GoFloat64);
                    _gotoNext = 422876i32;
                } else if (__value__ == (422876i32)) {
                    _z_422876 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 422886i32;
                } else if (__value__ == (422886i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422897i32;
                    } else {
                        _gotoNext = 422927i32;
                    };
                } else if (__value__ == (422897i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_422876 = (_z_422876 * _x : stdgo.GoFloat64);
                    _gotoNext = 422886i32;
                } else if (__value__ == (422927i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 422927i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422937i32;
                    } else {
                        _gotoNext = 423003i32;
                    };
                } else if (__value__ == (422937i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 422955i32;
                    } else {
                        _gotoNext = 422977i32;
                    };
                } else if (__value__ == (422955i32)) {
                    _gotoNext = 423333i32;
                } else if (__value__ == (422977i32)) {
                    _z_422876 = (_z_422876 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 422927i32;
                } else if (__value__ == (423003i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 423003i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423013i32;
                    } else {
                        _gotoNext = 423079i32;
                    };
                } else if (__value__ == (423013i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 423030i32;
                    } else {
                        _gotoNext = 423052i32;
                    };
                } else if (__value__ == (423030i32)) {
                    _gotoNext = 423333i32;
                } else if (__value__ == (423052i32)) {
                    _z_422876 = (_z_422876 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 423003i32;
                } else if (__value__ == (423079i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 423089i32;
                    } else {
                        _gotoNext = 423107i32;
                    };
                } else if (__value__ == (423089i32)) {
                    return _z_422876;
                    _gotoNext = 423107i32;
                } else if (__value__ == (423107i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_422203 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_422190 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_422876 * _p_422203 : stdgo.GoFloat64) / _q_422190 : stdgo.GoFloat64);
                    _gotoNext = 423333i32;
                } else if (__value__ == (423333i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 423351i32;
                    } else {
                        _gotoNext = 423373i32;
                    };
                } else if (__value__ == (423351i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 423373i32;
                } else if (__value__ == (423373i32)) {
                    return (_z_422876 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
