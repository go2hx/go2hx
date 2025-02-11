package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_344414:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_344393:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_343912:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_344431:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_344219:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_344201:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_343956:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_344585:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_344388:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_344269:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_343899:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_343628;
        var _y2_343960:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_343628 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 343719i32;
                } else if (__value__ == (343719i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 343729i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 343791i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 343826i32;
                    } else {
                        _gotoNext = 343899i32;
                    };
                } else if (__value__ == (343729i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 343899i32;
                } else if (__value__ == (343791i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 343899i32;
                } else if (__value__ == (343826i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 343855i32;
                    } else {
                        _gotoNext = 343881i32;
                    };
                } else if (__value__ == (343855i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 343881i32;
                } else if (__value__ == (343881i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 343899i32;
                } else if (__value__ == (343899i32)) {
                    _q_343899 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_343912 = stdgo._internal.math.Math_floor.floor(_q_343899);
                    if ((_q_343899 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 343937i32;
                    } else {
                        _gotoNext = 344585i32;
                    };
                } else if (__value__ == (343937i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 343951i32;
                    } else {
                        _gotoNext = 344201i32;
                    };
                } else if (__value__ == (343951i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_343956 = @:tmpset0 __tmp__._0;
                        _y2_343960 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_343956 * _y2_343960 : stdgo.GoFloat64);
                    _gotoNext = 344201i32;
                } else if (__value__ == (344201i32)) {
                    _signgam_344201 = (1 : stdgo.GoInt);
                    {
                        _ip_344219 = (_p_343912 : stdgo.GoInt64);
                        if ((_ip_344219 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 344245i32;
                        } else {
                            _gotoNext = 344269i32;
                        };
                    };
                } else if (__value__ == (344245i32)) {
                    _signgam_344201 = (-1 : stdgo.GoInt);
                    _gotoNext = 344269i32;
                } else if (__value__ == (344269i32)) {
                    _z_344269 = (_q_343899 - _p_343912 : stdgo.GoFloat64);
                    if ((_z_344269 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 344293i32;
                    } else {
                        _gotoNext = 344327i32;
                    };
                } else if (__value__ == (344293i32)) {
                    _p_343912 = (_p_343912 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_344269 = (_q_343899 - _p_343912 : stdgo.GoFloat64);
                    _gotoNext = 344327i32;
                } else if (__value__ == (344327i32)) {
                    _z_344269 = (_q_343899 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_344269 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_344269 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 344357i32;
                    } else {
                        _gotoNext = 344388i32;
                    };
                } else if (__value__ == (344357i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_344201);
                    _gotoNext = 344388i32;
                } else if (__value__ == (344388i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_343899);
                        _sq1_344388 = @:tmpset0 __tmp__._0;
                        _sq2_344393 = @:tmpset0 __tmp__._1;
                    };
                    _absz_344414 = stdgo._internal.math.Math_abs.abs(_z_344269);
                    _d_344431 = ((_absz_344414 * _sq1_344388 : stdgo.GoFloat64) * _sq2_344393 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_344431, (0 : stdgo.GoInt))) {
                        _gotoNext = 344470i32;
                    } else {
                        _gotoNext = 344510i32;
                    };
                } else if (__value__ == (344470i32)) {
                    _z_344269 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_344414 : stdgo.GoFloat64) / _sq1_344388 : stdgo.GoFloat64) / _sq2_344393 : stdgo.GoFloat64);
                    _gotoNext = 344532i32;
                } else if (__value__ == (344510i32)) {
                    _gotoNext = 344510i32;
                    _z_344269 = ((3.141592653589793 : stdgo.GoFloat64) / _d_344431 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 344532i32;
                } else if (__value__ == (344532i32)) {
                    return ((_signgam_344201 : stdgo.GoFloat64) * _z_344269 : stdgo.GoFloat64);
                    _gotoNext = 344585i32;
                } else if (__value__ == (344585i32)) {
                    _z_344585 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 344595i32;
                } else if (__value__ == (344595i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 344606i32;
                    } else {
                        _gotoNext = 344636i32;
                    };
                } else if (__value__ == (344606i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_344585 = (_z_344585 * _x : stdgo.GoFloat64);
                    _gotoNext = 344595i32;
                } else if (__value__ == (344636i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 344636i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 344646i32;
                    } else {
                        _gotoNext = 344712i32;
                    };
                } else if (__value__ == (344646i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 344664i32;
                    } else {
                        _gotoNext = 344686i32;
                    };
                } else if (__value__ == (344664i32)) {
                    _gotoNext = 345042i32;
                } else if (__value__ == (344686i32)) {
                    _z_344585 = (_z_344585 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 344636i32;
                } else if (__value__ == (344712i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 344712i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 344722i32;
                    } else {
                        _gotoNext = 344788i32;
                    };
                } else if (__value__ == (344722i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 344739i32;
                    } else {
                        _gotoNext = 344761i32;
                    };
                } else if (__value__ == (344739i32)) {
                    _gotoNext = 345042i32;
                } else if (__value__ == (344761i32)) {
                    _z_344585 = (_z_344585 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 344712i32;
                } else if (__value__ == (344788i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 344798i32;
                    } else {
                        _gotoNext = 344816i32;
                    };
                } else if (__value__ == (344798i32)) {
                    return _z_344585;
                    _gotoNext = 344816i32;
                } else if (__value__ == (344816i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_343912 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_343899 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_344585 * _p_343912 : stdgo.GoFloat64) / _q_343899 : stdgo.GoFloat64);
                    _gotoNext = 345042i32;
                } else if (__value__ == (345042i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 345060i32;
                    } else {
                        _gotoNext = 345082i32;
                    };
                } else if (__value__ == (345060i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 345082i32;
                } else if (__value__ == (345082i32)) {
                    return (_z_344585 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
