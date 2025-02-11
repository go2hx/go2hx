package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_464469:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_464448:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_464443:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_464640:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_464486:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_464256:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_463967:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_463954:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_464324:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_464011:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_464274:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_464015:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_463683;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_463683 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 463774i32;
                } else if (__value__ == (463774i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 463784i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 463846i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 463881i32;
                    } else {
                        _gotoNext = 463954i32;
                    };
                } else if (__value__ == (463784i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 463954i32;
                } else if (__value__ == (463846i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 463954i32;
                } else if (__value__ == (463881i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 463910i32;
                    } else {
                        _gotoNext = 463936i32;
                    };
                } else if (__value__ == (463910i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 463936i32;
                } else if (__value__ == (463936i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 463954i32;
                } else if (__value__ == (463954i32)) {
                    _q_463954 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_463967 = stdgo._internal.math.Math_floor.floor(_q_463954);
                    if ((_q_463954 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463992i32;
                    } else {
                        _gotoNext = 464640i32;
                    };
                } else if (__value__ == (463992i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 464006i32;
                    } else {
                        _gotoNext = 464256i32;
                    };
                } else if (__value__ == (464006i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_464011 = @:tmpset0 __tmp__._0;
                        _y2_464015 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_464011 * _y2_464015 : stdgo.GoFloat64);
                    _gotoNext = 464256i32;
                } else if (__value__ == (464256i32)) {
                    _signgam_464256 = (1 : stdgo.GoInt);
                    {
                        _ip_464274 = (_p_463967 : stdgo.GoInt64);
                        if ((_ip_464274 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 464300i32;
                        } else {
                            _gotoNext = 464324i32;
                        };
                    };
                } else if (__value__ == (464300i32)) {
                    _signgam_464256 = (-1 : stdgo.GoInt);
                    _gotoNext = 464324i32;
                } else if (__value__ == (464324i32)) {
                    _z_464324 = (_q_463954 - _p_463967 : stdgo.GoFloat64);
                    if ((_z_464324 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 464348i32;
                    } else {
                        _gotoNext = 464382i32;
                    };
                } else if (__value__ == (464348i32)) {
                    _p_463967 = (_p_463967 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_464324 = (_q_463954 - _p_463967 : stdgo.GoFloat64);
                    _gotoNext = 464382i32;
                } else if (__value__ == (464382i32)) {
                    _z_464324 = (_q_463954 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_464324 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_464324 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 464412i32;
                    } else {
                        _gotoNext = 464443i32;
                    };
                } else if (__value__ == (464412i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_464256);
                    _gotoNext = 464443i32;
                } else if (__value__ == (464443i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_463954);
                        _sq1_464443 = @:tmpset0 __tmp__._0;
                        _sq2_464448 = @:tmpset0 __tmp__._1;
                    };
                    _absz_464469 = stdgo._internal.math.Math_abs.abs(_z_464324);
                    _d_464486 = ((_absz_464469 * _sq1_464443 : stdgo.GoFloat64) * _sq2_464448 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_464486, (0 : stdgo.GoInt))) {
                        _gotoNext = 464525i32;
                    } else {
                        _gotoNext = 464565i32;
                    };
                } else if (__value__ == (464525i32)) {
                    _z_464324 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_464469 : stdgo.GoFloat64) / _sq1_464443 : stdgo.GoFloat64) / _sq2_464448 : stdgo.GoFloat64);
                    _gotoNext = 464587i32;
                } else if (__value__ == (464565i32)) {
                    _gotoNext = 464565i32;
                    _z_464324 = ((3.141592653589793 : stdgo.GoFloat64) / _d_464486 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 464587i32;
                } else if (__value__ == (464587i32)) {
                    return ((_signgam_464256 : stdgo.GoFloat64) * _z_464324 : stdgo.GoFloat64);
                    _gotoNext = 464640i32;
                } else if (__value__ == (464640i32)) {
                    _z_464640 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 464650i32;
                } else if (__value__ == (464650i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 464661i32;
                    } else {
                        _gotoNext = 464691i32;
                    };
                } else if (__value__ == (464661i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_464640 = (_z_464640 * _x : stdgo.GoFloat64);
                    _gotoNext = 464650i32;
                } else if (__value__ == (464691i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 464691i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 464701i32;
                    } else {
                        _gotoNext = 464767i32;
                    };
                } else if (__value__ == (464701i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 464719i32;
                    } else {
                        _gotoNext = 464741i32;
                    };
                } else if (__value__ == (464719i32)) {
                    _gotoNext = 465097i32;
                } else if (__value__ == (464741i32)) {
                    _z_464640 = (_z_464640 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 464691i32;
                } else if (__value__ == (464767i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 464767i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 464777i32;
                    } else {
                        _gotoNext = 464843i32;
                    };
                } else if (__value__ == (464777i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 464794i32;
                    } else {
                        _gotoNext = 464816i32;
                    };
                } else if (__value__ == (464794i32)) {
                    _gotoNext = 465097i32;
                } else if (__value__ == (464816i32)) {
                    _z_464640 = (_z_464640 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 464767i32;
                } else if (__value__ == (464843i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 464853i32;
                    } else {
                        _gotoNext = 464871i32;
                    };
                } else if (__value__ == (464853i32)) {
                    return _z_464640;
                    _gotoNext = 464871i32;
                } else if (__value__ == (464871i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_463967 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_463954 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_464640 * _p_463967 : stdgo.GoFloat64) / _q_463954 : stdgo.GoFloat64);
                    _gotoNext = 465097i32;
                } else if (__value__ == (465097i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 465115i32;
                    } else {
                        _gotoNext = 465137i32;
                    };
                } else if (__value__ == (465115i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 465137i32;
                } else if (__value__ == (465137i32)) {
                    return (_z_464640 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
