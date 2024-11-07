package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_89468:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_89447:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_88953:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_89273:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_88966:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_88682;
        var _z_89323:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_89639:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_89485:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_89255:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq1_89442:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_89014:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_89010:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_88682 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 88773i32;
                } else if (__value__ == (88773i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 88783i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 88845i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 88880i32;
                    } else {
                        _gotoNext = 88953i32;
                    };
                } else if (__value__ == (88783i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 88953i32;
                } else if (__value__ == (88845i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 88953i32;
                } else if (__value__ == (88880i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 88909i32;
                    } else {
                        _gotoNext = 88935i32;
                    };
                } else if (__value__ == (88909i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 88935i32;
                } else if (__value__ == (88935i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 88953i32;
                } else if (__value__ == (88953i32)) {
                    _q_88953 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_88966 = stdgo._internal.math.Math_floor.floor(_q_88953);
                    if ((_q_88953 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 88991i32;
                    } else {
                        _gotoNext = 89639i32;
                    };
                } else if (__value__ == (88991i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 89005i32;
                    } else {
                        _gotoNext = 89255i32;
                    };
                } else if (__value__ == (89005i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_89010 = __tmp__._0;
                        _y2_89014 = __tmp__._1;
                    };
                    return (_y1_89010 * _y2_89014 : stdgo.GoFloat64);
                    _gotoNext = 89255i32;
                } else if (__value__ == (89255i32)) {
                    _signgam_89255 = (1 : stdgo.GoInt);
                    {
                        _ip_89273 = (_p_88966 : stdgo.GoInt64);
                        if ((_ip_89273 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 89299i32;
                        } else {
                            _gotoNext = 89323i32;
                        };
                    };
                } else if (__value__ == (89299i32)) {
                    _signgam_89255 = (-1 : stdgo.GoInt);
                    _gotoNext = 89323i32;
                } else if (__value__ == (89323i32)) {
                    _z_89323 = (_q_88953 - _p_88966 : stdgo.GoFloat64);
                    if ((_z_89323 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 89347i32;
                    } else {
                        _gotoNext = 89381i32;
                    };
                } else if (__value__ == (89347i32)) {
                    _p_88966 = (_p_88966 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_89323 = (_q_88953 - _p_88966 : stdgo.GoFloat64);
                    _gotoNext = 89381i32;
                } else if (__value__ == (89381i32)) {
                    _z_89323 = (_q_88953 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_89323 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_89323 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 89411i32;
                    } else {
                        _gotoNext = 89442i32;
                    };
                } else if (__value__ == (89411i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_89255);
                    _gotoNext = 89442i32;
                } else if (__value__ == (89442i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_88953);
                        _sq1_89442 = __tmp__._0;
                        _sq2_89447 = __tmp__._1;
                    };
                    _absz_89468 = stdgo._internal.math.Math_abs.abs(_z_89323);
                    _d_89485 = ((_absz_89468 * _sq1_89442 : stdgo.GoFloat64) * _sq2_89447 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_89485, (0 : stdgo.GoInt))) {
                        _gotoNext = 89524i32;
                    } else {
                        _gotoNext = 89564i32;
                    };
                } else if (__value__ == (89524i32)) {
                    _z_89323 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_89468 : stdgo.GoFloat64) / _sq1_89442 : stdgo.GoFloat64) / _sq2_89447 : stdgo.GoFloat64);
                    _gotoNext = 89586i32;
                } else if (__value__ == (89564i32)) {
                    _z_89323 = ((3.141592653589793 : stdgo.GoFloat64) / _d_89485 : stdgo.GoFloat64);
                    _gotoNext = 89586i32;
                } else if (__value__ == (89586i32)) {
                    return ((_signgam_89255 : stdgo.GoFloat64) * _z_89323 : stdgo.GoFloat64);
                    _gotoNext = 89639i32;
                } else if (__value__ == (89639i32)) {
                    _z_89639 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 89649i32;
                } else if (__value__ == (89649i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 89660i32;
                    } else {
                        _gotoNext = 89690i32;
                    };
                } else if (__value__ == (89660i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_89639 = (_z_89639 * _x : stdgo.GoFloat64);
                    _gotoNext = 89649i32;
                } else if (__value__ == (89690i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 89690i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 89700i32;
                    } else {
                        _gotoNext = 89766i32;
                    };
                } else if (__value__ == (89700i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 89718i32;
                    } else {
                        _gotoNext = 89740i32;
                    };
                } else if (__value__ == (89718i32)) {
                    _gotoNext = 90096i32;
                } else if (__value__ == (89740i32)) {
                    _z_89639 = (_z_89639 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 89690i32;
                } else if (__value__ == (89766i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 89766i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 89776i32;
                    } else {
                        _gotoNext = 89842i32;
                    };
                } else if (__value__ == (89776i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 89793i32;
                    } else {
                        _gotoNext = 89815i32;
                    };
                } else if (__value__ == (89793i32)) {
                    _gotoNext = 90096i32;
                } else if (__value__ == (89815i32)) {
                    _z_89639 = (_z_89639 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 89766i32;
                } else if (__value__ == (89842i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 89852i32;
                    } else {
                        _gotoNext = 89870i32;
                    };
                } else if (__value__ == (89852i32)) {
                    return _z_89639;
                    _gotoNext = 89870i32;
                } else if (__value__ == (89870i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_88966 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_88953 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_89639 * _p_88966 : stdgo.GoFloat64) / _q_88953 : stdgo.GoFloat64);
                    _gotoNext = 90096i32;
                } else if (__value__ == (90096i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 90114i32;
                    } else {
                        _gotoNext = 90136i32;
                    };
                } else if (__value__ == (90114i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 90136i32;
                } else if (__value__ == (90136i32)) {
                    return (_z_89639 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
