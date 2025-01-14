package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y2_358635:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_358631:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_359089:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_358944:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_358876:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ip_358894:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_358574:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_359260:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_359063:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_358587:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_358303;
        var _d_359106:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_359068:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_358303 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 358394i32;
                } else if (__value__ == (358394i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 358404i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 358466i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 358501i32;
                    } else {
                        _gotoNext = 358574i32;
                    };
                } else if (__value__ == (358404i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 358574i32;
                } else if (__value__ == (358466i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 358574i32;
                } else if (__value__ == (358501i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 358530i32;
                    } else {
                        _gotoNext = 358556i32;
                    };
                } else if (__value__ == (358530i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 358556i32;
                } else if (__value__ == (358556i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 358574i32;
                } else if (__value__ == (358574i32)) {
                    _q_358574 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_358587 = stdgo._internal.math.Math_floor.floor(_q_358574);
                    if ((_q_358574 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 358612i32;
                    } else {
                        _gotoNext = 359260i32;
                    };
                } else if (__value__ == (358612i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 358626i32;
                    } else {
                        _gotoNext = 358876i32;
                    };
                } else if (__value__ == (358626i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_358631 = @:tmpset0 __tmp__._0;
                        _y2_358635 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_358631 * _y2_358635 : stdgo.GoFloat64);
                    _gotoNext = 358876i32;
                } else if (__value__ == (358876i32)) {
                    _signgam_358876 = (1 : stdgo.GoInt);
                    {
                        _ip_358894 = (_p_358587 : stdgo.GoInt64);
                        if ((_ip_358894 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 358920i32;
                        } else {
                            _gotoNext = 358944i32;
                        };
                    };
                } else if (__value__ == (358920i32)) {
                    _signgam_358876 = (-1 : stdgo.GoInt);
                    _gotoNext = 358944i32;
                } else if (__value__ == (358944i32)) {
                    _z_358944 = (_q_358574 - _p_358587 : stdgo.GoFloat64);
                    if ((_z_358944 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 358968i32;
                    } else {
                        _gotoNext = 359002i32;
                    };
                } else if (__value__ == (358968i32)) {
                    _p_358587 = (_p_358587 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_358944 = (_q_358574 - _p_358587 : stdgo.GoFloat64);
                    _gotoNext = 359002i32;
                } else if (__value__ == (359002i32)) {
                    _z_358944 = (_q_358574 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_358944 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_358944 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 359032i32;
                    } else {
                        _gotoNext = 359063i32;
                    };
                } else if (__value__ == (359032i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_358876);
                    _gotoNext = 359063i32;
                } else if (__value__ == (359063i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_358574);
                        _sq1_359063 = @:tmpset0 __tmp__._0;
                        _sq2_359068 = @:tmpset0 __tmp__._1;
                    };
                    _absz_359089 = stdgo._internal.math.Math_abs.abs(_z_358944);
                    _d_359106 = ((_absz_359089 * _sq1_359063 : stdgo.GoFloat64) * _sq2_359068 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_359106, (0 : stdgo.GoInt))) {
                        _gotoNext = 359145i32;
                    } else {
                        _gotoNext = 359185i32;
                    };
                } else if (__value__ == (359145i32)) {
                    _z_358944 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_359089 : stdgo.GoFloat64) / _sq1_359063 : stdgo.GoFloat64) / _sq2_359068 : stdgo.GoFloat64);
                    _gotoNext = 359207i32;
                } else if (__value__ == (359185i32)) {
                    _gotoNext = 359185i32;
                    _z_358944 = ((3.141592653589793 : stdgo.GoFloat64) / _d_359106 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 359207i32;
                } else if (__value__ == (359207i32)) {
                    return ((_signgam_358876 : stdgo.GoFloat64) * _z_358944 : stdgo.GoFloat64);
                    _gotoNext = 359260i32;
                } else if (__value__ == (359260i32)) {
                    _z_359260 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 359270i32;
                } else if (__value__ == (359270i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 359281i32;
                    } else {
                        _gotoNext = 359311i32;
                    };
                } else if (__value__ == (359281i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_359260 = (_z_359260 * _x : stdgo.GoFloat64);
                    _gotoNext = 359270i32;
                } else if (__value__ == (359311i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 359311i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 359321i32;
                    } else {
                        _gotoNext = 359387i32;
                    };
                } else if (__value__ == (359321i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 359339i32;
                    } else {
                        _gotoNext = 359361i32;
                    };
                } else if (__value__ == (359339i32)) {
                    _gotoNext = 359717i32;
                } else if (__value__ == (359361i32)) {
                    _z_359260 = (_z_359260 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 359311i32;
                } else if (__value__ == (359387i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 359387i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 359397i32;
                    } else {
                        _gotoNext = 359463i32;
                    };
                } else if (__value__ == (359397i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 359414i32;
                    } else {
                        _gotoNext = 359436i32;
                    };
                } else if (__value__ == (359414i32)) {
                    _gotoNext = 359717i32;
                } else if (__value__ == (359436i32)) {
                    _z_359260 = (_z_359260 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 359387i32;
                } else if (__value__ == (359463i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 359473i32;
                    } else {
                        _gotoNext = 359491i32;
                    };
                } else if (__value__ == (359473i32)) {
                    return _z_359260;
                    _gotoNext = 359491i32;
                } else if (__value__ == (359491i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_358587 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_358574 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_359260 * _p_358587 : stdgo.GoFloat64) / _q_358574 : stdgo.GoFloat64);
                    _gotoNext = 359717i32;
                } else if (__value__ == (359717i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 359735i32;
                    } else {
                        _gotoNext = 359757i32;
                    };
                } else if (__value__ == (359735i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 359757i32;
                } else if (__value__ == (359757i32)) {
                    return (_z_359260 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
