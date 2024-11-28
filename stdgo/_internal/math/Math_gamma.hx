package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_461917:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_461654:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_462086:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_461967:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_462283:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_462129:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_461597:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_461326;
        var _absz_462112:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_461899:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_461658:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_461610:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_462091:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_461326 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 461417i32;
                } else if (__value__ == (461417i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 461427i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 461489i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 461524i32;
                    } else {
                        _gotoNext = 461597i32;
                    };
                } else if (__value__ == (461427i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 461597i32;
                } else if (__value__ == (461489i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 461597i32;
                } else if (__value__ == (461524i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 461553i32;
                    } else {
                        _gotoNext = 461579i32;
                    };
                } else if (__value__ == (461553i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 461579i32;
                } else if (__value__ == (461579i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 461597i32;
                } else if (__value__ == (461597i32)) {
                    _q_461597 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_461610 = stdgo._internal.math.Math_floor.floor(_q_461597);
                    if ((_q_461597 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461635i32;
                    } else {
                        _gotoNext = 462283i32;
                    };
                } else if (__value__ == (461635i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461649i32;
                    } else {
                        _gotoNext = 461899i32;
                    };
                } else if (__value__ == (461649i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_461654 = __tmp__._0;
                        _y2_461658 = __tmp__._1;
                    };
                    return (_y1_461654 * _y2_461658 : stdgo.GoFloat64);
                    _gotoNext = 461899i32;
                } else if (__value__ == (461899i32)) {
                    _signgam_461899 = (1 : stdgo.GoInt);
                    {
                        _ip_461917 = (_p_461610 : stdgo.GoInt64);
                        if ((_ip_461917 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 461943i32;
                        } else {
                            _gotoNext = 461967i32;
                        };
                    };
                } else if (__value__ == (461943i32)) {
                    _signgam_461899 = (-1 : stdgo.GoInt);
                    _gotoNext = 461967i32;
                } else if (__value__ == (461967i32)) {
                    _z_461967 = (_q_461597 - _p_461610 : stdgo.GoFloat64);
                    if ((_z_461967 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 461991i32;
                    } else {
                        _gotoNext = 462025i32;
                    };
                } else if (__value__ == (461991i32)) {
                    _p_461610 = (_p_461610 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_461967 = (_q_461597 - _p_461610 : stdgo.GoFloat64);
                    _gotoNext = 462025i32;
                } else if (__value__ == (462025i32)) {
                    _z_461967 = (_q_461597 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_461967 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_461967 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462055i32;
                    } else {
                        _gotoNext = 462086i32;
                    };
                } else if (__value__ == (462055i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_461899);
                    _gotoNext = 462086i32;
                } else if (__value__ == (462086i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_461597);
                        _sq1_462086 = __tmp__._0;
                        _sq2_462091 = __tmp__._1;
                    };
                    _absz_462112 = stdgo._internal.math.Math_abs.abs(_z_461967);
                    _d_462129 = ((_absz_462112 * _sq1_462086 : stdgo.GoFloat64) * _sq2_462091 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_462129, (0 : stdgo.GoInt))) {
                        _gotoNext = 462168i32;
                    } else {
                        _gotoNext = 462208i32;
                    };
                } else if (__value__ == (462168i32)) {
                    _z_461967 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_462112 : stdgo.GoFloat64) / _sq1_462086 : stdgo.GoFloat64) / _sq2_462091 : stdgo.GoFloat64);
                    _gotoNext = 462230i32;
                } else if (__value__ == (462208i32)) {
                    _gotoNext = 462208i32;
                    _z_461967 = ((3.141592653589793 : stdgo.GoFloat64) / _d_462129 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 462230i32;
                } else if (__value__ == (462230i32)) {
                    return ((_signgam_461899 : stdgo.GoFloat64) * _z_461967 : stdgo.GoFloat64);
                    _gotoNext = 462283i32;
                } else if (__value__ == (462283i32)) {
                    _z_462283 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 462293i32;
                } else if (__value__ == (462293i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462304i32;
                    } else {
                        _gotoNext = 462334i32;
                    };
                } else if (__value__ == (462304i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_462283 = (_z_462283 * _x : stdgo.GoFloat64);
                    _gotoNext = 462293i32;
                } else if (__value__ == (462334i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 462334i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462344i32;
                    } else {
                        _gotoNext = 462410i32;
                    };
                } else if (__value__ == (462344i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462362i32;
                    } else {
                        _gotoNext = 462384i32;
                    };
                } else if (__value__ == (462362i32)) {
                    _gotoNext = 462740i32;
                } else if (__value__ == (462384i32)) {
                    _z_462283 = (_z_462283 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 462334i32;
                } else if (__value__ == (462410i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 462410i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462420i32;
                    } else {
                        _gotoNext = 462486i32;
                    };
                } else if (__value__ == (462420i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462437i32;
                    } else {
                        _gotoNext = 462459i32;
                    };
                } else if (__value__ == (462437i32)) {
                    _gotoNext = 462740i32;
                } else if (__value__ == (462459i32)) {
                    _z_462283 = (_z_462283 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 462410i32;
                } else if (__value__ == (462486i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 462496i32;
                    } else {
                        _gotoNext = 462514i32;
                    };
                } else if (__value__ == (462496i32)) {
                    return _z_462283;
                    _gotoNext = 462514i32;
                } else if (__value__ == (462514i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_461610 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_461597 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_462283 * _p_461610 : stdgo.GoFloat64) / _q_461597 : stdgo.GoFloat64);
                    _gotoNext = 462740i32;
                } else if (__value__ == (462740i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462758i32;
                    } else {
                        _gotoNext = 462780i32;
                    };
                } else if (__value__ == (462758i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 462780i32;
                } else if (__value__ == (462780i32)) {
                    return (_z_462283 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
