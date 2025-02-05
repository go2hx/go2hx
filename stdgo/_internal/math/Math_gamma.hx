package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_431654:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_431649:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_431160:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_431692:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_431462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_431173:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_431846:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_431530:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_431480:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_430889;
        var _absz_431675:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_431221:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_431217:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_430889 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 430980i32;
                } else if (__value__ == (430980i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 430990i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 431052i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 431087i32;
                    } else {
                        _gotoNext = 431160i32;
                    };
                } else if (__value__ == (430990i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 431160i32;
                } else if (__value__ == (431052i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 431160i32;
                } else if (__value__ == (431087i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 431116i32;
                    } else {
                        _gotoNext = 431142i32;
                    };
                } else if (__value__ == (431116i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 431142i32;
                } else if (__value__ == (431142i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 431160i32;
                } else if (__value__ == (431160i32)) {
                    _q_431160 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_431173 = stdgo._internal.math.Math_floor.floor(_q_431160);
                    if ((_q_431160 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 431198i32;
                    } else {
                        _gotoNext = 431846i32;
                    };
                } else if (__value__ == (431198i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 431212i32;
                    } else {
                        _gotoNext = 431462i32;
                    };
                } else if (__value__ == (431212i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_431217 = @:tmpset0 __tmp__._0;
                        _y2_431221 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_431217 * _y2_431221 : stdgo.GoFloat64);
                    _gotoNext = 431462i32;
                } else if (__value__ == (431462i32)) {
                    _signgam_431462 = (1 : stdgo.GoInt);
                    {
                        _ip_431480 = (_p_431173 : stdgo.GoInt64);
                        if ((_ip_431480 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 431506i32;
                        } else {
                            _gotoNext = 431530i32;
                        };
                    };
                } else if (__value__ == (431506i32)) {
                    _signgam_431462 = (-1 : stdgo.GoInt);
                    _gotoNext = 431530i32;
                } else if (__value__ == (431530i32)) {
                    _z_431530 = (_q_431160 - _p_431173 : stdgo.GoFloat64);
                    if ((_z_431530 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 431554i32;
                    } else {
                        _gotoNext = 431588i32;
                    };
                } else if (__value__ == (431554i32)) {
                    _p_431173 = (_p_431173 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_431530 = (_q_431160 - _p_431173 : stdgo.GoFloat64);
                    _gotoNext = 431588i32;
                } else if (__value__ == (431588i32)) {
                    _z_431530 = (_q_431160 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_431530 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_431530 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 431618i32;
                    } else {
                        _gotoNext = 431649i32;
                    };
                } else if (__value__ == (431618i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_431462);
                    _gotoNext = 431649i32;
                } else if (__value__ == (431649i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_431160);
                        _sq1_431649 = @:tmpset0 __tmp__._0;
                        _sq2_431654 = @:tmpset0 __tmp__._1;
                    };
                    _absz_431675 = stdgo._internal.math.Math_abs.abs(_z_431530);
                    _d_431692 = ((_absz_431675 * _sq1_431649 : stdgo.GoFloat64) * _sq2_431654 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_431692, (0 : stdgo.GoInt))) {
                        _gotoNext = 431731i32;
                    } else {
                        _gotoNext = 431771i32;
                    };
                } else if (__value__ == (431731i32)) {
                    _z_431530 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_431675 : stdgo.GoFloat64) / _sq1_431649 : stdgo.GoFloat64) / _sq2_431654 : stdgo.GoFloat64);
                    _gotoNext = 431793i32;
                } else if (__value__ == (431771i32)) {
                    _gotoNext = 431771i32;
                    _z_431530 = ((3.141592653589793 : stdgo.GoFloat64) / _d_431692 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 431793i32;
                } else if (__value__ == (431793i32)) {
                    return ((_signgam_431462 : stdgo.GoFloat64) * _z_431530 : stdgo.GoFloat64);
                    _gotoNext = 431846i32;
                } else if (__value__ == (431846i32)) {
                    _z_431846 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 431856i32;
                } else if (__value__ == (431856i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 431867i32;
                    } else {
                        _gotoNext = 431897i32;
                    };
                } else if (__value__ == (431867i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_431846 = (_z_431846 * _x : stdgo.GoFloat64);
                    _gotoNext = 431856i32;
                } else if (__value__ == (431897i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 431897i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 431907i32;
                    } else {
                        _gotoNext = 431973i32;
                    };
                } else if (__value__ == (431907i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 431925i32;
                    } else {
                        _gotoNext = 431947i32;
                    };
                } else if (__value__ == (431925i32)) {
                    _gotoNext = 432303i32;
                } else if (__value__ == (431947i32)) {
                    _z_431846 = (_z_431846 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 431897i32;
                } else if (__value__ == (431973i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 431973i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 431983i32;
                    } else {
                        _gotoNext = 432049i32;
                    };
                } else if (__value__ == (431983i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 432000i32;
                    } else {
                        _gotoNext = 432022i32;
                    };
                } else if (__value__ == (432000i32)) {
                    _gotoNext = 432303i32;
                } else if (__value__ == (432022i32)) {
                    _z_431846 = (_z_431846 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 431973i32;
                } else if (__value__ == (432049i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 432059i32;
                    } else {
                        _gotoNext = 432077i32;
                    };
                } else if (__value__ == (432059i32)) {
                    return _z_431846;
                    _gotoNext = 432077i32;
                } else if (__value__ == (432077i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_431173 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_431160 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_431846 * _p_431173 : stdgo.GoFloat64) / _q_431160 : stdgo.GoFloat64);
                    _gotoNext = 432303i32;
                } else if (__value__ == (432303i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 432321i32;
                    } else {
                        _gotoNext = 432343i32;
                    };
                } else if (__value__ == (432321i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 432343i32;
                } else if (__value__ == (432343i32)) {
                    return (_z_431846 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
