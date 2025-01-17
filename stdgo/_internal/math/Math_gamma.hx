package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_392485:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq2_392677:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_392244:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_392183:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_391912;
        var _z_392869:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_392672:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_392503:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _d_392715:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_392698:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_392553:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_392240:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_392196:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_391912 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 392003i32;
                } else if (__value__ == (392003i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 392013i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 392075i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 392110i32;
                    } else {
                        _gotoNext = 392183i32;
                    };
                } else if (__value__ == (392013i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 392183i32;
                } else if (__value__ == (392075i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 392183i32;
                } else if (__value__ == (392110i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 392139i32;
                    } else {
                        _gotoNext = 392165i32;
                    };
                } else if (__value__ == (392139i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 392165i32;
                } else if (__value__ == (392165i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 392183i32;
                } else if (__value__ == (392183i32)) {
                    _q_392183 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_392196 = stdgo._internal.math.Math_floor.floor(_q_392183);
                    if ((_q_392183 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392221i32;
                    } else {
                        _gotoNext = 392869i32;
                    };
                } else if (__value__ == (392221i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392235i32;
                    } else {
                        _gotoNext = 392485i32;
                    };
                } else if (__value__ == (392235i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_392240 = @:tmpset0 __tmp__._0;
                        _y2_392244 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_392240 * _y2_392244 : stdgo.GoFloat64);
                    _gotoNext = 392485i32;
                } else if (__value__ == (392485i32)) {
                    _signgam_392485 = (1 : stdgo.GoInt);
                    {
                        _ip_392503 = (_p_392196 : stdgo.GoInt64);
                        if ((_ip_392503 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 392529i32;
                        } else {
                            _gotoNext = 392553i32;
                        };
                    };
                } else if (__value__ == (392529i32)) {
                    _signgam_392485 = (-1 : stdgo.GoInt);
                    _gotoNext = 392553i32;
                } else if (__value__ == (392553i32)) {
                    _z_392553 = (_q_392183 - _p_392196 : stdgo.GoFloat64);
                    if ((_z_392553 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392577i32;
                    } else {
                        _gotoNext = 392611i32;
                    };
                } else if (__value__ == (392577i32)) {
                    _p_392196 = (_p_392196 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_392553 = (_q_392183 - _p_392196 : stdgo.GoFloat64);
                    _gotoNext = 392611i32;
                } else if (__value__ == (392611i32)) {
                    _z_392553 = (_q_392183 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_392553 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_392553 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 392641i32;
                    } else {
                        _gotoNext = 392672i32;
                    };
                } else if (__value__ == (392641i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_392485);
                    _gotoNext = 392672i32;
                } else if (__value__ == (392672i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_392183);
                        _sq1_392672 = @:tmpset0 __tmp__._0;
                        _sq2_392677 = @:tmpset0 __tmp__._1;
                    };
                    _absz_392698 = stdgo._internal.math.Math_abs.abs(_z_392553);
                    _d_392715 = ((_absz_392698 * _sq1_392672 : stdgo.GoFloat64) * _sq2_392677 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_392715, (0 : stdgo.GoInt))) {
                        _gotoNext = 392754i32;
                    } else {
                        _gotoNext = 392794i32;
                    };
                } else if (__value__ == (392754i32)) {
                    _z_392553 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_392698 : stdgo.GoFloat64) / _sq1_392672 : stdgo.GoFloat64) / _sq2_392677 : stdgo.GoFloat64);
                    _gotoNext = 392816i32;
                } else if (__value__ == (392794i32)) {
                    _gotoNext = 392794i32;
                    _z_392553 = ((3.141592653589793 : stdgo.GoFloat64) / _d_392715 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 392816i32;
                } else if (__value__ == (392816i32)) {
                    return ((_signgam_392485 : stdgo.GoFloat64) * _z_392553 : stdgo.GoFloat64);
                    _gotoNext = 392869i32;
                } else if (__value__ == (392869i32)) {
                    _z_392869 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 392879i32;
                } else if (__value__ == (392879i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392890i32;
                    } else {
                        _gotoNext = 392920i32;
                    };
                } else if (__value__ == (392890i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_392869 = (_z_392869 * _x : stdgo.GoFloat64);
                    _gotoNext = 392879i32;
                } else if (__value__ == (392920i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 392920i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392930i32;
                    } else {
                        _gotoNext = 392996i32;
                    };
                } else if (__value__ == (392930i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392948i32;
                    } else {
                        _gotoNext = 392970i32;
                    };
                } else if (__value__ == (392948i32)) {
                    _gotoNext = 393326i32;
                } else if (__value__ == (392970i32)) {
                    _z_392869 = (_z_392869 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 392920i32;
                } else if (__value__ == (392996i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 392996i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 393006i32;
                    } else {
                        _gotoNext = 393072i32;
                    };
                } else if (__value__ == (393006i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 393023i32;
                    } else {
                        _gotoNext = 393045i32;
                    };
                } else if (__value__ == (393023i32)) {
                    _gotoNext = 393326i32;
                } else if (__value__ == (393045i32)) {
                    _z_392869 = (_z_392869 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 392996i32;
                } else if (__value__ == (393072i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 393082i32;
                    } else {
                        _gotoNext = 393100i32;
                    };
                } else if (__value__ == (393082i32)) {
                    return _z_392869;
                    _gotoNext = 393100i32;
                } else if (__value__ == (393100i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_392196 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_392183 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_392869 * _p_392196 : stdgo.GoFloat64) / _q_392183 : stdgo.GoFloat64);
                    _gotoNext = 393326i32;
                } else if (__value__ == (393326i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 393344i32;
                    } else {
                        _gotoNext = 393366i32;
                    };
                } else if (__value__ == (393344i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 393366i32;
                } else if (__value__ == (393366i32)) {
                    return (_z_392869 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
