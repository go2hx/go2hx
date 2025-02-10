package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_200788:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_200529:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_200197;
        var _z_201154:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_200983:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_200838:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_200770:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_200468:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_201000:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_200962:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_200957:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_200525:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_200481:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_200197 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 200288i32;
                } else if (__value__ == (200288i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 200298i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 200360i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 200395i32;
                    } else {
                        _gotoNext = 200468i32;
                    };
                } else if (__value__ == (200298i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 200468i32;
                } else if (__value__ == (200360i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 200468i32;
                } else if (__value__ == (200395i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 200424i32;
                    } else {
                        _gotoNext = 200450i32;
                    };
                } else if (__value__ == (200424i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 200450i32;
                } else if (__value__ == (200450i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 200468i32;
                } else if (__value__ == (200468i32)) {
                    _q_200468 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_200481 = stdgo._internal.math.Math_floor.floor(_q_200468);
                    if ((_q_200468 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 200506i32;
                    } else {
                        _gotoNext = 201154i32;
                    };
                } else if (__value__ == (200506i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 200520i32;
                    } else {
                        _gotoNext = 200770i32;
                    };
                } else if (__value__ == (200520i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_200525 = @:tmpset0 __tmp__._0;
                        _y2_200529 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_200525 * _y2_200529 : stdgo.GoFloat64);
                    _gotoNext = 200770i32;
                } else if (__value__ == (200770i32)) {
                    _signgam_200770 = (1 : stdgo.GoInt);
                    {
                        _ip_200788 = (_p_200481 : stdgo.GoInt64);
                        if ((_ip_200788 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 200814i32;
                        } else {
                            _gotoNext = 200838i32;
                        };
                    };
                } else if (__value__ == (200814i32)) {
                    _signgam_200770 = (-1 : stdgo.GoInt);
                    _gotoNext = 200838i32;
                } else if (__value__ == (200838i32)) {
                    _z_200838 = (_q_200468 - _p_200481 : stdgo.GoFloat64);
                    if ((_z_200838 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 200862i32;
                    } else {
                        _gotoNext = 200896i32;
                    };
                } else if (__value__ == (200862i32)) {
                    _p_200481 = (_p_200481 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_200838 = (_q_200468 - _p_200481 : stdgo.GoFloat64);
                    _gotoNext = 200896i32;
                } else if (__value__ == (200896i32)) {
                    _z_200838 = (_q_200468 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_200838 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_200838 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 200926i32;
                    } else {
                        _gotoNext = 200957i32;
                    };
                } else if (__value__ == (200926i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_200770);
                    _gotoNext = 200957i32;
                } else if (__value__ == (200957i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_200468);
                        _sq1_200957 = @:tmpset0 __tmp__._0;
                        _sq2_200962 = @:tmpset0 __tmp__._1;
                    };
                    _absz_200983 = stdgo._internal.math.Math_abs.abs(_z_200838);
                    _d_201000 = ((_absz_200983 * _sq1_200957 : stdgo.GoFloat64) * _sq2_200962 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_201000, (0 : stdgo.GoInt))) {
                        _gotoNext = 201039i32;
                    } else {
                        _gotoNext = 201079i32;
                    };
                } else if (__value__ == (201039i32)) {
                    _z_200838 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_200983 : stdgo.GoFloat64) / _sq1_200957 : stdgo.GoFloat64) / _sq2_200962 : stdgo.GoFloat64);
                    _gotoNext = 201101i32;
                } else if (__value__ == (201079i32)) {
                    _gotoNext = 201079i32;
                    _z_200838 = ((3.141592653589793 : stdgo.GoFloat64) / _d_201000 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 201101i32;
                } else if (__value__ == (201101i32)) {
                    return ((_signgam_200770 : stdgo.GoFloat64) * _z_200838 : stdgo.GoFloat64);
                    _gotoNext = 201154i32;
                } else if (__value__ == (201154i32)) {
                    _z_201154 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 201164i32;
                } else if (__value__ == (201164i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 201175i32;
                    } else {
                        _gotoNext = 201205i32;
                    };
                } else if (__value__ == (201175i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_201154 = (_z_201154 * _x : stdgo.GoFloat64);
                    _gotoNext = 201164i32;
                } else if (__value__ == (201205i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 201205i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 201215i32;
                    } else {
                        _gotoNext = 201281i32;
                    };
                } else if (__value__ == (201215i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 201233i32;
                    } else {
                        _gotoNext = 201255i32;
                    };
                } else if (__value__ == (201233i32)) {
                    _gotoNext = 201611i32;
                } else if (__value__ == (201255i32)) {
                    _z_201154 = (_z_201154 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 201205i32;
                } else if (__value__ == (201281i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 201281i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 201291i32;
                    } else {
                        _gotoNext = 201357i32;
                    };
                } else if (__value__ == (201291i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 201308i32;
                    } else {
                        _gotoNext = 201330i32;
                    };
                } else if (__value__ == (201308i32)) {
                    _gotoNext = 201611i32;
                } else if (__value__ == (201330i32)) {
                    _z_201154 = (_z_201154 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 201281i32;
                } else if (__value__ == (201357i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 201367i32;
                    } else {
                        _gotoNext = 201385i32;
                    };
                } else if (__value__ == (201367i32)) {
                    return _z_201154;
                    _gotoNext = 201385i32;
                } else if (__value__ == (201385i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_200481 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_200468 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_201154 * _p_200481 : stdgo.GoFloat64) / _q_200468 : stdgo.GoFloat64);
                    _gotoNext = 201611i32;
                } else if (__value__ == (201611i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 201629i32;
                    } else {
                        _gotoNext = 201651i32;
                    };
                } else if (__value__ == (201629i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 201651i32;
                } else if (__value__ == (201651i32)) {
                    return (_z_201154 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
