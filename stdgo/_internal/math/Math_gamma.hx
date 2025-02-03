package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_372851:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_372680:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_372222:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_372659:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_372535:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_371894;
        var _ip_372485:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_372467:stdgo.GoInt = (0 : stdgo.GoInt);
        var _d_372697:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_372654:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_372226:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_372178:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_372165:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_371894 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 371985i32;
                } else if (__value__ == (371985i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 371995i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 372057i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 372092i32;
                    } else {
                        _gotoNext = 372165i32;
                    };
                } else if (__value__ == (371995i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 372165i32;
                } else if (__value__ == (372057i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 372165i32;
                } else if (__value__ == (372092i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 372121i32;
                    } else {
                        _gotoNext = 372147i32;
                    };
                } else if (__value__ == (372121i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 372147i32;
                } else if (__value__ == (372147i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 372165i32;
                } else if (__value__ == (372165i32)) {
                    _q_372165 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_372178 = stdgo._internal.math.Math_floor.floor(_q_372165);
                    if ((_q_372165 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372203i32;
                    } else {
                        _gotoNext = 372851i32;
                    };
                } else if (__value__ == (372203i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372217i32;
                    } else {
                        _gotoNext = 372467i32;
                    };
                } else if (__value__ == (372217i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_372222 = @:tmpset0 __tmp__._0;
                        _y2_372226 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_372222 * _y2_372226 : stdgo.GoFloat64);
                    _gotoNext = 372467i32;
                } else if (__value__ == (372467i32)) {
                    _signgam_372467 = (1 : stdgo.GoInt);
                    {
                        _ip_372485 = (_p_372178 : stdgo.GoInt64);
                        if ((_ip_372485 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 372511i32;
                        } else {
                            _gotoNext = 372535i32;
                        };
                    };
                } else if (__value__ == (372511i32)) {
                    _signgam_372467 = (-1 : stdgo.GoInt);
                    _gotoNext = 372535i32;
                } else if (__value__ == (372535i32)) {
                    _z_372535 = (_q_372165 - _p_372178 : stdgo.GoFloat64);
                    if ((_z_372535 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372559i32;
                    } else {
                        _gotoNext = 372593i32;
                    };
                } else if (__value__ == (372559i32)) {
                    _p_372178 = (_p_372178 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_372535 = (_q_372165 - _p_372178 : stdgo.GoFloat64);
                    _gotoNext = 372593i32;
                } else if (__value__ == (372593i32)) {
                    _z_372535 = (_q_372165 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_372535 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_372535 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 372623i32;
                    } else {
                        _gotoNext = 372654i32;
                    };
                } else if (__value__ == (372623i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_372467);
                    _gotoNext = 372654i32;
                } else if (__value__ == (372654i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_372165);
                        _sq1_372654 = @:tmpset0 __tmp__._0;
                        _sq2_372659 = @:tmpset0 __tmp__._1;
                    };
                    _absz_372680 = stdgo._internal.math.Math_abs.abs(_z_372535);
                    _d_372697 = ((_absz_372680 * _sq1_372654 : stdgo.GoFloat64) * _sq2_372659 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_372697, (0 : stdgo.GoInt))) {
                        _gotoNext = 372736i32;
                    } else {
                        _gotoNext = 372776i32;
                    };
                } else if (__value__ == (372736i32)) {
                    _z_372535 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_372680 : stdgo.GoFloat64) / _sq1_372654 : stdgo.GoFloat64) / _sq2_372659 : stdgo.GoFloat64);
                    _gotoNext = 372798i32;
                } else if (__value__ == (372776i32)) {
                    _gotoNext = 372776i32;
                    _z_372535 = ((3.141592653589793 : stdgo.GoFloat64) / _d_372697 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 372798i32;
                } else if (__value__ == (372798i32)) {
                    return ((_signgam_372467 : stdgo.GoFloat64) * _z_372535 : stdgo.GoFloat64);
                    _gotoNext = 372851i32;
                } else if (__value__ == (372851i32)) {
                    _z_372851 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 372861i32;
                } else if (__value__ == (372861i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372872i32;
                    } else {
                        _gotoNext = 372902i32;
                    };
                } else if (__value__ == (372872i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_372851 = (_z_372851 * _x : stdgo.GoFloat64);
                    _gotoNext = 372861i32;
                } else if (__value__ == (372902i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 372902i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372912i32;
                    } else {
                        _gotoNext = 372978i32;
                    };
                } else if (__value__ == (372912i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372930i32;
                    } else {
                        _gotoNext = 372952i32;
                    };
                } else if (__value__ == (372930i32)) {
                    _gotoNext = 373308i32;
                } else if (__value__ == (372952i32)) {
                    _z_372851 = (_z_372851 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 372902i32;
                } else if (__value__ == (372978i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 372978i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 372988i32;
                    } else {
                        _gotoNext = 373054i32;
                    };
                } else if (__value__ == (372988i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 373005i32;
                    } else {
                        _gotoNext = 373027i32;
                    };
                } else if (__value__ == (373005i32)) {
                    _gotoNext = 373308i32;
                } else if (__value__ == (373027i32)) {
                    _z_372851 = (_z_372851 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 372978i32;
                } else if (__value__ == (373054i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 373064i32;
                    } else {
                        _gotoNext = 373082i32;
                    };
                } else if (__value__ == (373064i32)) {
                    return _z_372851;
                    _gotoNext = 373082i32;
                } else if (__value__ == (373082i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_372178 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_372165 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_372851 * _p_372178 : stdgo.GoFloat64) / _q_372165 : stdgo.GoFloat64);
                    _gotoNext = 373308i32;
                } else if (__value__ == (373308i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 373326i32;
                    } else {
                        _gotoNext = 373348i32;
                    };
                } else if (__value__ == (373326i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 373348i32;
                } else if (__value__ == (373348i32)) {
                    return (_z_372851 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
