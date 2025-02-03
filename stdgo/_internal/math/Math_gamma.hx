package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_480969:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_480964:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_481007:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_480990:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_480795:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_480777:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_480532:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_481161:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_480536:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_480475:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_480204;
        var _z_480845:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_480488:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_480204 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 480295i32;
                } else if (__value__ == (480295i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 480305i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 480367i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 480402i32;
                    } else {
                        _gotoNext = 480475i32;
                    };
                } else if (__value__ == (480305i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 480475i32;
                } else if (__value__ == (480367i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 480475i32;
                } else if (__value__ == (480402i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 480431i32;
                    } else {
                        _gotoNext = 480457i32;
                    };
                } else if (__value__ == (480431i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 480457i32;
                } else if (__value__ == (480457i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 480475i32;
                } else if (__value__ == (480475i32)) {
                    _q_480475 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_480488 = stdgo._internal.math.Math_floor.floor(_q_480475);
                    if ((_q_480475 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 480513i32;
                    } else {
                        _gotoNext = 481161i32;
                    };
                } else if (__value__ == (480513i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 480527i32;
                    } else {
                        _gotoNext = 480777i32;
                    };
                } else if (__value__ == (480527i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_480532 = @:tmpset0 __tmp__._0;
                        _y2_480536 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_480532 * _y2_480536 : stdgo.GoFloat64);
                    _gotoNext = 480777i32;
                } else if (__value__ == (480777i32)) {
                    _signgam_480777 = (1 : stdgo.GoInt);
                    {
                        _ip_480795 = (_p_480488 : stdgo.GoInt64);
                        if ((_ip_480795 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 480821i32;
                        } else {
                            _gotoNext = 480845i32;
                        };
                    };
                } else if (__value__ == (480821i32)) {
                    _signgam_480777 = (-1 : stdgo.GoInt);
                    _gotoNext = 480845i32;
                } else if (__value__ == (480845i32)) {
                    _z_480845 = (_q_480475 - _p_480488 : stdgo.GoFloat64);
                    if ((_z_480845 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 480869i32;
                    } else {
                        _gotoNext = 480903i32;
                    };
                } else if (__value__ == (480869i32)) {
                    _p_480488 = (_p_480488 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_480845 = (_q_480475 - _p_480488 : stdgo.GoFloat64);
                    _gotoNext = 480903i32;
                } else if (__value__ == (480903i32)) {
                    _z_480845 = (_q_480475 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_480845 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_480845 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 480933i32;
                    } else {
                        _gotoNext = 480964i32;
                    };
                } else if (__value__ == (480933i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_480777);
                    _gotoNext = 480964i32;
                } else if (__value__ == (480964i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_480475);
                        _sq1_480964 = @:tmpset0 __tmp__._0;
                        _sq2_480969 = @:tmpset0 __tmp__._1;
                    };
                    _absz_480990 = stdgo._internal.math.Math_abs.abs(_z_480845);
                    _d_481007 = ((_absz_480990 * _sq1_480964 : stdgo.GoFloat64) * _sq2_480969 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_481007, (0 : stdgo.GoInt))) {
                        _gotoNext = 481046i32;
                    } else {
                        _gotoNext = 481086i32;
                    };
                } else if (__value__ == (481046i32)) {
                    _z_480845 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_480990 : stdgo.GoFloat64) / _sq1_480964 : stdgo.GoFloat64) / _sq2_480969 : stdgo.GoFloat64);
                    _gotoNext = 481108i32;
                } else if (__value__ == (481086i32)) {
                    _gotoNext = 481086i32;
                    _z_480845 = ((3.141592653589793 : stdgo.GoFloat64) / _d_481007 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 481108i32;
                } else if (__value__ == (481108i32)) {
                    return ((_signgam_480777 : stdgo.GoFloat64) * _z_480845 : stdgo.GoFloat64);
                    _gotoNext = 481161i32;
                } else if (__value__ == (481161i32)) {
                    _z_481161 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 481171i32;
                } else if (__value__ == (481171i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481182i32;
                    } else {
                        _gotoNext = 481212i32;
                    };
                } else if (__value__ == (481182i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_481161 = (_z_481161 * _x : stdgo.GoFloat64);
                    _gotoNext = 481171i32;
                } else if (__value__ == (481212i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 481212i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481222i32;
                    } else {
                        _gotoNext = 481288i32;
                    };
                } else if (__value__ == (481222i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481240i32;
                    } else {
                        _gotoNext = 481262i32;
                    };
                } else if (__value__ == (481240i32)) {
                    _gotoNext = 481618i32;
                } else if (__value__ == (481262i32)) {
                    _z_481161 = (_z_481161 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 481212i32;
                } else if (__value__ == (481288i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 481288i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481298i32;
                    } else {
                        _gotoNext = 481364i32;
                    };
                } else if (__value__ == (481298i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 481315i32;
                    } else {
                        _gotoNext = 481337i32;
                    };
                } else if (__value__ == (481315i32)) {
                    _gotoNext = 481618i32;
                } else if (__value__ == (481337i32)) {
                    _z_481161 = (_z_481161 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 481288i32;
                } else if (__value__ == (481364i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 481374i32;
                    } else {
                        _gotoNext = 481392i32;
                    };
                } else if (__value__ == (481374i32)) {
                    return _z_481161;
                    _gotoNext = 481392i32;
                } else if (__value__ == (481392i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_480488 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_480475 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_481161 * _p_480488 : stdgo.GoFloat64) / _q_480475 : stdgo.GoFloat64);
                    _gotoNext = 481618i32;
                } else if (__value__ == (481618i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 481636i32;
                    } else {
                        _gotoNext = 481658i32;
                    };
                } else if (__value__ == (481636i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 481658i32;
                } else if (__value__ == (481658i32)) {
                    return (_z_481161 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
