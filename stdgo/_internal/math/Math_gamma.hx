package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_454627:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_454382:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_454325:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_454857:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_454840:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_454338:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_455011:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_454819:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_454645:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_454386:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_454054;
        var _sq1_454814:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_454695:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_454054 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 454145i32;
                } else if (__value__ == (454145i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 454155i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 454217i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 454252i32;
                    } else {
                        _gotoNext = 454325i32;
                    };
                } else if (__value__ == (454155i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 454325i32;
                } else if (__value__ == (454217i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 454325i32;
                } else if (__value__ == (454252i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 454281i32;
                    } else {
                        _gotoNext = 454307i32;
                    };
                } else if (__value__ == (454281i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 454307i32;
                } else if (__value__ == (454307i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 454325i32;
                } else if (__value__ == (454325i32)) {
                    _q_454325 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_454338 = stdgo._internal.math.Math_floor.floor(_q_454325);
                    if ((_q_454325 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454363i32;
                    } else {
                        _gotoNext = 455011i32;
                    };
                } else if (__value__ == (454363i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454377i32;
                    } else {
                        _gotoNext = 454627i32;
                    };
                } else if (__value__ == (454377i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_454382 = __tmp__._0;
                        _y2_454386 = __tmp__._1;
                    };
                    return (_y1_454382 * _y2_454386 : stdgo.GoFloat64);
                    _gotoNext = 454627i32;
                } else if (__value__ == (454627i32)) {
                    _signgam_454627 = (1 : stdgo.GoInt);
                    {
                        _ip_454645 = (_p_454338 : stdgo.GoInt64);
                        if ((_ip_454645 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 454671i32;
                        } else {
                            _gotoNext = 454695i32;
                        };
                    };
                } else if (__value__ == (454671i32)) {
                    _signgam_454627 = (-1 : stdgo.GoInt);
                    _gotoNext = 454695i32;
                } else if (__value__ == (454695i32)) {
                    _z_454695 = (_q_454325 - _p_454338 : stdgo.GoFloat64);
                    if ((_z_454695 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454719i32;
                    } else {
                        _gotoNext = 454753i32;
                    };
                } else if (__value__ == (454719i32)) {
                    _p_454338 = (_p_454338 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_454695 = (_q_454325 - _p_454338 : stdgo.GoFloat64);
                    _gotoNext = 454753i32;
                } else if (__value__ == (454753i32)) {
                    _z_454695 = (_q_454325 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_454695 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_454695 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 454783i32;
                    } else {
                        _gotoNext = 454814i32;
                    };
                } else if (__value__ == (454783i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_454627);
                    _gotoNext = 454814i32;
                } else if (__value__ == (454814i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_454325);
                        _sq1_454814 = __tmp__._0;
                        _sq2_454819 = __tmp__._1;
                    };
                    _absz_454840 = stdgo._internal.math.Math_abs.abs(_z_454695);
                    _d_454857 = ((_absz_454840 * _sq1_454814 : stdgo.GoFloat64) * _sq2_454819 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_454857, (0 : stdgo.GoInt))) {
                        _gotoNext = 454896i32;
                    } else {
                        _gotoNext = 454936i32;
                    };
                } else if (__value__ == (454896i32)) {
                    _z_454695 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_454840 : stdgo.GoFloat64) / _sq1_454814 : stdgo.GoFloat64) / _sq2_454819 : stdgo.GoFloat64);
                    _gotoNext = 454958i32;
                } else if (__value__ == (454936i32)) {
                    _gotoNext = 454936i32;
                    _z_454695 = ((3.141592653589793 : stdgo.GoFloat64) / _d_454857 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 454958i32;
                } else if (__value__ == (454958i32)) {
                    return ((_signgam_454627 : stdgo.GoFloat64) * _z_454695 : stdgo.GoFloat64);
                    _gotoNext = 455011i32;
                } else if (__value__ == (455011i32)) {
                    _z_455011 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 455021i32;
                } else if (__value__ == (455021i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455032i32;
                    } else {
                        _gotoNext = 455062i32;
                    };
                } else if (__value__ == (455032i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_455011 = (_z_455011 * _x : stdgo.GoFloat64);
                    _gotoNext = 455021i32;
                } else if (__value__ == (455062i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 455062i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455072i32;
                    } else {
                        _gotoNext = 455138i32;
                    };
                } else if (__value__ == (455072i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455090i32;
                    } else {
                        _gotoNext = 455112i32;
                    };
                } else if (__value__ == (455090i32)) {
                    _gotoNext = 455468i32;
                } else if (__value__ == (455112i32)) {
                    _z_455011 = (_z_455011 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 455062i32;
                } else if (__value__ == (455138i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 455138i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455148i32;
                    } else {
                        _gotoNext = 455214i32;
                    };
                } else if (__value__ == (455148i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455165i32;
                    } else {
                        _gotoNext = 455187i32;
                    };
                } else if (__value__ == (455165i32)) {
                    _gotoNext = 455468i32;
                } else if (__value__ == (455187i32)) {
                    _z_455011 = (_z_455011 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 455138i32;
                } else if (__value__ == (455214i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 455224i32;
                    } else {
                        _gotoNext = 455242i32;
                    };
                } else if (__value__ == (455224i32)) {
                    return _z_455011;
                    _gotoNext = 455242i32;
                } else if (__value__ == (455242i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_454338 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_454325 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_455011 * _p_454338 : stdgo.GoFloat64) / _q_454325 : stdgo.GoFloat64);
                    _gotoNext = 455468i32;
                } else if (__value__ == (455468i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 455486i32;
                    } else {
                        _gotoNext = 455508i32;
                    };
                } else if (__value__ == (455486i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 455508i32;
                } else if (__value__ == (455508i32)) {
                    return (_z_455011 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
