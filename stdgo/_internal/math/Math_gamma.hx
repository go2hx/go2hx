package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_449403:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_449385:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_449096:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_449083:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_448812;
        var _d_449615:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_449598:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_449572:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_449453:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_449769:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_449577:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_449140:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_449144:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_448812 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 448903i32;
                } else if (__value__ == (448903i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 448913i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 448975i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 449010i32;
                    } else {
                        _gotoNext = 449083i32;
                    };
                } else if (__value__ == (448913i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 449083i32;
                } else if (__value__ == (448975i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 449083i32;
                } else if (__value__ == (449010i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 449039i32;
                    } else {
                        _gotoNext = 449065i32;
                    };
                } else if (__value__ == (449039i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 449065i32;
                } else if (__value__ == (449065i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 449083i32;
                } else if (__value__ == (449083i32)) {
                    _q_449083 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_449096 = stdgo._internal.math.Math_floor.floor(_q_449083);
                    if ((_q_449083 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449121i32;
                    } else {
                        _gotoNext = 449769i32;
                    };
                } else if (__value__ == (449121i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449135i32;
                    } else {
                        _gotoNext = 449385i32;
                    };
                } else if (__value__ == (449135i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_449140 = __tmp__._0;
                        _y2_449144 = __tmp__._1;
                    };
                    return (_y1_449140 * _y2_449144 : stdgo.GoFloat64);
                    _gotoNext = 449385i32;
                } else if (__value__ == (449385i32)) {
                    _signgam_449385 = (1 : stdgo.GoInt);
                    {
                        _ip_449403 = (_p_449096 : stdgo.GoInt64);
                        if ((_ip_449403 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 449429i32;
                        } else {
                            _gotoNext = 449453i32;
                        };
                    };
                } else if (__value__ == (449429i32)) {
                    _signgam_449385 = (-1 : stdgo.GoInt);
                    _gotoNext = 449453i32;
                } else if (__value__ == (449453i32)) {
                    _z_449453 = (_q_449083 - _p_449096 : stdgo.GoFloat64);
                    if ((_z_449453 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449477i32;
                    } else {
                        _gotoNext = 449511i32;
                    };
                } else if (__value__ == (449477i32)) {
                    _p_449096 = (_p_449096 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_449453 = (_q_449083 - _p_449096 : stdgo.GoFloat64);
                    _gotoNext = 449511i32;
                } else if (__value__ == (449511i32)) {
                    _z_449453 = (_q_449083 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_449453 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_449453 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 449541i32;
                    } else {
                        _gotoNext = 449572i32;
                    };
                } else if (__value__ == (449541i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_449385);
                    _gotoNext = 449572i32;
                } else if (__value__ == (449572i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_449083);
                        _sq1_449572 = __tmp__._0;
                        _sq2_449577 = __tmp__._1;
                    };
                    _absz_449598 = stdgo._internal.math.Math_abs.abs(_z_449453);
                    _d_449615 = ((_absz_449598 * _sq1_449572 : stdgo.GoFloat64) * _sq2_449577 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_449615, (0 : stdgo.GoInt))) {
                        _gotoNext = 449654i32;
                    } else {
                        _gotoNext = 449694i32;
                    };
                } else if (__value__ == (449654i32)) {
                    _z_449453 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_449598 : stdgo.GoFloat64) / _sq1_449572 : stdgo.GoFloat64) / _sq2_449577 : stdgo.GoFloat64);
                    _gotoNext = 449716i32;
                } else if (__value__ == (449694i32)) {
                    _z_449453 = ((3.141592653589793 : stdgo.GoFloat64) / _d_449615 : stdgo.GoFloat64);
                    _gotoNext = 449716i32;
                } else if (__value__ == (449716i32)) {
                    return ((_signgam_449385 : stdgo.GoFloat64) * _z_449453 : stdgo.GoFloat64);
                    _gotoNext = 449769i32;
                } else if (__value__ == (449769i32)) {
                    _z_449769 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 449779i32;
                } else if (__value__ == (449779i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449790i32;
                    } else {
                        _gotoNext = 449820i32;
                    };
                } else if (__value__ == (449790i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_449769 = (_z_449769 * _x : stdgo.GoFloat64);
                    _gotoNext = 449779i32;
                } else if (__value__ == (449820i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 449820i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449830i32;
                    } else {
                        _gotoNext = 449896i32;
                    };
                } else if (__value__ == (449830i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449848i32;
                    } else {
                        _gotoNext = 449870i32;
                    };
                } else if (__value__ == (449848i32)) {
                    _gotoNext = 450226i32;
                } else if (__value__ == (449870i32)) {
                    _z_449769 = (_z_449769 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 449820i32;
                } else if (__value__ == (449896i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 449896i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449906i32;
                    } else {
                        _gotoNext = 449972i32;
                    };
                } else if (__value__ == (449906i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 449923i32;
                    } else {
                        _gotoNext = 449945i32;
                    };
                } else if (__value__ == (449923i32)) {
                    _gotoNext = 450226i32;
                } else if (__value__ == (449945i32)) {
                    _z_449769 = (_z_449769 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 449896i32;
                } else if (__value__ == (449972i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 449982i32;
                    } else {
                        _gotoNext = 450000i32;
                    };
                } else if (__value__ == (449982i32)) {
                    return _z_449769;
                    _gotoNext = 450000i32;
                } else if (__value__ == (450000i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_449096 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_449083 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_449769 * _p_449096 : stdgo.GoFloat64) / _q_449083 : stdgo.GoFloat64);
                    _gotoNext = 450226i32;
                } else if (__value__ == (450226i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 450244i32;
                    } else {
                        _gotoNext = 450266i32;
                    };
                } else if (__value__ == (450244i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 450266i32;
                } else if (__value__ == (450266i32)) {
                    return (_z_449769 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
