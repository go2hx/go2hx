package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_554829:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_554642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_554353:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_554397:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_554340:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_554069;
        var _z_555026:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_554872:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_554855:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_554710:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_554660:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_554401:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_554834:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_554069 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 554160i32;
                } else if (__value__ == (554160i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 554170i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 554232i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 554267i32;
                    } else {
                        _gotoNext = 554340i32;
                    };
                } else if (__value__ == (554170i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 554340i32;
                } else if (__value__ == (554232i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 554340i32;
                } else if (__value__ == (554267i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 554296i32;
                    } else {
                        _gotoNext = 554322i32;
                    };
                } else if (__value__ == (554296i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 554322i32;
                } else if (__value__ == (554322i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 554340i32;
                } else if (__value__ == (554340i32)) {
                    _q_554340 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_554353 = stdgo._internal.math.Math_floor.floor(_q_554340);
                    if ((_q_554340 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 554378i32;
                    } else {
                        _gotoNext = 555026i32;
                    };
                } else if (__value__ == (554378i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 554392i32;
                    } else {
                        _gotoNext = 554642i32;
                    };
                } else if (__value__ == (554392i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_554397 = @:tmpset0 __tmp__._0;
                        _y2_554401 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_554397 * _y2_554401 : stdgo.GoFloat64);
                    _gotoNext = 554642i32;
                } else if (__value__ == (554642i32)) {
                    _signgam_554642 = (1 : stdgo.GoInt);
                    {
                        _ip_554660 = (_p_554353 : stdgo.GoInt64);
                        if ((_ip_554660 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 554686i32;
                        } else {
                            _gotoNext = 554710i32;
                        };
                    };
                } else if (__value__ == (554686i32)) {
                    _signgam_554642 = (-1 : stdgo.GoInt);
                    _gotoNext = 554710i32;
                } else if (__value__ == (554710i32)) {
                    _z_554710 = (_q_554340 - _p_554353 : stdgo.GoFloat64);
                    if ((_z_554710 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 554734i32;
                    } else {
                        _gotoNext = 554768i32;
                    };
                } else if (__value__ == (554734i32)) {
                    _p_554353 = (_p_554353 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_554710 = (_q_554340 - _p_554353 : stdgo.GoFloat64);
                    _gotoNext = 554768i32;
                } else if (__value__ == (554768i32)) {
                    _z_554710 = (_q_554340 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_554710 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_554710 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 554798i32;
                    } else {
                        _gotoNext = 554829i32;
                    };
                } else if (__value__ == (554798i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_554642);
                    _gotoNext = 554829i32;
                } else if (__value__ == (554829i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_554340);
                        _sq1_554829 = @:tmpset0 __tmp__._0;
                        _sq2_554834 = @:tmpset0 __tmp__._1;
                    };
                    _absz_554855 = stdgo._internal.math.Math_abs.abs(_z_554710);
                    _d_554872 = ((_absz_554855 * _sq1_554829 : stdgo.GoFloat64) * _sq2_554834 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_554872, (0 : stdgo.GoInt))) {
                        _gotoNext = 554911i32;
                    } else {
                        _gotoNext = 554951i32;
                    };
                } else if (__value__ == (554911i32)) {
                    _z_554710 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_554855 : stdgo.GoFloat64) / _sq1_554829 : stdgo.GoFloat64) / _sq2_554834 : stdgo.GoFloat64);
                    _gotoNext = 554973i32;
                } else if (__value__ == (554951i32)) {
                    _gotoNext = 554951i32;
                    _z_554710 = ((3.141592653589793 : stdgo.GoFloat64) / _d_554872 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 554973i32;
                } else if (__value__ == (554973i32)) {
                    return ((_signgam_554642 : stdgo.GoFloat64) * _z_554710 : stdgo.GoFloat64);
                    _gotoNext = 555026i32;
                } else if (__value__ == (555026i32)) {
                    _z_555026 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 555036i32;
                } else if (__value__ == (555036i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 555047i32;
                    } else {
                        _gotoNext = 555077i32;
                    };
                } else if (__value__ == (555047i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_555026 = (_z_555026 * _x : stdgo.GoFloat64);
                    _gotoNext = 555036i32;
                } else if (__value__ == (555077i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 555077i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 555087i32;
                    } else {
                        _gotoNext = 555153i32;
                    };
                } else if (__value__ == (555087i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 555105i32;
                    } else {
                        _gotoNext = 555127i32;
                    };
                } else if (__value__ == (555105i32)) {
                    _gotoNext = 555483i32;
                } else if (__value__ == (555127i32)) {
                    _z_555026 = (_z_555026 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 555077i32;
                } else if (__value__ == (555153i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 555153i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 555163i32;
                    } else {
                        _gotoNext = 555229i32;
                    };
                } else if (__value__ == (555163i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 555180i32;
                    } else {
                        _gotoNext = 555202i32;
                    };
                } else if (__value__ == (555180i32)) {
                    _gotoNext = 555483i32;
                } else if (__value__ == (555202i32)) {
                    _z_555026 = (_z_555026 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 555153i32;
                } else if (__value__ == (555229i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 555239i32;
                    } else {
                        _gotoNext = 555257i32;
                    };
                } else if (__value__ == (555239i32)) {
                    return _z_555026;
                    _gotoNext = 555257i32;
                } else if (__value__ == (555257i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_554353 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_554340 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_555026 * _p_554353 : stdgo.GoFloat64) / _q_554340 : stdgo.GoFloat64);
                    _gotoNext = 555483i32;
                } else if (__value__ == (555483i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 555501i32;
                    } else {
                        _gotoNext = 555523i32;
                    };
                } else if (__value__ == (555501i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 555523i32;
                } else if (__value__ == (555523i32)) {
                    return (_z_555026 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
