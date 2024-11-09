package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_507115:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_506808:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_506852:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_506795:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_507481:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_507165:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_507097:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq1_507284:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_506856:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_507327:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_507310:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_507289:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_506524;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_506524 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 506615i32;
                } else if (__value__ == (506615i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 506625i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 506687i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 506722i32;
                    } else {
                        _gotoNext = 506795i32;
                    };
                } else if (__value__ == (506625i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 506795i32;
                } else if (__value__ == (506687i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 506795i32;
                } else if (__value__ == (506722i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 506751i32;
                    } else {
                        _gotoNext = 506777i32;
                    };
                } else if (__value__ == (506751i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 506777i32;
                } else if (__value__ == (506777i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 506795i32;
                } else if (__value__ == (506795i32)) {
                    _q_506795 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_506808 = stdgo._internal.math.Math_floor.floor(_q_506795);
                    if ((_q_506795 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 506833i32;
                    } else {
                        _gotoNext = 507481i32;
                    };
                } else if (__value__ == (506833i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 506847i32;
                    } else {
                        _gotoNext = 507097i32;
                    };
                } else if (__value__ == (506847i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_506852 = __tmp__._0;
                        _y2_506856 = __tmp__._1;
                    };
                    return (_y1_506852 * _y2_506856 : stdgo.GoFloat64);
                    _gotoNext = 507097i32;
                } else if (__value__ == (507097i32)) {
                    _signgam_507097 = (1 : stdgo.GoInt);
                    {
                        _ip_507115 = (_p_506808 : stdgo.GoInt64);
                        if ((_ip_507115 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 507141i32;
                        } else {
                            _gotoNext = 507165i32;
                        };
                    };
                } else if (__value__ == (507141i32)) {
                    _signgam_507097 = (-1 : stdgo.GoInt);
                    _gotoNext = 507165i32;
                } else if (__value__ == (507165i32)) {
                    _z_507165 = (_q_506795 - _p_506808 : stdgo.GoFloat64);
                    if ((_z_507165 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 507189i32;
                    } else {
                        _gotoNext = 507223i32;
                    };
                } else if (__value__ == (507189i32)) {
                    _p_506808 = (_p_506808 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_507165 = (_q_506795 - _p_506808 : stdgo.GoFloat64);
                    _gotoNext = 507223i32;
                } else if (__value__ == (507223i32)) {
                    _z_507165 = (_q_506795 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_507165 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_507165 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 507253i32;
                    } else {
                        _gotoNext = 507284i32;
                    };
                } else if (__value__ == (507253i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_507097);
                    _gotoNext = 507284i32;
                } else if (__value__ == (507284i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_506795);
                        _sq1_507284 = __tmp__._0;
                        _sq2_507289 = __tmp__._1;
                    };
                    _absz_507310 = stdgo._internal.math.Math_abs.abs(_z_507165);
                    _d_507327 = ((_absz_507310 * _sq1_507284 : stdgo.GoFloat64) * _sq2_507289 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_507327, (0 : stdgo.GoInt))) {
                        _gotoNext = 507366i32;
                    } else {
                        _gotoNext = 507406i32;
                    };
                } else if (__value__ == (507366i32)) {
                    _z_507165 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_507310 : stdgo.GoFloat64) / _sq1_507284 : stdgo.GoFloat64) / _sq2_507289 : stdgo.GoFloat64);
                    _gotoNext = 507428i32;
                } else if (__value__ == (507406i32)) {
                    _gotoNext = 507406i32;
                    _z_507165 = ((3.141592653589793 : stdgo.GoFloat64) / _d_507327 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 507428i32;
                } else if (__value__ == (507428i32)) {
                    return ((_signgam_507097 : stdgo.GoFloat64) * _z_507165 : stdgo.GoFloat64);
                    _gotoNext = 507481i32;
                } else if (__value__ == (507481i32)) {
                    _z_507481 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 507491i32;
                } else if (__value__ == (507491i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 507502i32;
                    } else {
                        _gotoNext = 507532i32;
                    };
                } else if (__value__ == (507502i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_507481 = (_z_507481 * _x : stdgo.GoFloat64);
                    _gotoNext = 507491i32;
                } else if (__value__ == (507532i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 507532i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 507542i32;
                    } else {
                        _gotoNext = 507608i32;
                    };
                } else if (__value__ == (507542i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 507560i32;
                    } else {
                        _gotoNext = 507582i32;
                    };
                } else if (__value__ == (507560i32)) {
                    _gotoNext = 507938i32;
                } else if (__value__ == (507582i32)) {
                    _z_507481 = (_z_507481 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 507532i32;
                } else if (__value__ == (507608i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 507608i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 507618i32;
                    } else {
                        _gotoNext = 507684i32;
                    };
                } else if (__value__ == (507618i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 507635i32;
                    } else {
                        _gotoNext = 507657i32;
                    };
                } else if (__value__ == (507635i32)) {
                    _gotoNext = 507938i32;
                } else if (__value__ == (507657i32)) {
                    _z_507481 = (_z_507481 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 507608i32;
                } else if (__value__ == (507684i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 507694i32;
                    } else {
                        _gotoNext = 507712i32;
                    };
                } else if (__value__ == (507694i32)) {
                    return _z_507481;
                    _gotoNext = 507712i32;
                } else if (__value__ == (507712i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_506808 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_506795 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_507481 * _p_506808 : stdgo.GoFloat64) / _q_506795 : stdgo.GoFloat64);
                    _gotoNext = 507938i32;
                } else if (__value__ == (507938i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 507956i32;
                    } else {
                        _gotoNext = 507978i32;
                    };
                } else if (__value__ == (507956i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 507978i32;
                } else if (__value__ == (507978i32)) {
                    return (_z_507481 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
