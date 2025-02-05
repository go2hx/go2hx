package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_426137:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_425662:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_425618:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_425334;
        var _sq2_426099:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_426094:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_425975:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_425907:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_425666:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_425925:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _z_426291:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_425605:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_426120:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_425334 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 425425i32;
                } else if (__value__ == (425425i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 425435i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 425497i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 425532i32;
                    } else {
                        _gotoNext = 425605i32;
                    };
                } else if (__value__ == (425435i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 425605i32;
                } else if (__value__ == (425497i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 425605i32;
                } else if (__value__ == (425532i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 425561i32;
                    } else {
                        _gotoNext = 425587i32;
                    };
                } else if (__value__ == (425561i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 425587i32;
                } else if (__value__ == (425587i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 425605i32;
                } else if (__value__ == (425605i32)) {
                    _q_425605 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_425618 = stdgo._internal.math.Math_floor.floor(_q_425605);
                    if ((_q_425605 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425643i32;
                    } else {
                        _gotoNext = 426291i32;
                    };
                } else if (__value__ == (425643i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425657i32;
                    } else {
                        _gotoNext = 425907i32;
                    };
                } else if (__value__ == (425657i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_425662 = @:tmpset0 __tmp__._0;
                        _y2_425666 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_425662 * _y2_425666 : stdgo.GoFloat64);
                    _gotoNext = 425907i32;
                } else if (__value__ == (425907i32)) {
                    _signgam_425907 = (1 : stdgo.GoInt);
                    {
                        _ip_425925 = (_p_425618 : stdgo.GoInt64);
                        if ((_ip_425925 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 425951i32;
                        } else {
                            _gotoNext = 425975i32;
                        };
                    };
                } else if (__value__ == (425951i32)) {
                    _signgam_425907 = (-1 : stdgo.GoInt);
                    _gotoNext = 425975i32;
                } else if (__value__ == (425975i32)) {
                    _z_425975 = (_q_425605 - _p_425618 : stdgo.GoFloat64);
                    if ((_z_425975 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425999i32;
                    } else {
                        _gotoNext = 426033i32;
                    };
                } else if (__value__ == (425999i32)) {
                    _p_425618 = (_p_425618 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_425975 = (_q_425605 - _p_425618 : stdgo.GoFloat64);
                    _gotoNext = 426033i32;
                } else if (__value__ == (426033i32)) {
                    _z_425975 = (_q_425605 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_425975 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_425975 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 426063i32;
                    } else {
                        _gotoNext = 426094i32;
                    };
                } else if (__value__ == (426063i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_425907);
                    _gotoNext = 426094i32;
                } else if (__value__ == (426094i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_425605);
                        _sq1_426094 = @:tmpset0 __tmp__._0;
                        _sq2_426099 = @:tmpset0 __tmp__._1;
                    };
                    _absz_426120 = stdgo._internal.math.Math_abs.abs(_z_425975);
                    _d_426137 = ((_absz_426120 * _sq1_426094 : stdgo.GoFloat64) * _sq2_426099 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_426137, (0 : stdgo.GoInt))) {
                        _gotoNext = 426176i32;
                    } else {
                        _gotoNext = 426216i32;
                    };
                } else if (__value__ == (426176i32)) {
                    _z_425975 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_426120 : stdgo.GoFloat64) / _sq1_426094 : stdgo.GoFloat64) / _sq2_426099 : stdgo.GoFloat64);
                    _gotoNext = 426238i32;
                } else if (__value__ == (426216i32)) {
                    _gotoNext = 426216i32;
                    _z_425975 = ((3.141592653589793 : stdgo.GoFloat64) / _d_426137 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 426238i32;
                } else if (__value__ == (426238i32)) {
                    return ((_signgam_425907 : stdgo.GoFloat64) * _z_425975 : stdgo.GoFloat64);
                    _gotoNext = 426291i32;
                } else if (__value__ == (426291i32)) {
                    _z_426291 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 426301i32;
                } else if (__value__ == (426301i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426312i32;
                    } else {
                        _gotoNext = 426342i32;
                    };
                } else if (__value__ == (426312i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_426291 = (_z_426291 * _x : stdgo.GoFloat64);
                    _gotoNext = 426301i32;
                } else if (__value__ == (426342i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 426342i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426352i32;
                    } else {
                        _gotoNext = 426418i32;
                    };
                } else if (__value__ == (426352i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426370i32;
                    } else {
                        _gotoNext = 426392i32;
                    };
                } else if (__value__ == (426370i32)) {
                    _gotoNext = 426748i32;
                } else if (__value__ == (426392i32)) {
                    _z_426291 = (_z_426291 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 426342i32;
                } else if (__value__ == (426418i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 426418i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426428i32;
                    } else {
                        _gotoNext = 426494i32;
                    };
                } else if (__value__ == (426428i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426445i32;
                    } else {
                        _gotoNext = 426467i32;
                    };
                } else if (__value__ == (426445i32)) {
                    _gotoNext = 426748i32;
                } else if (__value__ == (426467i32)) {
                    _z_426291 = (_z_426291 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 426418i32;
                } else if (__value__ == (426494i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 426504i32;
                    } else {
                        _gotoNext = 426522i32;
                    };
                } else if (__value__ == (426504i32)) {
                    return _z_426291;
                    _gotoNext = 426522i32;
                } else if (__value__ == (426522i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_425618 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_425605 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_426291 * _p_425618 : stdgo.GoFloat64) / _q_425605 : stdgo.GoFloat64);
                    _gotoNext = 426748i32;
                } else if (__value__ == (426748i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 426766i32;
                    } else {
                        _gotoNext = 426788i32;
                    };
                } else if (__value__ == (426766i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 426788i32;
                } else if (__value__ == (426788i32)) {
                    return (_z_426291 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
