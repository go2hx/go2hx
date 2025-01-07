package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _d_458237:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_458194:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_457766:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_458199:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_457718:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_457705:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_458025:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_458007:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_458391:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_458220:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_458075:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_457762:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_457434;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_457434 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 457525i32;
                } else if (__value__ == (457525i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 457535i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 457597i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 457632i32;
                    } else {
                        _gotoNext = 457705i32;
                    };
                } else if (__value__ == (457535i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 457705i32;
                } else if (__value__ == (457597i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 457705i32;
                } else if (__value__ == (457632i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 457661i32;
                    } else {
                        _gotoNext = 457687i32;
                    };
                } else if (__value__ == (457661i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 457687i32;
                } else if (__value__ == (457687i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 457705i32;
                } else if (__value__ == (457705i32)) {
                    _q_457705 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_457718 = stdgo._internal.math.Math_floor.floor(_q_457705);
                    if ((_q_457705 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457743i32;
                    } else {
                        _gotoNext = 458391i32;
                    };
                } else if (__value__ == (457743i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457757i32;
                    } else {
                        _gotoNext = 458007i32;
                    };
                } else if (__value__ == (457757i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_457762 = __tmp__._0;
                        _y2_457766 = __tmp__._1;
                    };
                    return (_y1_457762 * _y2_457766 : stdgo.GoFloat64);
                    _gotoNext = 458007i32;
                } else if (__value__ == (458007i32)) {
                    _signgam_458007 = (1 : stdgo.GoInt);
                    {
                        _ip_458025 = (_p_457718 : stdgo.GoInt64);
                        if ((_ip_458025 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 458051i32;
                        } else {
                            _gotoNext = 458075i32;
                        };
                    };
                } else if (__value__ == (458051i32)) {
                    _signgam_458007 = (-1 : stdgo.GoInt);
                    _gotoNext = 458075i32;
                } else if (__value__ == (458075i32)) {
                    _z_458075 = (_q_457705 - _p_457718 : stdgo.GoFloat64);
                    if ((_z_458075 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458099i32;
                    } else {
                        _gotoNext = 458133i32;
                    };
                } else if (__value__ == (458099i32)) {
                    _p_457718 = (_p_457718 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_458075 = (_q_457705 - _p_457718 : stdgo.GoFloat64);
                    _gotoNext = 458133i32;
                } else if (__value__ == (458133i32)) {
                    _z_458075 = (_q_457705 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_458075 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_458075 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 458163i32;
                    } else {
                        _gotoNext = 458194i32;
                    };
                } else if (__value__ == (458163i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_458007);
                    _gotoNext = 458194i32;
                } else if (__value__ == (458194i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_457705);
                        _sq1_458194 = __tmp__._0;
                        _sq2_458199 = __tmp__._1;
                    };
                    _absz_458220 = stdgo._internal.math.Math_abs.abs(_z_458075);
                    _d_458237 = ((_absz_458220 * _sq1_458194 : stdgo.GoFloat64) * _sq2_458199 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_458237, (0 : stdgo.GoInt))) {
                        _gotoNext = 458276i32;
                    } else {
                        _gotoNext = 458316i32;
                    };
                } else if (__value__ == (458276i32)) {
                    _z_458075 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_458220 : stdgo.GoFloat64) / _sq1_458194 : stdgo.GoFloat64) / _sq2_458199 : stdgo.GoFloat64);
                    _gotoNext = 458338i32;
                } else if (__value__ == (458316i32)) {
                    _gotoNext = 458316i32;
                    _z_458075 = ((3.141592653589793 : stdgo.GoFloat64) / _d_458237 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 458338i32;
                } else if (__value__ == (458338i32)) {
                    return ((_signgam_458007 : stdgo.GoFloat64) * _z_458075 : stdgo.GoFloat64);
                    _gotoNext = 458391i32;
                } else if (__value__ == (458391i32)) {
                    _z_458391 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 458401i32;
                } else if (__value__ == (458401i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458412i32;
                    } else {
                        _gotoNext = 458442i32;
                    };
                } else if (__value__ == (458412i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_458391 = (_z_458391 * _x : stdgo.GoFloat64);
                    _gotoNext = 458401i32;
                } else if (__value__ == (458442i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 458442i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458452i32;
                    } else {
                        _gotoNext = 458518i32;
                    };
                } else if (__value__ == (458452i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458470i32;
                    } else {
                        _gotoNext = 458492i32;
                    };
                } else if (__value__ == (458470i32)) {
                    _gotoNext = 458848i32;
                } else if (__value__ == (458492i32)) {
                    _z_458391 = (_z_458391 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 458442i32;
                } else if (__value__ == (458518i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 458518i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458528i32;
                    } else {
                        _gotoNext = 458594i32;
                    };
                } else if (__value__ == (458528i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458545i32;
                    } else {
                        _gotoNext = 458567i32;
                    };
                } else if (__value__ == (458545i32)) {
                    _gotoNext = 458848i32;
                } else if (__value__ == (458567i32)) {
                    _z_458391 = (_z_458391 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 458518i32;
                } else if (__value__ == (458594i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 458604i32;
                    } else {
                        _gotoNext = 458622i32;
                    };
                } else if (__value__ == (458604i32)) {
                    return _z_458391;
                    _gotoNext = 458622i32;
                } else if (__value__ == (458622i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_457718 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_457705 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_458391 * _p_457718 : stdgo.GoFloat64) / _q_457705 : stdgo.GoFloat64);
                    _gotoNext = 458848i32;
                } else if (__value__ == (458848i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 458866i32;
                    } else {
                        _gotoNext = 458888i32;
                    };
                } else if (__value__ == (458866i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 458888i32;
                } else if (__value__ == (458888i32)) {
                    return (_z_458391 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
