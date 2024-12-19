package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_386112:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_385823:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_385871:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_385867:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_386496:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_386299:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_385810:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_385539;
        var _d_386342:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_386325:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_386304:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_386180:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_386130:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_385539 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 385630i32;
                } else if (__value__ == (385630i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 385640i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 385702i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385737i32;
                    } else {
                        _gotoNext = 385810i32;
                    };
                } else if (__value__ == (385640i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 385810i32;
                } else if (__value__ == (385702i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385810i32;
                } else if (__value__ == (385737i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 385766i32;
                    } else {
                        _gotoNext = 385792i32;
                    };
                } else if (__value__ == (385766i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 385792i32;
                } else if (__value__ == (385792i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385810i32;
                } else if (__value__ == (385810i32)) {
                    _q_385810 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_385823 = stdgo._internal.math.Math_floor.floor(_q_385810);
                    if ((_q_385810 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385848i32;
                    } else {
                        _gotoNext = 386496i32;
                    };
                } else if (__value__ == (385848i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385862i32;
                    } else {
                        _gotoNext = 386112i32;
                    };
                } else if (__value__ == (385862i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_385867 = __tmp__._0;
                        _y2_385871 = __tmp__._1;
                    };
                    return (_y1_385867 * _y2_385871 : stdgo.GoFloat64);
                    _gotoNext = 386112i32;
                } else if (__value__ == (386112i32)) {
                    _signgam_386112 = (1 : stdgo.GoInt);
                    {
                        _ip_386130 = (_p_385823 : stdgo.GoInt64);
                        if ((_ip_386130 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 386156i32;
                        } else {
                            _gotoNext = 386180i32;
                        };
                    };
                } else if (__value__ == (386156i32)) {
                    _signgam_386112 = (-1 : stdgo.GoInt);
                    _gotoNext = 386180i32;
                } else if (__value__ == (386180i32)) {
                    _z_386180 = (_q_385810 - _p_385823 : stdgo.GoFloat64);
                    if ((_z_386180 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386204i32;
                    } else {
                        _gotoNext = 386238i32;
                    };
                } else if (__value__ == (386204i32)) {
                    _p_385823 = (_p_385823 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_386180 = (_q_385810 - _p_385823 : stdgo.GoFloat64);
                    _gotoNext = 386238i32;
                } else if (__value__ == (386238i32)) {
                    _z_386180 = (_q_385810 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_386180 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_386180 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 386268i32;
                    } else {
                        _gotoNext = 386299i32;
                    };
                } else if (__value__ == (386268i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_386112);
                    _gotoNext = 386299i32;
                } else if (__value__ == (386299i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_385810);
                        _sq1_386299 = __tmp__._0;
                        _sq2_386304 = __tmp__._1;
                    };
                    _absz_386325 = stdgo._internal.math.Math_abs.abs(_z_386180);
                    _d_386342 = ((_absz_386325 * _sq1_386299 : stdgo.GoFloat64) * _sq2_386304 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_386342, (0 : stdgo.GoInt))) {
                        _gotoNext = 386381i32;
                    } else {
                        _gotoNext = 386421i32;
                    };
                } else if (__value__ == (386381i32)) {
                    _z_386180 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_386325 : stdgo.GoFloat64) / _sq1_386299 : stdgo.GoFloat64) / _sq2_386304 : stdgo.GoFloat64);
                    _gotoNext = 386443i32;
                } else if (__value__ == (386421i32)) {
                    _gotoNext = 386421i32;
                    _z_386180 = ((3.141592653589793 : stdgo.GoFloat64) / _d_386342 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 386443i32;
                } else if (__value__ == (386443i32)) {
                    return ((_signgam_386112 : stdgo.GoFloat64) * _z_386180 : stdgo.GoFloat64);
                    _gotoNext = 386496i32;
                } else if (__value__ == (386496i32)) {
                    _z_386496 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 386506i32;
                } else if (__value__ == (386506i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386517i32;
                    } else {
                        _gotoNext = 386547i32;
                    };
                } else if (__value__ == (386517i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_386496 = (_z_386496 * _x : stdgo.GoFloat64);
                    _gotoNext = 386506i32;
                } else if (__value__ == (386547i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 386547i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386557i32;
                    } else {
                        _gotoNext = 386623i32;
                    };
                } else if (__value__ == (386557i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386575i32;
                    } else {
                        _gotoNext = 386597i32;
                    };
                } else if (__value__ == (386575i32)) {
                    _gotoNext = 386953i32;
                } else if (__value__ == (386597i32)) {
                    _z_386496 = (_z_386496 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 386547i32;
                } else if (__value__ == (386623i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 386623i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386633i32;
                    } else {
                        _gotoNext = 386699i32;
                    };
                } else if (__value__ == (386633i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386650i32;
                    } else {
                        _gotoNext = 386672i32;
                    };
                } else if (__value__ == (386650i32)) {
                    _gotoNext = 386953i32;
                } else if (__value__ == (386672i32)) {
                    _z_386496 = (_z_386496 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 386623i32;
                } else if (__value__ == (386699i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 386709i32;
                    } else {
                        _gotoNext = 386727i32;
                    };
                } else if (__value__ == (386709i32)) {
                    return _z_386496;
                    _gotoNext = 386727i32;
                } else if (__value__ == (386727i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_385823 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_385810 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_386496 * _p_385823 : stdgo.GoFloat64) / _q_385810 : stdgo.GoFloat64);
                    _gotoNext = 386953i32;
                } else if (__value__ == (386953i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 386971i32;
                    } else {
                        _gotoNext = 386993i32;
                    };
                } else if (__value__ == (386971i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 386993i32;
                } else if (__value__ == (386993i32)) {
                    return (_z_386496 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
