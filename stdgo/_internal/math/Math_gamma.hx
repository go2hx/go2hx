package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _signgam_450520:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_450231:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_450904:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_450707:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_450275:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_449947;
        var _absz_450733:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_450279:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_450750:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_450588:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_450538:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_450218:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_450712:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_449947 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 450038i32;
                } else if (__value__ == (450038i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 450048i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 450110i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 450145i32;
                    } else {
                        _gotoNext = 450218i32;
                    };
                } else if (__value__ == (450048i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 450218i32;
                } else if (__value__ == (450110i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 450218i32;
                } else if (__value__ == (450145i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 450174i32;
                    } else {
                        _gotoNext = 450200i32;
                    };
                } else if (__value__ == (450174i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 450200i32;
                } else if (__value__ == (450200i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 450218i32;
                } else if (__value__ == (450218i32)) {
                    _q_450218 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_450231 = stdgo._internal.math.Math_floor.floor(_q_450218);
                    if ((_q_450218 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450256i32;
                    } else {
                        _gotoNext = 450904i32;
                    };
                } else if (__value__ == (450256i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450270i32;
                    } else {
                        _gotoNext = 450520i32;
                    };
                } else if (__value__ == (450270i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_450275 = @:tmpset0 __tmp__._0;
                        _y2_450279 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_450275 * _y2_450279 : stdgo.GoFloat64);
                    _gotoNext = 450520i32;
                } else if (__value__ == (450520i32)) {
                    _signgam_450520 = (1 : stdgo.GoInt);
                    {
                        _ip_450538 = (_p_450231 : stdgo.GoInt64);
                        if ((_ip_450538 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 450564i32;
                        } else {
                            _gotoNext = 450588i32;
                        };
                    };
                } else if (__value__ == (450564i32)) {
                    _signgam_450520 = (-1 : stdgo.GoInt);
                    _gotoNext = 450588i32;
                } else if (__value__ == (450588i32)) {
                    _z_450588 = (_q_450218 - _p_450231 : stdgo.GoFloat64);
                    if ((_z_450588 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450612i32;
                    } else {
                        _gotoNext = 450646i32;
                    };
                } else if (__value__ == (450612i32)) {
                    _p_450231 = (_p_450231 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_450588 = (_q_450218 - _p_450231 : stdgo.GoFloat64);
                    _gotoNext = 450646i32;
                } else if (__value__ == (450646i32)) {
                    _z_450588 = (_q_450218 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_450588 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_450588 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 450676i32;
                    } else {
                        _gotoNext = 450707i32;
                    };
                } else if (__value__ == (450676i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_450520);
                    _gotoNext = 450707i32;
                } else if (__value__ == (450707i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_450218);
                        _sq1_450707 = @:tmpset0 __tmp__._0;
                        _sq2_450712 = @:tmpset0 __tmp__._1;
                    };
                    _absz_450733 = stdgo._internal.math.Math_abs.abs(_z_450588);
                    _d_450750 = ((_absz_450733 * _sq1_450707 : stdgo.GoFloat64) * _sq2_450712 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_450750, (0 : stdgo.GoInt))) {
                        _gotoNext = 450789i32;
                    } else {
                        _gotoNext = 450829i32;
                    };
                } else if (__value__ == (450789i32)) {
                    _z_450588 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_450733 : stdgo.GoFloat64) / _sq1_450707 : stdgo.GoFloat64) / _sq2_450712 : stdgo.GoFloat64);
                    _gotoNext = 450851i32;
                } else if (__value__ == (450829i32)) {
                    _gotoNext = 450829i32;
                    _z_450588 = ((3.141592653589793 : stdgo.GoFloat64) / _d_450750 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 450851i32;
                } else if (__value__ == (450851i32)) {
                    return ((_signgam_450520 : stdgo.GoFloat64) * _z_450588 : stdgo.GoFloat64);
                    _gotoNext = 450904i32;
                } else if (__value__ == (450904i32)) {
                    _z_450904 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 450914i32;
                } else if (__value__ == (450914i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450925i32;
                    } else {
                        _gotoNext = 450955i32;
                    };
                } else if (__value__ == (450925i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_450904 = (_z_450904 * _x : stdgo.GoFloat64);
                    _gotoNext = 450914i32;
                } else if (__value__ == (450955i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 450955i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450965i32;
                    } else {
                        _gotoNext = 451031i32;
                    };
                } else if (__value__ == (450965i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 450983i32;
                    } else {
                        _gotoNext = 451005i32;
                    };
                } else if (__value__ == (450983i32)) {
                    _gotoNext = 451361i32;
                } else if (__value__ == (451005i32)) {
                    _z_450904 = (_z_450904 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 450955i32;
                } else if (__value__ == (451031i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 451031i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 451041i32;
                    } else {
                        _gotoNext = 451107i32;
                    };
                } else if (__value__ == (451041i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 451058i32;
                    } else {
                        _gotoNext = 451080i32;
                    };
                } else if (__value__ == (451058i32)) {
                    _gotoNext = 451361i32;
                } else if (__value__ == (451080i32)) {
                    _z_450904 = (_z_450904 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 451031i32;
                } else if (__value__ == (451107i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 451117i32;
                    } else {
                        _gotoNext = 451135i32;
                    };
                } else if (__value__ == (451117i32)) {
                    return _z_450904;
                    _gotoNext = 451135i32;
                } else if (__value__ == (451135i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_450231 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_450218 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_450904 * _p_450231 : stdgo.GoFloat64) / _q_450218 : stdgo.GoFloat64);
                    _gotoNext = 451361i32;
                } else if (__value__ == (451361i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 451379i32;
                    } else {
                        _gotoNext = 451401i32;
                    };
                } else if (__value__ == (451379i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 451401i32;
                } else if (__value__ == (451401i32)) {
                    return (_z_450904 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
