package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y1_391239:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_391182:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_390911;
        var _d_391714:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_391697:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_391484:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_391195:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_391868:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_391671:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_391552:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_391676:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_391502:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_391243:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_390911 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 391002i32;
                } else if (__value__ == (391002i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 391012i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 391074i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 391109i32;
                    } else {
                        _gotoNext = 391182i32;
                    };
                } else if (__value__ == (391012i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 391182i32;
                } else if (__value__ == (391074i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 391182i32;
                } else if (__value__ == (391109i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 391138i32;
                    } else {
                        _gotoNext = 391164i32;
                    };
                } else if (__value__ == (391138i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 391164i32;
                } else if (__value__ == (391164i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 391182i32;
                } else if (__value__ == (391182i32)) {
                    _q_391182 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_391195 = stdgo._internal.math.Math_floor.floor(_q_391182);
                    if ((_q_391182 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391220i32;
                    } else {
                        _gotoNext = 391868i32;
                    };
                } else if (__value__ == (391220i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391234i32;
                    } else {
                        _gotoNext = 391484i32;
                    };
                } else if (__value__ == (391234i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_391239 = __tmp__._0;
                        _y2_391243 = __tmp__._1;
                    };
                    return (_y1_391239 * _y2_391243 : stdgo.GoFloat64);
                    _gotoNext = 391484i32;
                } else if (__value__ == (391484i32)) {
                    _signgam_391484 = (1 : stdgo.GoInt);
                    {
                        _ip_391502 = (_p_391195 : stdgo.GoInt64);
                        if ((_ip_391502 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 391528i32;
                        } else {
                            _gotoNext = 391552i32;
                        };
                    };
                } else if (__value__ == (391528i32)) {
                    _signgam_391484 = (-1 : stdgo.GoInt);
                    _gotoNext = 391552i32;
                } else if (__value__ == (391552i32)) {
                    _z_391552 = (_q_391182 - _p_391195 : stdgo.GoFloat64);
                    if ((_z_391552 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391576i32;
                    } else {
                        _gotoNext = 391610i32;
                    };
                } else if (__value__ == (391576i32)) {
                    _p_391195 = (_p_391195 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_391552 = (_q_391182 - _p_391195 : stdgo.GoFloat64);
                    _gotoNext = 391610i32;
                } else if (__value__ == (391610i32)) {
                    _z_391552 = (_q_391182 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_391552 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_391552 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 391640i32;
                    } else {
                        _gotoNext = 391671i32;
                    };
                } else if (__value__ == (391640i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_391484);
                    _gotoNext = 391671i32;
                } else if (__value__ == (391671i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_391182);
                        _sq1_391671 = __tmp__._0;
                        _sq2_391676 = __tmp__._1;
                    };
                    _absz_391697 = stdgo._internal.math.Math_abs.abs(_z_391552);
                    _d_391714 = ((_absz_391697 * _sq1_391671 : stdgo.GoFloat64) * _sq2_391676 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_391714, (0 : stdgo.GoInt))) {
                        _gotoNext = 391753i32;
                    } else {
                        _gotoNext = 391793i32;
                    };
                } else if (__value__ == (391753i32)) {
                    _z_391552 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_391697 : stdgo.GoFloat64) / _sq1_391671 : stdgo.GoFloat64) / _sq2_391676 : stdgo.GoFloat64);
                    _gotoNext = 391815i32;
                } else if (__value__ == (391793i32)) {
                    _gotoNext = 391793i32;
                    _z_391552 = ((3.141592653589793 : stdgo.GoFloat64) / _d_391714 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 391815i32;
                } else if (__value__ == (391815i32)) {
                    return ((_signgam_391484 : stdgo.GoFloat64) * _z_391552 : stdgo.GoFloat64);
                    _gotoNext = 391868i32;
                } else if (__value__ == (391868i32)) {
                    _z_391868 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 391878i32;
                } else if (__value__ == (391878i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391889i32;
                    } else {
                        _gotoNext = 391919i32;
                    };
                } else if (__value__ == (391889i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_391868 = (_z_391868 * _x : stdgo.GoFloat64);
                    _gotoNext = 391878i32;
                } else if (__value__ == (391919i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 391919i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391929i32;
                    } else {
                        _gotoNext = 391995i32;
                    };
                } else if (__value__ == (391929i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 391947i32;
                    } else {
                        _gotoNext = 391969i32;
                    };
                } else if (__value__ == (391947i32)) {
                    _gotoNext = 392325i32;
                } else if (__value__ == (391969i32)) {
                    _z_391868 = (_z_391868 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 391919i32;
                } else if (__value__ == (391995i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 391995i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392005i32;
                    } else {
                        _gotoNext = 392071i32;
                    };
                } else if (__value__ == (392005i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 392022i32;
                    } else {
                        _gotoNext = 392044i32;
                    };
                } else if (__value__ == (392022i32)) {
                    _gotoNext = 392325i32;
                } else if (__value__ == (392044i32)) {
                    _z_391868 = (_z_391868 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 391995i32;
                } else if (__value__ == (392071i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 392081i32;
                    } else {
                        _gotoNext = 392099i32;
                    };
                } else if (__value__ == (392081i32)) {
                    return _z_391868;
                    _gotoNext = 392099i32;
                } else if (__value__ == (392099i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_391195 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_391182 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_391868 * _p_391195 : stdgo.GoFloat64) / _q_391182 : stdgo.GoFloat64);
                    _gotoNext = 392325i32;
                } else if (__value__ == (392325i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 392343i32;
                    } else {
                        _gotoNext = 392365i32;
                    };
                } else if (__value__ == (392343i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 392365i32;
                } else if (__value__ == (392365i32)) {
                    return (_z_391868 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
