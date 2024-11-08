package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_362359:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_361734:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_362205:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_362188:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_362167:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_361993:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_361673:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_361402;
        var _sq1_362162:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_362043:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_361975:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_361686:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_361730:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_361402 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 361493i32;
                } else if (__value__ == (361493i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 361503i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 361565i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 361600i32;
                    } else {
                        _gotoNext = 361673i32;
                    };
                } else if (__value__ == (361503i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 361673i32;
                } else if (__value__ == (361565i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 361673i32;
                } else if (__value__ == (361600i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 361629i32;
                    } else {
                        _gotoNext = 361655i32;
                    };
                } else if (__value__ == (361629i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 361655i32;
                } else if (__value__ == (361655i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 361673i32;
                } else if (__value__ == (361673i32)) {
                    _q_361673 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_361686 = stdgo._internal.math.Math_floor.floor(_q_361673);
                    if ((_q_361673 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 361711i32;
                    } else {
                        _gotoNext = 362359i32;
                    };
                } else if (__value__ == (361711i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 361725i32;
                    } else {
                        _gotoNext = 361975i32;
                    };
                } else if (__value__ == (361725i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_361730 = __tmp__._0;
                        _y2_361734 = __tmp__._1;
                    };
                    return (_y1_361730 * _y2_361734 : stdgo.GoFloat64);
                    _gotoNext = 361975i32;
                } else if (__value__ == (361975i32)) {
                    _signgam_361975 = (1 : stdgo.GoInt);
                    {
                        _ip_361993 = (_p_361686 : stdgo.GoInt64);
                        if ((_ip_361993 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 362019i32;
                        } else {
                            _gotoNext = 362043i32;
                        };
                    };
                } else if (__value__ == (362019i32)) {
                    _signgam_361975 = (-1 : stdgo.GoInt);
                    _gotoNext = 362043i32;
                } else if (__value__ == (362043i32)) {
                    _z_362043 = (_q_361673 - _p_361686 : stdgo.GoFloat64);
                    if ((_z_362043 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362067i32;
                    } else {
                        _gotoNext = 362101i32;
                    };
                } else if (__value__ == (362067i32)) {
                    _p_361686 = (_p_361686 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_362043 = (_q_361673 - _p_361686 : stdgo.GoFloat64);
                    _gotoNext = 362101i32;
                } else if (__value__ == (362101i32)) {
                    _z_362043 = (_q_361673 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_362043 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_362043 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 362131i32;
                    } else {
                        _gotoNext = 362162i32;
                    };
                } else if (__value__ == (362131i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_361975);
                    _gotoNext = 362162i32;
                } else if (__value__ == (362162i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_361673);
                        _sq1_362162 = __tmp__._0;
                        _sq2_362167 = __tmp__._1;
                    };
                    _absz_362188 = stdgo._internal.math.Math_abs.abs(_z_362043);
                    _d_362205 = ((_absz_362188 * _sq1_362162 : stdgo.GoFloat64) * _sq2_362167 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_362205, (0 : stdgo.GoInt))) {
                        _gotoNext = 362244i32;
                    } else {
                        _gotoNext = 362284i32;
                    };
                } else if (__value__ == (362244i32)) {
                    _z_362043 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_362188 : stdgo.GoFloat64) / _sq1_362162 : stdgo.GoFloat64) / _sq2_362167 : stdgo.GoFloat64);
                    _gotoNext = 362306i32;
                } else if (__value__ == (362284i32)) {
                    _z_362043 = ((3.141592653589793 : stdgo.GoFloat64) / _d_362205 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 362306i32;
                } else if (__value__ == (362306i32)) {
                    return ((_signgam_361975 : stdgo.GoFloat64) * _z_362043 : stdgo.GoFloat64);
                    _gotoNext = 362359i32;
                } else if (__value__ == (362359i32)) {
                    _z_362359 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 362369i32;
                } else if (__value__ == (362369i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362380i32;
                    } else {
                        _gotoNext = 362410i32;
                    };
                } else if (__value__ == (362380i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_362359 = (_z_362359 * _x : stdgo.GoFloat64);
                    _gotoNext = 362369i32;
                } else if (__value__ == (362410i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 362410i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362420i32;
                    } else {
                        _gotoNext = 362486i32;
                    };
                } else if (__value__ == (362420i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362438i32;
                    } else {
                        _gotoNext = 362460i32;
                    };
                } else if (__value__ == (362438i32)) {
                    _gotoNext = 362816i32;
                } else if (__value__ == (362460i32)) {
                    _z_362359 = (_z_362359 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 362410i32;
                } else if (__value__ == (362486i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 362486i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362496i32;
                    } else {
                        _gotoNext = 362562i32;
                    };
                } else if (__value__ == (362496i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362513i32;
                    } else {
                        _gotoNext = 362535i32;
                    };
                } else if (__value__ == (362513i32)) {
                    _gotoNext = 362816i32;
                } else if (__value__ == (362535i32)) {
                    _z_362359 = (_z_362359 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 362486i32;
                } else if (__value__ == (362562i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 362572i32;
                    } else {
                        _gotoNext = 362590i32;
                    };
                } else if (__value__ == (362572i32)) {
                    return _z_362359;
                    _gotoNext = 362590i32;
                } else if (__value__ == (362590i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_361686 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_361673 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_362359 * _p_361686 : stdgo.GoFloat64) / _q_361673 : stdgo.GoFloat64);
                    _gotoNext = 362816i32;
                } else if (__value__ == (362816i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 362834i32;
                    } else {
                        _gotoNext = 362856i32;
                    };
                } else if (__value__ == (362834i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 362856i32;
                } else if (__value__ == (362856i32)) {
                    return (_z_362359 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
