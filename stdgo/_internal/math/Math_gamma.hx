package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_426024:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_425855:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _absz_426050:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_426029:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_425548:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_425905:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_425596:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_425592:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_425535:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_425264;
        var _z_426221:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_426067:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_425837:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_425264 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 425355i32;
                } else if (__value__ == (425355i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 425365i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 425427i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 425462i32;
                    } else {
                        _gotoNext = 425535i32;
                    };
                } else if (__value__ == (425365i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 425535i32;
                } else if (__value__ == (425427i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 425535i32;
                } else if (__value__ == (425462i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 425491i32;
                    } else {
                        _gotoNext = 425517i32;
                    };
                } else if (__value__ == (425491i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 425517i32;
                } else if (__value__ == (425517i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 425535i32;
                } else if (__value__ == (425535i32)) {
                    _q_425535 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_425548 = stdgo._internal.math.Math_floor.floor(_q_425535);
                    if ((_q_425535 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425573i32;
                    } else {
                        _gotoNext = 426221i32;
                    };
                } else if (__value__ == (425573i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425587i32;
                    } else {
                        _gotoNext = 425837i32;
                    };
                } else if (__value__ == (425587i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_425592 = @:tmpset0 __tmp__._0;
                        _y2_425596 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_425592 * _y2_425596 : stdgo.GoFloat64);
                    _gotoNext = 425837i32;
                } else if (__value__ == (425837i32)) {
                    _signgam_425837 = (1 : stdgo.GoInt);
                    {
                        _ip_425855 = (_p_425548 : stdgo.GoInt64);
                        if ((_ip_425855 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 425881i32;
                        } else {
                            _gotoNext = 425905i32;
                        };
                    };
                } else if (__value__ == (425881i32)) {
                    _signgam_425837 = (-1 : stdgo.GoInt);
                    _gotoNext = 425905i32;
                } else if (__value__ == (425905i32)) {
                    _z_425905 = (_q_425535 - _p_425548 : stdgo.GoFloat64);
                    if ((_z_425905 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 425929i32;
                    } else {
                        _gotoNext = 425963i32;
                    };
                } else if (__value__ == (425929i32)) {
                    _p_425548 = (_p_425548 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_425905 = (_q_425535 - _p_425548 : stdgo.GoFloat64);
                    _gotoNext = 425963i32;
                } else if (__value__ == (425963i32)) {
                    _z_425905 = (_q_425535 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_425905 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_425905 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 425993i32;
                    } else {
                        _gotoNext = 426024i32;
                    };
                } else if (__value__ == (425993i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_425837);
                    _gotoNext = 426024i32;
                } else if (__value__ == (426024i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_425535);
                        _sq1_426024 = @:tmpset0 __tmp__._0;
                        _sq2_426029 = @:tmpset0 __tmp__._1;
                    };
                    _absz_426050 = stdgo._internal.math.Math_abs.abs(_z_425905);
                    _d_426067 = ((_absz_426050 * _sq1_426024 : stdgo.GoFloat64) * _sq2_426029 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_426067, (0 : stdgo.GoInt))) {
                        _gotoNext = 426106i32;
                    } else {
                        _gotoNext = 426146i32;
                    };
                } else if (__value__ == (426106i32)) {
                    _z_425905 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_426050 : stdgo.GoFloat64) / _sq1_426024 : stdgo.GoFloat64) / _sq2_426029 : stdgo.GoFloat64);
                    _gotoNext = 426168i32;
                } else if (__value__ == (426146i32)) {
                    _gotoNext = 426146i32;
                    _z_425905 = ((3.141592653589793 : stdgo.GoFloat64) / _d_426067 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 426168i32;
                } else if (__value__ == (426168i32)) {
                    return ((_signgam_425837 : stdgo.GoFloat64) * _z_425905 : stdgo.GoFloat64);
                    _gotoNext = 426221i32;
                } else if (__value__ == (426221i32)) {
                    _z_426221 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 426231i32;
                } else if (__value__ == (426231i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426242i32;
                    } else {
                        _gotoNext = 426272i32;
                    };
                } else if (__value__ == (426242i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_426221 = (_z_426221 * _x : stdgo.GoFloat64);
                    _gotoNext = 426231i32;
                } else if (__value__ == (426272i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 426272i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426282i32;
                    } else {
                        _gotoNext = 426348i32;
                    };
                } else if (__value__ == (426282i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426300i32;
                    } else {
                        _gotoNext = 426322i32;
                    };
                } else if (__value__ == (426300i32)) {
                    _gotoNext = 426678i32;
                } else if (__value__ == (426322i32)) {
                    _z_426221 = (_z_426221 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 426272i32;
                } else if (__value__ == (426348i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 426348i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426358i32;
                    } else {
                        _gotoNext = 426424i32;
                    };
                } else if (__value__ == (426358i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 426375i32;
                    } else {
                        _gotoNext = 426397i32;
                    };
                } else if (__value__ == (426375i32)) {
                    _gotoNext = 426678i32;
                } else if (__value__ == (426397i32)) {
                    _z_426221 = (_z_426221 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 426348i32;
                } else if (__value__ == (426424i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 426434i32;
                    } else {
                        _gotoNext = 426452i32;
                    };
                } else if (__value__ == (426434i32)) {
                    return _z_426221;
                    _gotoNext = 426452i32;
                } else if (__value__ == (426452i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_425548 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_425535 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_426221 * _p_425548 : stdgo.GoFloat64) / _q_425535 : stdgo.GoFloat64);
                    _gotoNext = 426678i32;
                } else if (__value__ == (426678i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 426696i32;
                    } else {
                        _gotoNext = 426718i32;
                    };
                } else if (__value__ == (426696i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 426718i32;
                } else if (__value__ == (426718i32)) {
                    return (_z_426221 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
