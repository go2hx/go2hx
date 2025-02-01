package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_371440:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_371372:stdgo.GoInt = (0 : stdgo.GoInt);
        var _z_371756:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_371585:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_371559:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_371602:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_371564:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_371070:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_371131:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_371127:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_371083:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_370799;
        var _ip_371390:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_370799 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 370890i32;
                } else if (__value__ == (370890i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 370900i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 370962i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 370997i32;
                    } else {
                        _gotoNext = 371070i32;
                    };
                } else if (__value__ == (370900i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 371070i32;
                } else if (__value__ == (370962i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 371070i32;
                } else if (__value__ == (370997i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 371026i32;
                    } else {
                        _gotoNext = 371052i32;
                    };
                } else if (__value__ == (371026i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 371052i32;
                } else if (__value__ == (371052i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 371070i32;
                } else if (__value__ == (371070i32)) {
                    _q_371070 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_371083 = stdgo._internal.math.Math_floor.floor(_q_371070);
                    if ((_q_371070 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371108i32;
                    } else {
                        _gotoNext = 371756i32;
                    };
                } else if (__value__ == (371108i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371122i32;
                    } else {
                        _gotoNext = 371372i32;
                    };
                } else if (__value__ == (371122i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_371127 = @:tmpset0 __tmp__._0;
                        _y2_371131 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_371127 * _y2_371131 : stdgo.GoFloat64);
                    _gotoNext = 371372i32;
                } else if (__value__ == (371372i32)) {
                    _signgam_371372 = (1 : stdgo.GoInt);
                    {
                        _ip_371390 = (_p_371083 : stdgo.GoInt64);
                        if ((_ip_371390 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 371416i32;
                        } else {
                            _gotoNext = 371440i32;
                        };
                    };
                } else if (__value__ == (371416i32)) {
                    _signgam_371372 = (-1 : stdgo.GoInt);
                    _gotoNext = 371440i32;
                } else if (__value__ == (371440i32)) {
                    _z_371440 = (_q_371070 - _p_371083 : stdgo.GoFloat64);
                    if ((_z_371440 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371464i32;
                    } else {
                        _gotoNext = 371498i32;
                    };
                } else if (__value__ == (371464i32)) {
                    _p_371083 = (_p_371083 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_371440 = (_q_371070 - _p_371083 : stdgo.GoFloat64);
                    _gotoNext = 371498i32;
                } else if (__value__ == (371498i32)) {
                    _z_371440 = (_q_371070 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_371440 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_371440 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 371528i32;
                    } else {
                        _gotoNext = 371559i32;
                    };
                } else if (__value__ == (371528i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_371372);
                    _gotoNext = 371559i32;
                } else if (__value__ == (371559i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_371070);
                        _sq1_371559 = @:tmpset0 __tmp__._0;
                        _sq2_371564 = @:tmpset0 __tmp__._1;
                    };
                    _absz_371585 = stdgo._internal.math.Math_abs.abs(_z_371440);
                    _d_371602 = ((_absz_371585 * _sq1_371559 : stdgo.GoFloat64) * _sq2_371564 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_371602, (0 : stdgo.GoInt))) {
                        _gotoNext = 371641i32;
                    } else {
                        _gotoNext = 371681i32;
                    };
                } else if (__value__ == (371641i32)) {
                    _z_371440 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_371585 : stdgo.GoFloat64) / _sq1_371559 : stdgo.GoFloat64) / _sq2_371564 : stdgo.GoFloat64);
                    _gotoNext = 371703i32;
                } else if (__value__ == (371681i32)) {
                    _gotoNext = 371681i32;
                    _z_371440 = ((3.141592653589793 : stdgo.GoFloat64) / _d_371602 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 371703i32;
                } else if (__value__ == (371703i32)) {
                    return ((_signgam_371372 : stdgo.GoFloat64) * _z_371440 : stdgo.GoFloat64);
                    _gotoNext = 371756i32;
                } else if (__value__ == (371756i32)) {
                    _z_371756 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 371766i32;
                } else if (__value__ == (371766i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371777i32;
                    } else {
                        _gotoNext = 371807i32;
                    };
                } else if (__value__ == (371777i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_371756 = (_z_371756 * _x : stdgo.GoFloat64);
                    _gotoNext = 371766i32;
                } else if (__value__ == (371807i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 371807i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371817i32;
                    } else {
                        _gotoNext = 371883i32;
                    };
                } else if (__value__ == (371817i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371835i32;
                    } else {
                        _gotoNext = 371857i32;
                    };
                } else if (__value__ == (371835i32)) {
                    _gotoNext = 372213i32;
                } else if (__value__ == (371857i32)) {
                    _z_371756 = (_z_371756 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 371807i32;
                } else if (__value__ == (371883i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 371883i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371893i32;
                    } else {
                        _gotoNext = 371959i32;
                    };
                } else if (__value__ == (371893i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 371910i32;
                    } else {
                        _gotoNext = 371932i32;
                    };
                } else if (__value__ == (371910i32)) {
                    _gotoNext = 372213i32;
                } else if (__value__ == (371932i32)) {
                    _z_371756 = (_z_371756 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 371883i32;
                } else if (__value__ == (371959i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 371969i32;
                    } else {
                        _gotoNext = 371987i32;
                    };
                } else if (__value__ == (371969i32)) {
                    return _z_371756;
                    _gotoNext = 371987i32;
                } else if (__value__ == (371987i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_371083 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_371070 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_371756 * _p_371083 : stdgo.GoFloat64) / _q_371070 : stdgo.GoFloat64);
                    _gotoNext = 372213i32;
                } else if (__value__ == (372213i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 372231i32;
                    } else {
                        _gotoNext = 372253i32;
                    };
                } else if (__value__ == (372231i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 372253i32;
                } else if (__value__ == (372253i32)) {
                    return (_z_371756 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
