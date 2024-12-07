package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_363870:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_363832:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_363708:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_363640:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_363395:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_363067;
        var _absz_363853:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_363827:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_363351:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_363338:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_363658:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _z_364024:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_363399:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_363067 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 363158i32;
                } else if (__value__ == (363158i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 363168i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 363230i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 363265i32;
                    } else {
                        _gotoNext = 363338i32;
                    };
                } else if (__value__ == (363168i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 363338i32;
                } else if (__value__ == (363230i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 363338i32;
                } else if (__value__ == (363265i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 363294i32;
                    } else {
                        _gotoNext = 363320i32;
                    };
                } else if (__value__ == (363294i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 363320i32;
                } else if (__value__ == (363320i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 363338i32;
                } else if (__value__ == (363338i32)) {
                    _q_363338 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_363351 = stdgo._internal.math.Math_floor.floor(_q_363338);
                    if ((_q_363338 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 363376i32;
                    } else {
                        _gotoNext = 364024i32;
                    };
                } else if (__value__ == (363376i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 363390i32;
                    } else {
                        _gotoNext = 363640i32;
                    };
                } else if (__value__ == (363390i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_363395 = __tmp__._0;
                        _y2_363399 = __tmp__._1;
                    };
                    return (_y1_363395 * _y2_363399 : stdgo.GoFloat64);
                    _gotoNext = 363640i32;
                } else if (__value__ == (363640i32)) {
                    _signgam_363640 = (1 : stdgo.GoInt);
                    {
                        _ip_363658 = (_p_363351 : stdgo.GoInt64);
                        if ((_ip_363658 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 363684i32;
                        } else {
                            _gotoNext = 363708i32;
                        };
                    };
                } else if (__value__ == (363684i32)) {
                    _signgam_363640 = (-1 : stdgo.GoInt);
                    _gotoNext = 363708i32;
                } else if (__value__ == (363708i32)) {
                    _z_363708 = (_q_363338 - _p_363351 : stdgo.GoFloat64);
                    if ((_z_363708 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 363732i32;
                    } else {
                        _gotoNext = 363766i32;
                    };
                } else if (__value__ == (363732i32)) {
                    _p_363351 = (_p_363351 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_363708 = (_q_363338 - _p_363351 : stdgo.GoFloat64);
                    _gotoNext = 363766i32;
                } else if (__value__ == (363766i32)) {
                    _z_363708 = (_q_363338 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_363708 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_363708 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 363796i32;
                    } else {
                        _gotoNext = 363827i32;
                    };
                } else if (__value__ == (363796i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_363640);
                    _gotoNext = 363827i32;
                } else if (__value__ == (363827i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_363338);
                        _sq1_363827 = __tmp__._0;
                        _sq2_363832 = __tmp__._1;
                    };
                    _absz_363853 = stdgo._internal.math.Math_abs.abs(_z_363708);
                    _d_363870 = ((_absz_363853 * _sq1_363827 : stdgo.GoFloat64) * _sq2_363832 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_363870, (0 : stdgo.GoInt))) {
                        _gotoNext = 363909i32;
                    } else {
                        _gotoNext = 363949i32;
                    };
                } else if (__value__ == (363909i32)) {
                    _z_363708 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_363853 : stdgo.GoFloat64) / _sq1_363827 : stdgo.GoFloat64) / _sq2_363832 : stdgo.GoFloat64);
                    _gotoNext = 363971i32;
                } else if (__value__ == (363949i32)) {
                    _gotoNext = 363949i32;
                    _z_363708 = ((3.141592653589793 : stdgo.GoFloat64) / _d_363870 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 363971i32;
                } else if (__value__ == (363971i32)) {
                    return ((_signgam_363640 : stdgo.GoFloat64) * _z_363708 : stdgo.GoFloat64);
                    _gotoNext = 364024i32;
                } else if (__value__ == (364024i32)) {
                    _z_364024 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 364034i32;
                } else if (__value__ == (364034i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 364045i32;
                    } else {
                        _gotoNext = 364075i32;
                    };
                } else if (__value__ == (364045i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_364024 = (_z_364024 * _x : stdgo.GoFloat64);
                    _gotoNext = 364034i32;
                } else if (__value__ == (364075i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 364075i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 364085i32;
                    } else {
                        _gotoNext = 364151i32;
                    };
                } else if (__value__ == (364085i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 364103i32;
                    } else {
                        _gotoNext = 364125i32;
                    };
                } else if (__value__ == (364103i32)) {
                    _gotoNext = 364481i32;
                } else if (__value__ == (364125i32)) {
                    _z_364024 = (_z_364024 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 364075i32;
                } else if (__value__ == (364151i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 364151i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 364161i32;
                    } else {
                        _gotoNext = 364227i32;
                    };
                } else if (__value__ == (364161i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 364178i32;
                    } else {
                        _gotoNext = 364200i32;
                    };
                } else if (__value__ == (364178i32)) {
                    _gotoNext = 364481i32;
                } else if (__value__ == (364200i32)) {
                    _z_364024 = (_z_364024 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 364151i32;
                } else if (__value__ == (364227i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 364237i32;
                    } else {
                        _gotoNext = 364255i32;
                    };
                } else if (__value__ == (364237i32)) {
                    return _z_364024;
                    _gotoNext = 364255i32;
                } else if (__value__ == (364255i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_363351 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_363338 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_364024 * _p_363351 : stdgo.GoFloat64) / _q_363338 : stdgo.GoFloat64);
                    _gotoNext = 364481i32;
                } else if (__value__ == (364481i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 364499i32;
                    } else {
                        _gotoNext = 364521i32;
                    };
                } else if (__value__ == (364499i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 364521i32;
                } else if (__value__ == (364521i32)) {
                    return (_z_364024 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
