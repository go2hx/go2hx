package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_369198:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_369079:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_368709:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_368438;
        var _signgam_369011:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_368766:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_368722:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_369203:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_369224:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_369029:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_368770:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_369395:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_369241:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_368438 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 368529i32;
                } else if (__value__ == (368529i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 368539i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 368601i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 368636i32;
                    } else {
                        _gotoNext = 368709i32;
                    };
                } else if (__value__ == (368539i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 368709i32;
                } else if (__value__ == (368601i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 368709i32;
                } else if (__value__ == (368636i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 368665i32;
                    } else {
                        _gotoNext = 368691i32;
                    };
                } else if (__value__ == (368665i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 368691i32;
                } else if (__value__ == (368691i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 368709i32;
                } else if (__value__ == (368709i32)) {
                    _q_368709 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_368722 = stdgo._internal.math.Math_floor.floor(_q_368709);
                    if ((_q_368709 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 368747i32;
                    } else {
                        _gotoNext = 369395i32;
                    };
                } else if (__value__ == (368747i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 368761i32;
                    } else {
                        _gotoNext = 369011i32;
                    };
                } else if (__value__ == (368761i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_368766 = @:tmpset0 __tmp__._0;
                        _y2_368770 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_368766 * _y2_368770 : stdgo.GoFloat64);
                    _gotoNext = 369011i32;
                } else if (__value__ == (369011i32)) {
                    _signgam_369011 = (1 : stdgo.GoInt);
                    {
                        _ip_369029 = (_p_368722 : stdgo.GoInt64);
                        if ((_ip_369029 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 369055i32;
                        } else {
                            _gotoNext = 369079i32;
                        };
                    };
                } else if (__value__ == (369055i32)) {
                    _signgam_369011 = (-1 : stdgo.GoInt);
                    _gotoNext = 369079i32;
                } else if (__value__ == (369079i32)) {
                    _z_369079 = (_q_368709 - _p_368722 : stdgo.GoFloat64);
                    if ((_z_369079 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369103i32;
                    } else {
                        _gotoNext = 369137i32;
                    };
                } else if (__value__ == (369103i32)) {
                    _p_368722 = (_p_368722 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_369079 = (_q_368709 - _p_368722 : stdgo.GoFloat64);
                    _gotoNext = 369137i32;
                } else if (__value__ == (369137i32)) {
                    _z_369079 = (_q_368709 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_369079 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_369079 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 369167i32;
                    } else {
                        _gotoNext = 369198i32;
                    };
                } else if (__value__ == (369167i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_369011);
                    _gotoNext = 369198i32;
                } else if (__value__ == (369198i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_368709);
                        _sq1_369198 = @:tmpset0 __tmp__._0;
                        _sq2_369203 = @:tmpset0 __tmp__._1;
                    };
                    _absz_369224 = stdgo._internal.math.Math_abs.abs(_z_369079);
                    _d_369241 = ((_absz_369224 * _sq1_369198 : stdgo.GoFloat64) * _sq2_369203 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_369241, (0 : stdgo.GoInt))) {
                        _gotoNext = 369280i32;
                    } else {
                        _gotoNext = 369320i32;
                    };
                } else if (__value__ == (369280i32)) {
                    _z_369079 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_369224 : stdgo.GoFloat64) / _sq1_369198 : stdgo.GoFloat64) / _sq2_369203 : stdgo.GoFloat64);
                    _gotoNext = 369342i32;
                } else if (__value__ == (369320i32)) {
                    _gotoNext = 369320i32;
                    _z_369079 = ((3.141592653589793 : stdgo.GoFloat64) / _d_369241 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 369342i32;
                } else if (__value__ == (369342i32)) {
                    return ((_signgam_369011 : stdgo.GoFloat64) * _z_369079 : stdgo.GoFloat64);
                    _gotoNext = 369395i32;
                } else if (__value__ == (369395i32)) {
                    _z_369395 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 369405i32;
                } else if (__value__ == (369405i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369416i32;
                    } else {
                        _gotoNext = 369446i32;
                    };
                } else if (__value__ == (369416i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_369395 = (_z_369395 * _x : stdgo.GoFloat64);
                    _gotoNext = 369405i32;
                } else if (__value__ == (369446i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 369446i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369456i32;
                    } else {
                        _gotoNext = 369522i32;
                    };
                } else if (__value__ == (369456i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369474i32;
                    } else {
                        _gotoNext = 369496i32;
                    };
                } else if (__value__ == (369474i32)) {
                    _gotoNext = 369852i32;
                } else if (__value__ == (369496i32)) {
                    _z_369395 = (_z_369395 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 369446i32;
                } else if (__value__ == (369522i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 369522i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369532i32;
                    } else {
                        _gotoNext = 369598i32;
                    };
                } else if (__value__ == (369532i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 369549i32;
                    } else {
                        _gotoNext = 369571i32;
                    };
                } else if (__value__ == (369549i32)) {
                    _gotoNext = 369852i32;
                } else if (__value__ == (369571i32)) {
                    _z_369395 = (_z_369395 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 369522i32;
                } else if (__value__ == (369598i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 369608i32;
                    } else {
                        _gotoNext = 369626i32;
                    };
                } else if (__value__ == (369608i32)) {
                    return _z_369395;
                    _gotoNext = 369626i32;
                } else if (__value__ == (369626i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_368722 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_368709 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_369395 * _p_368722 : stdgo.GoFloat64) / _q_368709 : stdgo.GoFloat64);
                    _gotoNext = 369852i32;
                } else if (__value__ == (369852i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 369870i32;
                    } else {
                        _gotoNext = 369892i32;
                    };
                } else if (__value__ == (369870i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 369892i32;
                } else if (__value__ == (369892i32)) {
                    return (_z_369395 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
