package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_512180:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_512163:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_512142:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_512334:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_512137:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_511661:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_512018:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_511950:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_511709:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_511705:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_511648:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_511377;
        var _ip_511968:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_511377 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 511468i32;
                } else if (__value__ == (511468i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 511478i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 511540i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 511575i32;
                    } else {
                        _gotoNext = 511648i32;
                    };
                } else if (__value__ == (511478i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 511648i32;
                } else if (__value__ == (511540i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 511648i32;
                } else if (__value__ == (511575i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 511604i32;
                    } else {
                        _gotoNext = 511630i32;
                    };
                } else if (__value__ == (511604i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 511630i32;
                } else if (__value__ == (511630i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 511648i32;
                } else if (__value__ == (511648i32)) {
                    _q_511648 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_511661 = stdgo._internal.math.Math_floor.floor(_q_511648);
                    if ((_q_511648 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511686i32;
                    } else {
                        _gotoNext = 512334i32;
                    };
                } else if (__value__ == (511686i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 511700i32;
                    } else {
                        _gotoNext = 511950i32;
                    };
                } else if (__value__ == (511700i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_511705 = __tmp__._0;
                        _y2_511709 = __tmp__._1;
                    };
                    return (_y1_511705 * _y2_511709 : stdgo.GoFloat64);
                    _gotoNext = 511950i32;
                } else if (__value__ == (511950i32)) {
                    _signgam_511950 = (1 : stdgo.GoInt);
                    {
                        _ip_511968 = (_p_511661 : stdgo.GoInt64);
                        if ((_ip_511968 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 511994i32;
                        } else {
                            _gotoNext = 512018i32;
                        };
                    };
                } else if (__value__ == (511994i32)) {
                    _signgam_511950 = (-1 : stdgo.GoInt);
                    _gotoNext = 512018i32;
                } else if (__value__ == (512018i32)) {
                    _z_512018 = (_q_511648 - _p_511661 : stdgo.GoFloat64);
                    if ((_z_512018 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512042i32;
                    } else {
                        _gotoNext = 512076i32;
                    };
                } else if (__value__ == (512042i32)) {
                    _p_511661 = (_p_511661 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_512018 = (_q_511648 - _p_511661 : stdgo.GoFloat64);
                    _gotoNext = 512076i32;
                } else if (__value__ == (512076i32)) {
                    _z_512018 = (_q_511648 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_512018 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_512018 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 512106i32;
                    } else {
                        _gotoNext = 512137i32;
                    };
                } else if (__value__ == (512106i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_511950);
                    _gotoNext = 512137i32;
                } else if (__value__ == (512137i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_511648);
                        _sq1_512137 = __tmp__._0;
                        _sq2_512142 = __tmp__._1;
                    };
                    _absz_512163 = stdgo._internal.math.Math_abs.abs(_z_512018);
                    _d_512180 = ((_absz_512163 * _sq1_512137 : stdgo.GoFloat64) * _sq2_512142 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_512180, (0 : stdgo.GoInt))) {
                        _gotoNext = 512219i32;
                    } else {
                        _gotoNext = 512259i32;
                    };
                } else if (__value__ == (512219i32)) {
                    _z_512018 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_512163 : stdgo.GoFloat64) / _sq1_512137 : stdgo.GoFloat64) / _sq2_512142 : stdgo.GoFloat64);
                    _gotoNext = 512281i32;
                } else if (__value__ == (512259i32)) {
                    _gotoNext = 512259i32;
                    _z_512018 = ((3.141592653589793 : stdgo.GoFloat64) / _d_512180 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 512281i32;
                } else if (__value__ == (512281i32)) {
                    return ((_signgam_511950 : stdgo.GoFloat64) * _z_512018 : stdgo.GoFloat64);
                    _gotoNext = 512334i32;
                } else if (__value__ == (512334i32)) {
                    _z_512334 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 512344i32;
                } else if (__value__ == (512344i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512355i32;
                    } else {
                        _gotoNext = 512385i32;
                    };
                } else if (__value__ == (512355i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_512334 = (_z_512334 * _x : stdgo.GoFloat64);
                    _gotoNext = 512344i32;
                } else if (__value__ == (512385i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 512385i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512395i32;
                    } else {
                        _gotoNext = 512461i32;
                    };
                } else if (__value__ == (512395i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512413i32;
                    } else {
                        _gotoNext = 512435i32;
                    };
                } else if (__value__ == (512413i32)) {
                    _gotoNext = 512791i32;
                } else if (__value__ == (512435i32)) {
                    _z_512334 = (_z_512334 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 512385i32;
                } else if (__value__ == (512461i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 512461i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512471i32;
                    } else {
                        _gotoNext = 512537i32;
                    };
                } else if (__value__ == (512471i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 512488i32;
                    } else {
                        _gotoNext = 512510i32;
                    };
                } else if (__value__ == (512488i32)) {
                    _gotoNext = 512791i32;
                } else if (__value__ == (512510i32)) {
                    _z_512334 = (_z_512334 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 512461i32;
                } else if (__value__ == (512537i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 512547i32;
                    } else {
                        _gotoNext = 512565i32;
                    };
                } else if (__value__ == (512547i32)) {
                    return _z_512334;
                    _gotoNext = 512565i32;
                } else if (__value__ == (512565i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_511661 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_511648 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_512334 * _p_511661 : stdgo.GoFloat64) / _q_511648 : stdgo.GoFloat64);
                    _gotoNext = 512791i32;
                } else if (__value__ == (512791i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 512809i32;
                    } else {
                        _gotoNext = 512831i32;
                    };
                } else if (__value__ == (512809i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 512831i32;
                } else if (__value__ == (512831i32)) {
                    return (_z_512334 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
