package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_462833:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_462531:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_462260;
        var _z_463217:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_463063:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_463046:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_463025:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_462851:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_462592:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_462544:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_462901:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_462588:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_463020:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_462260 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 462351i32;
                } else if (__value__ == (462351i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 462361i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 462423i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462458i32;
                    } else {
                        _gotoNext = 462531i32;
                    };
                } else if (__value__ == (462361i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 462531i32;
                } else if (__value__ == (462423i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 462531i32;
                } else if (__value__ == (462458i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 462487i32;
                    } else {
                        _gotoNext = 462513i32;
                    };
                } else if (__value__ == (462487i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 462513i32;
                } else if (__value__ == (462513i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 462531i32;
                } else if (__value__ == (462531i32)) {
                    _q_462531 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_462544 = stdgo._internal.math.Math_floor.floor(_q_462531);
                    if ((_q_462531 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462569i32;
                    } else {
                        _gotoNext = 463217i32;
                    };
                } else if (__value__ == (462569i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462583i32;
                    } else {
                        _gotoNext = 462833i32;
                    };
                } else if (__value__ == (462583i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_462588 = @:tmpset0 __tmp__._0;
                        _y2_462592 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_462588 * _y2_462592 : stdgo.GoFloat64);
                    _gotoNext = 462833i32;
                } else if (__value__ == (462833i32)) {
                    _signgam_462833 = (1 : stdgo.GoInt);
                    {
                        _ip_462851 = (_p_462544 : stdgo.GoInt64);
                        if ((_ip_462851 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 462877i32;
                        } else {
                            _gotoNext = 462901i32;
                        };
                    };
                } else if (__value__ == (462877i32)) {
                    _signgam_462833 = (-1 : stdgo.GoInt);
                    _gotoNext = 462901i32;
                } else if (__value__ == (462901i32)) {
                    _z_462901 = (_q_462531 - _p_462544 : stdgo.GoFloat64);
                    if ((_z_462901 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462925i32;
                    } else {
                        _gotoNext = 462959i32;
                    };
                } else if (__value__ == (462925i32)) {
                    _p_462544 = (_p_462544 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_462901 = (_q_462531 - _p_462544 : stdgo.GoFloat64);
                    _gotoNext = 462959i32;
                } else if (__value__ == (462959i32)) {
                    _z_462901 = (_q_462531 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_462901 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_462901 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462989i32;
                    } else {
                        _gotoNext = 463020i32;
                    };
                } else if (__value__ == (462989i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_462833);
                    _gotoNext = 463020i32;
                } else if (__value__ == (463020i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_462531);
                        _sq1_463020 = @:tmpset0 __tmp__._0;
                        _sq2_463025 = @:tmpset0 __tmp__._1;
                    };
                    _absz_463046 = stdgo._internal.math.Math_abs.abs(_z_462901);
                    _d_463063 = ((_absz_463046 * _sq1_463020 : stdgo.GoFloat64) * _sq2_463025 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_463063, (0 : stdgo.GoInt))) {
                        _gotoNext = 463102i32;
                    } else {
                        _gotoNext = 463142i32;
                    };
                } else if (__value__ == (463102i32)) {
                    _z_462901 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_463046 : stdgo.GoFloat64) / _sq1_463020 : stdgo.GoFloat64) / _sq2_463025 : stdgo.GoFloat64);
                    _gotoNext = 463164i32;
                } else if (__value__ == (463142i32)) {
                    _gotoNext = 463142i32;
                    _z_462901 = ((3.141592653589793 : stdgo.GoFloat64) / _d_463063 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 463164i32;
                } else if (__value__ == (463164i32)) {
                    return ((_signgam_462833 : stdgo.GoFloat64) * _z_462901 : stdgo.GoFloat64);
                    _gotoNext = 463217i32;
                } else if (__value__ == (463217i32)) {
                    _z_463217 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 463227i32;
                } else if (__value__ == (463227i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463238i32;
                    } else {
                        _gotoNext = 463268i32;
                    };
                } else if (__value__ == (463238i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_463217 = (_z_463217 * _x : stdgo.GoFloat64);
                    _gotoNext = 463227i32;
                } else if (__value__ == (463268i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 463268i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463278i32;
                    } else {
                        _gotoNext = 463344i32;
                    };
                } else if (__value__ == (463278i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463296i32;
                    } else {
                        _gotoNext = 463318i32;
                    };
                } else if (__value__ == (463296i32)) {
                    _gotoNext = 463674i32;
                } else if (__value__ == (463318i32)) {
                    _z_463217 = (_z_463217 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 463268i32;
                } else if (__value__ == (463344i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 463344i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463354i32;
                    } else {
                        _gotoNext = 463420i32;
                    };
                } else if (__value__ == (463354i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463371i32;
                    } else {
                        _gotoNext = 463393i32;
                    };
                } else if (__value__ == (463371i32)) {
                    _gotoNext = 463674i32;
                } else if (__value__ == (463393i32)) {
                    _z_463217 = (_z_463217 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 463344i32;
                } else if (__value__ == (463420i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 463430i32;
                    } else {
                        _gotoNext = 463448i32;
                    };
                } else if (__value__ == (463430i32)) {
                    return _z_463217;
                    _gotoNext = 463448i32;
                } else if (__value__ == (463448i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_462544 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_462531 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_463217 * _p_462544 : stdgo.GoFloat64) / _q_462531 : stdgo.GoFloat64);
                    _gotoNext = 463674i32;
                } else if (__value__ == (463674i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 463692i32;
                    } else {
                        _gotoNext = 463714i32;
                    };
                } else if (__value__ == (463692i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 463714i32;
                } else if (__value__ == (463714i32)) {
                    return (_z_463217 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
