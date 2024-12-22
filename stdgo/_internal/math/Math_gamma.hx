package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_385792:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_385547:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_386005:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_385810:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_385551:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_385503:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_385219;
        var _sq2_385984:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_385979:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_386176:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_386022:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_385860:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_385490:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_385219 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 385310i32;
                } else if (__value__ == (385310i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 385320i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 385382i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385417i32;
                    } else {
                        _gotoNext = 385490i32;
                    };
                } else if (__value__ == (385320i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 385490i32;
                } else if (__value__ == (385382i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385490i32;
                } else if (__value__ == (385417i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 385446i32;
                    } else {
                        _gotoNext = 385472i32;
                    };
                } else if (__value__ == (385446i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 385472i32;
                } else if (__value__ == (385472i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385490i32;
                } else if (__value__ == (385490i32)) {
                    _q_385490 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_385503 = stdgo._internal.math.Math_floor.floor(_q_385490);
                    if ((_q_385490 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385528i32;
                    } else {
                        _gotoNext = 386176i32;
                    };
                } else if (__value__ == (385528i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385542i32;
                    } else {
                        _gotoNext = 385792i32;
                    };
                } else if (__value__ == (385542i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_385547 = __tmp__._0;
                        _y2_385551 = __tmp__._1;
                    };
                    return (_y1_385547 * _y2_385551 : stdgo.GoFloat64);
                    _gotoNext = 385792i32;
                } else if (__value__ == (385792i32)) {
                    _signgam_385792 = (1 : stdgo.GoInt);
                    {
                        _ip_385810 = (_p_385503 : stdgo.GoInt64);
                        if ((_ip_385810 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 385836i32;
                        } else {
                            _gotoNext = 385860i32;
                        };
                    };
                } else if (__value__ == (385836i32)) {
                    _signgam_385792 = (-1 : stdgo.GoInt);
                    _gotoNext = 385860i32;
                } else if (__value__ == (385860i32)) {
                    _z_385860 = (_q_385490 - _p_385503 : stdgo.GoFloat64);
                    if ((_z_385860 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385884i32;
                    } else {
                        _gotoNext = 385918i32;
                    };
                } else if (__value__ == (385884i32)) {
                    _p_385503 = (_p_385503 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_385860 = (_q_385490 - _p_385503 : stdgo.GoFloat64);
                    _gotoNext = 385918i32;
                } else if (__value__ == (385918i32)) {
                    _z_385860 = (_q_385490 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_385860 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_385860 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385948i32;
                    } else {
                        _gotoNext = 385979i32;
                    };
                } else if (__value__ == (385948i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_385792);
                    _gotoNext = 385979i32;
                } else if (__value__ == (385979i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_385490);
                        _sq1_385979 = __tmp__._0;
                        _sq2_385984 = __tmp__._1;
                    };
                    _absz_386005 = stdgo._internal.math.Math_abs.abs(_z_385860);
                    _d_386022 = ((_absz_386005 * _sq1_385979 : stdgo.GoFloat64) * _sq2_385984 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_386022, (0 : stdgo.GoInt))) {
                        _gotoNext = 386061i32;
                    } else {
                        _gotoNext = 386101i32;
                    };
                } else if (__value__ == (386061i32)) {
                    _z_385860 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_386005 : stdgo.GoFloat64) / _sq1_385979 : stdgo.GoFloat64) / _sq2_385984 : stdgo.GoFloat64);
                    _gotoNext = 386123i32;
                } else if (__value__ == (386101i32)) {
                    _gotoNext = 386101i32;
                    _z_385860 = ((3.141592653589793 : stdgo.GoFloat64) / _d_386022 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 386123i32;
                } else if (__value__ == (386123i32)) {
                    return ((_signgam_385792 : stdgo.GoFloat64) * _z_385860 : stdgo.GoFloat64);
                    _gotoNext = 386176i32;
                } else if (__value__ == (386176i32)) {
                    _z_386176 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 386186i32;
                } else if (__value__ == (386186i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386197i32;
                    } else {
                        _gotoNext = 386227i32;
                    };
                } else if (__value__ == (386197i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_386176 = (_z_386176 * _x : stdgo.GoFloat64);
                    _gotoNext = 386186i32;
                } else if (__value__ == (386227i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 386227i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386237i32;
                    } else {
                        _gotoNext = 386303i32;
                    };
                } else if (__value__ == (386237i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386255i32;
                    } else {
                        _gotoNext = 386277i32;
                    };
                } else if (__value__ == (386255i32)) {
                    _gotoNext = 386633i32;
                } else if (__value__ == (386277i32)) {
                    _z_386176 = (_z_386176 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 386227i32;
                } else if (__value__ == (386303i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 386303i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386313i32;
                    } else {
                        _gotoNext = 386379i32;
                    };
                } else if (__value__ == (386313i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386330i32;
                    } else {
                        _gotoNext = 386352i32;
                    };
                } else if (__value__ == (386330i32)) {
                    _gotoNext = 386633i32;
                } else if (__value__ == (386352i32)) {
                    _z_386176 = (_z_386176 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 386303i32;
                } else if (__value__ == (386379i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 386389i32;
                    } else {
                        _gotoNext = 386407i32;
                    };
                } else if (__value__ == (386389i32)) {
                    return _z_386176;
                    _gotoNext = 386407i32;
                } else if (__value__ == (386407i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_385503 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_385490 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_386176 * _p_385503 : stdgo.GoFloat64) / _q_385490 : stdgo.GoFloat64);
                    _gotoNext = 386633i32;
                } else if (__value__ == (386633i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 386651i32;
                    } else {
                        _gotoNext = 386673i32;
                    };
                } else if (__value__ == (386651i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 386673i32;
                } else if (__value__ == (386673i32)) {
                    return (_z_386176 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
