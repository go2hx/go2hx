package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_8:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_7:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _absz_10:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_0 = (0.5772156649015329f64 : stdgo.GoFloat64);
        var _z_12:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_11:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_3:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_6:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_4:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_9:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 428276i64;
                } else if (__value__ == (428276i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L134"
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 428286i64;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 428348i64;
                    } else if (_x == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 428383i64;
                    } else {
                        _gotoNext = 428456i64;
                    };
                } else if (__value__ == (428286i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L136"
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 428456i64;
                } else if (__value__ == (428348i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L138"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 428456i64;
                } else if (__value__ == (428383i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L140"
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 428412i64;
                    } else {
                        _gotoNext = 428438i64;
                    };
                } else if (__value__ == (428412i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L141"
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 428438i64;
                } else if (__value__ == (428438i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L143"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 428456i64;
                } else if (__value__ == (428456i64)) {
                    _q_1 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2 = stdgo._internal.math.Math_floor.floor(_q_1);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L147"
                    if ((_q_1 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 428494i64;
                    } else {
                        _gotoNext = 429142i64;
                    };
                } else if (__value__ == (428494i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L148"
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 428508i64;
                    } else {
                        _gotoNext = 428758i64;
                    };
                } else if (__value__ == (428508i64)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_3 = @:tmpset0 __tmp__._0;
                        _y2_4 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L150"
                    return (_y1_3 * _y2_4 : stdgo.GoFloat64);
                    _gotoNext = 428758i64;
                } else if (__value__ == (428758i64)) {
                    _signgam_5 = (1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L156"
                    {
                        _ip_6 = (_p_2 : stdgo.GoInt64);
                        if ((_ip_6 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 428802i64;
                        } else {
                            _gotoNext = 428826i64;
                        };
                    };
                } else if (__value__ == (428802i64)) {
                    _signgam_5 = (-1 : stdgo.GoInt);
                    _gotoNext = 428826i64;
                } else if (__value__ == (428826i64)) {
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L160"
                    if ((_z_7 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 428850i64;
                    } else {
                        _gotoNext = 428884i64;
                    };
                } else if (__value__ == (428850i64)) {
                    _p_2 = (_p_2 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    _gotoNext = 428884i64;
                } else if (__value__ == (428884i64)) {
                    _z_7 = (_q_1 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L165"
                    if (_z_7 == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 428914i64;
                    } else {
                        _gotoNext = 428945i64;
                    };
                } else if (__value__ == (428914i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L166"
                    return stdgo._internal.math.Math_inf.inf(_signgam_5);
                    _gotoNext = 428945i64;
                } else if (__value__ == (428945i64)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1);
                        _sq1_8 = @:tmpset0 __tmp__._0;
                        _sq2_9 = @:tmpset0 __tmp__._1;
                    };
                    _absz_10 = stdgo._internal.math.Math_abs.abs(_z_7);
                    _d_11 = ((_absz_10 * _sq1_8 : stdgo.GoFloat64) * _sq2_9 : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L171"
                    if (stdgo._internal.math.Math_isinf.isInf(_d_11, (0 : stdgo.GoInt))) {
                        _gotoNext = 429027i64;
                    } else {
                        _gotoNext = 429067i64;
                    };
                } else if (__value__ == (429027i64)) {
                    _z_7 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_10 : stdgo.GoFloat64) / _sq1_8 : stdgo.GoFloat64) / _sq2_9 : stdgo.GoFloat64);
                    _gotoNext = 429089i64;
                } else if (__value__ == (429067i64)) {
                    _gotoNext = 429067i64;
                    _z_7 = ((3.141592653589793 : stdgo.GoFloat64) / _d_11 : stdgo.GoFloat64);
                    0i64;
                    _gotoNext = 429089i64;
                } else if (__value__ == (429089i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L176"
                    return ((_signgam_5 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64);
                    _gotoNext = 429142i64;
                } else if (__value__ == (429142i64)) {
                    _z_12 = (1 : stdgo.GoFloat64);
                    0i64;
                    _gotoNext = 429152i64;
                } else if (__value__ == (429152i64)) {
                    //"file://#L0"
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 429163i64;
                    } else {
                        _gotoNext = 429193i64;
                    };
                } else if (__value__ == (429163i64)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_12 = (_z_12 * _x : stdgo.GoFloat64);
                    _gotoNext = 429152i64;
                } else if (__value__ == (429193i64)) {
                    0i64;
                    _gotoNext = 429193i64;
                    //"file://#L0"
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 429203i64;
                    } else {
                        _gotoNext = 429269i64;
                    };
                } else if (__value__ == (429203i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L186"
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 429221i64;
                    } else {
                        _gotoNext = 429243i64;
                    };
                } else if (__value__ == (429221i64)) {
                    _gotoNext = 429599i64;
                } else if (__value__ == (429243i64)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 429193i64;
                } else if (__value__ == (429269i64)) {
                    0i64;
                    _gotoNext = 429269i64;
                    //"file://#L0"
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 429279i64;
                    } else {
                        _gotoNext = 429345i64;
                    };
                } else if (__value__ == (429279i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L193"
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 429296i64;
                    } else {
                        _gotoNext = 429318i64;
                    };
                } else if (__value__ == (429296i64)) {
                    _gotoNext = 429599i64;
                } else if (__value__ == (429318i64)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 429269i64;
                } else if (__value__ == (429345i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L200"
                    if (_x == ((2 : stdgo.GoFloat64))) {
                        _gotoNext = 429355i64;
                    } else {
                        _gotoNext = 429373i64;
                    };
                } else if (__value__ == (429355i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L201"
                    return _z_12;
                    _gotoNext = 429373i64;
                } else if (__value__ == (429373i64)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L207"
                    return ((_z_12 * _p_2 : stdgo.GoFloat64) / _q_1 : stdgo.GoFloat64);
                    _gotoNext = 429599i64;
                } else if (__value__ == (429599i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L210"
                    if (_x == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 429617i64;
                    } else {
                        _gotoNext = 429639i64;
                    };
                } else if (__value__ == (429617i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L211"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 429639i64;
                } else if (__value__ == (429639i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L213"
                    return (_z_12 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
