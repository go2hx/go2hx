package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_437890:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_437745:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_437104;
        var _signgam_437677:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_437432:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_437375:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_437907:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_437869:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_437695:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _sq1_437864:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_437436:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_437388:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_438061:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_437104 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 437195i32;
                } else if (__value__ == (437195i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 437205i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 437267i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 437302i32;
                    } else {
                        _gotoNext = 437375i32;
                    };
                } else if (__value__ == (437205i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 437375i32;
                } else if (__value__ == (437267i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 437375i32;
                } else if (__value__ == (437302i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 437331i32;
                    } else {
                        _gotoNext = 437357i32;
                    };
                } else if (__value__ == (437331i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 437357i32;
                } else if (__value__ == (437357i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 437375i32;
                } else if (__value__ == (437375i32)) {
                    _q_437375 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_437388 = stdgo._internal.math.Math_floor.floor(_q_437375);
                    if ((_q_437375 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 437413i32;
                    } else {
                        _gotoNext = 438061i32;
                    };
                } else if (__value__ == (437413i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 437427i32;
                    } else {
                        _gotoNext = 437677i32;
                    };
                } else if (__value__ == (437427i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_437432 = @:tmpset0 __tmp__._0;
                        _y2_437436 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_437432 * _y2_437436 : stdgo.GoFloat64);
                    _gotoNext = 437677i32;
                } else if (__value__ == (437677i32)) {
                    _signgam_437677 = (1 : stdgo.GoInt);
                    {
                        _ip_437695 = (_p_437388 : stdgo.GoInt64);
                        if ((_ip_437695 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 437721i32;
                        } else {
                            _gotoNext = 437745i32;
                        };
                    };
                } else if (__value__ == (437721i32)) {
                    _signgam_437677 = (-1 : stdgo.GoInt);
                    _gotoNext = 437745i32;
                } else if (__value__ == (437745i32)) {
                    _z_437745 = (_q_437375 - _p_437388 : stdgo.GoFloat64);
                    if ((_z_437745 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 437769i32;
                    } else {
                        _gotoNext = 437803i32;
                    };
                } else if (__value__ == (437769i32)) {
                    _p_437388 = (_p_437388 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_437745 = (_q_437375 - _p_437388 : stdgo.GoFloat64);
                    _gotoNext = 437803i32;
                } else if (__value__ == (437803i32)) {
                    _z_437745 = (_q_437375 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_437745 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_437745 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 437833i32;
                    } else {
                        _gotoNext = 437864i32;
                    };
                } else if (__value__ == (437833i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_437677);
                    _gotoNext = 437864i32;
                } else if (__value__ == (437864i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_437375);
                        _sq1_437864 = @:tmpset0 __tmp__._0;
                        _sq2_437869 = @:tmpset0 __tmp__._1;
                    };
                    _absz_437890 = stdgo._internal.math.Math_abs.abs(_z_437745);
                    _d_437907 = ((_absz_437890 * _sq1_437864 : stdgo.GoFloat64) * _sq2_437869 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_437907, (0 : stdgo.GoInt))) {
                        _gotoNext = 437946i32;
                    } else {
                        _gotoNext = 437986i32;
                    };
                } else if (__value__ == (437946i32)) {
                    _z_437745 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_437890 : stdgo.GoFloat64) / _sq1_437864 : stdgo.GoFloat64) / _sq2_437869 : stdgo.GoFloat64);
                    _gotoNext = 438008i32;
                } else if (__value__ == (437986i32)) {
                    _gotoNext = 437986i32;
                    _z_437745 = ((3.141592653589793 : stdgo.GoFloat64) / _d_437907 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 438008i32;
                } else if (__value__ == (438008i32)) {
                    return ((_signgam_437677 : stdgo.GoFloat64) * _z_437745 : stdgo.GoFloat64);
                    _gotoNext = 438061i32;
                } else if (__value__ == (438061i32)) {
                    _z_438061 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 438071i32;
                } else if (__value__ == (438071i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438082i32;
                    } else {
                        _gotoNext = 438112i32;
                    };
                } else if (__value__ == (438082i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_438061 = (_z_438061 * _x : stdgo.GoFloat64);
                    _gotoNext = 438071i32;
                } else if (__value__ == (438112i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 438112i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438122i32;
                    } else {
                        _gotoNext = 438188i32;
                    };
                } else if (__value__ == (438122i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438140i32;
                    } else {
                        _gotoNext = 438162i32;
                    };
                } else if (__value__ == (438140i32)) {
                    _gotoNext = 438518i32;
                } else if (__value__ == (438162i32)) {
                    _z_438061 = (_z_438061 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 438112i32;
                } else if (__value__ == (438188i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 438188i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438198i32;
                    } else {
                        _gotoNext = 438264i32;
                    };
                } else if (__value__ == (438198i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 438215i32;
                    } else {
                        _gotoNext = 438237i32;
                    };
                } else if (__value__ == (438215i32)) {
                    _gotoNext = 438518i32;
                } else if (__value__ == (438237i32)) {
                    _z_438061 = (_z_438061 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 438188i32;
                } else if (__value__ == (438264i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 438274i32;
                    } else {
                        _gotoNext = 438292i32;
                    };
                } else if (__value__ == (438274i32)) {
                    return _z_438061;
                    _gotoNext = 438292i32;
                } else if (__value__ == (438292i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_437388 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_437375 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_438061 * _p_437388 : stdgo.GoFloat64) / _q_437375 : stdgo.GoFloat64);
                    _gotoNext = 438518i32;
                } else if (__value__ == (438518i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 438536i32;
                    } else {
                        _gotoNext = 438558i32;
                    };
                } else if (__value__ == (438536i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 438558i32;
                } else if (__value__ == (438558i32)) {
                    return (_z_438061 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
