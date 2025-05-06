package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var euler_0 = (0.5772156649015329f64 : stdgo.GoFloat64);
        var _z_12:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_11:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_7:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_3:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_10:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_9:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_6:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_4:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_8:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 417204i64;
                } else if (__value__ == (417204i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L134"
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 417214i64;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 417276i64;
                    } else if (_x == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 417311i64;
                    } else {
                        _gotoNext = 417384i64;
                    };
                } else if (__value__ == (417214i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L136"
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 417384i64;
                } else if (__value__ == (417276i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L138"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 417384i64;
                } else if (__value__ == (417311i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L140"
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 417340i64;
                    } else {
                        _gotoNext = 417366i64;
                    };
                } else if (__value__ == (417340i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L141"
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 417366i64;
                } else if (__value__ == (417366i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L143"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 417384i64;
                } else if (__value__ == (417384i64)) {
                    _q_1 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_2 = stdgo._internal.math.Math_floor.floor(_q_1);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L147"
                    if ((_q_1 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 417422i64;
                    } else {
                        _gotoNext = 418070i64;
                    };
                } else if (__value__ == (417422i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L148"
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 417436i64;
                    } else {
                        _gotoNext = 417686i64;
                    };
                } else if (__value__ == (417436i64)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_3 = @:tmpset0 __tmp__._0;
                        _y2_4 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L150"
                    return (_y1_3 * _y2_4 : stdgo.GoFloat64);
                    _gotoNext = 417686i64;
                } else if (__value__ == (417686i64)) {
                    _signgam_5 = (1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L156"
                    {
                        _ip_6 = (_p_2 : stdgo.GoInt64);
                        if ((_ip_6 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 417730i64;
                        } else {
                            _gotoNext = 417754i64;
                        };
                    };
                } else if (__value__ == (417730i64)) {
                    _signgam_5 = (-1 : stdgo.GoInt);
                    _gotoNext = 417754i64;
                } else if (__value__ == (417754i64)) {
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L160"
                    if ((_z_7 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 417778i64;
                    } else {
                        _gotoNext = 417812i64;
                    };
                } else if (__value__ == (417778i64)) {
                    _p_2 = (_p_2 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_7 = (_q_1 - _p_2 : stdgo.GoFloat64);
                    _gotoNext = 417812i64;
                } else if (__value__ == (417812i64)) {
                    _z_7 = (_q_1 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L165"
                    if (_z_7 == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 417842i64;
                    } else {
                        _gotoNext = 417873i64;
                    };
                } else if (__value__ == (417842i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L166"
                    return stdgo._internal.math.Math_inf.inf(_signgam_5);
                    _gotoNext = 417873i64;
                } else if (__value__ == (417873i64)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_1);
                        _sq1_8 = @:tmpset0 __tmp__._0;
                        _sq2_9 = @:tmpset0 __tmp__._1;
                    };
                    _absz_10 = stdgo._internal.math.Math_abs.abs(_z_7);
                    _d_11 = ((_absz_10 * _sq1_8 : stdgo.GoFloat64) * _sq2_9 : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L171"
                    if (stdgo._internal.math.Math_isinf.isInf(_d_11, (0 : stdgo.GoInt))) {
                        _gotoNext = 417955i64;
                    } else {
                        _gotoNext = 417995i64;
                    };
                } else if (__value__ == (417955i64)) {
                    _z_7 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_10 : stdgo.GoFloat64) / _sq1_8 : stdgo.GoFloat64) / _sq2_9 : stdgo.GoFloat64);
                    _gotoNext = 418017i64;
                } else if (__value__ == (417995i64)) {
                    _gotoNext = 417995i64;
                    _z_7 = ((3.141592653589793 : stdgo.GoFloat64) / _d_11 : stdgo.GoFloat64);
                    0i64;
                    _gotoNext = 418017i64;
                } else if (__value__ == (418017i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L176"
                    return ((_signgam_5 : stdgo.GoFloat64) * _z_7 : stdgo.GoFloat64);
                    _gotoNext = 418070i64;
                } else if (__value__ == (418070i64)) {
                    _z_12 = (1 : stdgo.GoFloat64);
                    0i64;
                    _gotoNext = 418080i64;
                } else if (__value__ == (418080i64)) {
                    //"file://#L0"
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418091i64;
                    } else {
                        _gotoNext = 418121i64;
                    };
                } else if (__value__ == (418091i64)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_12 = (_z_12 * _x : stdgo.GoFloat64);
                    _gotoNext = 418080i64;
                } else if (__value__ == (418121i64)) {
                    0i64;
                    _gotoNext = 418121i64;
                    //"file://#L0"
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418131i64;
                    } else {
                        _gotoNext = 418197i64;
                    };
                } else if (__value__ == (418131i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L186"
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418149i64;
                    } else {
                        _gotoNext = 418171i64;
                    };
                } else if (__value__ == (418149i64)) {
                    _gotoNext = 418527i64;
                } else if (__value__ == (418171i64)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 418121i64;
                } else if (__value__ == (418197i64)) {
                    0i64;
                    _gotoNext = 418197i64;
                    //"file://#L0"
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418207i64;
                    } else {
                        _gotoNext = 418273i64;
                    };
                } else if (__value__ == (418207i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L193"
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418224i64;
                    } else {
                        _gotoNext = 418246i64;
                    };
                } else if (__value__ == (418224i64)) {
                    _gotoNext = 418527i64;
                } else if (__value__ == (418246i64)) {
                    _z_12 = (_z_12 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 418197i64;
                } else if (__value__ == (418273i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L200"
                    if (_x == ((2 : stdgo.GoFloat64))) {
                        _gotoNext = 418283i64;
                    } else {
                        _gotoNext = 418301i64;
                    };
                } else if (__value__ == (418283i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L201"
                    return _z_12;
                    _gotoNext = 418301i64;
                } else if (__value__ == (418301i64)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_2 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_1 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L207"
                    return ((_z_12 * _p_2 : stdgo.GoFloat64) / _q_1 : stdgo.GoFloat64);
                    _gotoNext = 418527i64;
                } else if (__value__ == (418527i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L210"
                    if (_x == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 418545i64;
                    } else {
                        _gotoNext = 418567i64;
                    };
                } else if (__value__ == (418545i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L211"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 418567i64;
                } else if (__value__ == (418567i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/gamma.go#L213"
                    return (_z_12 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
