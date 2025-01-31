package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_447733:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_447609:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_447296:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_447925:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_447771:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_447559:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_447300:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_447252:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_447754:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_447728:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_447541:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_447239:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_446968;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_446968 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 447059i32;
                } else if (__value__ == (447059i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 447069i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 447131i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 447166i32;
                    } else {
                        _gotoNext = 447239i32;
                    };
                } else if (__value__ == (447069i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 447239i32;
                } else if (__value__ == (447131i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 447239i32;
                } else if (__value__ == (447166i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 447195i32;
                    } else {
                        _gotoNext = 447221i32;
                    };
                } else if (__value__ == (447195i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 447221i32;
                } else if (__value__ == (447221i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 447239i32;
                } else if (__value__ == (447239i32)) {
                    _q_447239 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_447252 = stdgo._internal.math.Math_floor.floor(_q_447239);
                    if ((_q_447239 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 447277i32;
                    } else {
                        _gotoNext = 447925i32;
                    };
                } else if (__value__ == (447277i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 447291i32;
                    } else {
                        _gotoNext = 447541i32;
                    };
                } else if (__value__ == (447291i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_447296 = @:tmpset0 __tmp__._0;
                        _y2_447300 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_447296 * _y2_447300 : stdgo.GoFloat64);
                    _gotoNext = 447541i32;
                } else if (__value__ == (447541i32)) {
                    _signgam_447541 = (1 : stdgo.GoInt);
                    {
                        _ip_447559 = (_p_447252 : stdgo.GoInt64);
                        if ((_ip_447559 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 447585i32;
                        } else {
                            _gotoNext = 447609i32;
                        };
                    };
                } else if (__value__ == (447585i32)) {
                    _signgam_447541 = (-1 : stdgo.GoInt);
                    _gotoNext = 447609i32;
                } else if (__value__ == (447609i32)) {
                    _z_447609 = (_q_447239 - _p_447252 : stdgo.GoFloat64);
                    if ((_z_447609 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 447633i32;
                    } else {
                        _gotoNext = 447667i32;
                    };
                } else if (__value__ == (447633i32)) {
                    _p_447252 = (_p_447252 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_447609 = (_q_447239 - _p_447252 : stdgo.GoFloat64);
                    _gotoNext = 447667i32;
                } else if (__value__ == (447667i32)) {
                    _z_447609 = (_q_447239 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_447609 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_447609 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 447697i32;
                    } else {
                        _gotoNext = 447728i32;
                    };
                } else if (__value__ == (447697i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_447541);
                    _gotoNext = 447728i32;
                } else if (__value__ == (447728i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_447239);
                        _sq1_447728 = @:tmpset0 __tmp__._0;
                        _sq2_447733 = @:tmpset0 __tmp__._1;
                    };
                    _absz_447754 = stdgo._internal.math.Math_abs.abs(_z_447609);
                    _d_447771 = ((_absz_447754 * _sq1_447728 : stdgo.GoFloat64) * _sq2_447733 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_447771, (0 : stdgo.GoInt))) {
                        _gotoNext = 447810i32;
                    } else {
                        _gotoNext = 447850i32;
                    };
                } else if (__value__ == (447810i32)) {
                    _z_447609 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_447754 : stdgo.GoFloat64) / _sq1_447728 : stdgo.GoFloat64) / _sq2_447733 : stdgo.GoFloat64);
                    _gotoNext = 447872i32;
                } else if (__value__ == (447850i32)) {
                    _gotoNext = 447850i32;
                    _z_447609 = ((3.141592653589793 : stdgo.GoFloat64) / _d_447771 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 447872i32;
                } else if (__value__ == (447872i32)) {
                    return ((_signgam_447541 : stdgo.GoFloat64) * _z_447609 : stdgo.GoFloat64);
                    _gotoNext = 447925i32;
                } else if (__value__ == (447925i32)) {
                    _z_447925 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 447935i32;
                } else if (__value__ == (447935i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 447946i32;
                    } else {
                        _gotoNext = 447976i32;
                    };
                } else if (__value__ == (447946i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_447925 = (_z_447925 * _x : stdgo.GoFloat64);
                    _gotoNext = 447935i32;
                } else if (__value__ == (447976i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 447976i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 447986i32;
                    } else {
                        _gotoNext = 448052i32;
                    };
                } else if (__value__ == (447986i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448004i32;
                    } else {
                        _gotoNext = 448026i32;
                    };
                } else if (__value__ == (448004i32)) {
                    _gotoNext = 448382i32;
                } else if (__value__ == (448026i32)) {
                    _z_447925 = (_z_447925 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 447976i32;
                } else if (__value__ == (448052i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 448052i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448062i32;
                    } else {
                        _gotoNext = 448128i32;
                    };
                } else if (__value__ == (448062i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 448079i32;
                    } else {
                        _gotoNext = 448101i32;
                    };
                } else if (__value__ == (448079i32)) {
                    _gotoNext = 448382i32;
                } else if (__value__ == (448101i32)) {
                    _z_447925 = (_z_447925 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 448052i32;
                } else if (__value__ == (448128i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 448138i32;
                    } else {
                        _gotoNext = 448156i32;
                    };
                } else if (__value__ == (448138i32)) {
                    return _z_447925;
                    _gotoNext = 448156i32;
                } else if (__value__ == (448156i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_447252 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_447239 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_447925 * _p_447252 : stdgo.GoFloat64) / _q_447239 : stdgo.GoFloat64);
                    _gotoNext = 448382i32;
                } else if (__value__ == (448382i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 448400i32;
                    } else {
                        _gotoNext = 448422i32;
                    };
                } else if (__value__ == (448400i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 448422i32;
                } else if (__value__ == (448422i32)) {
                    return (_z_447925 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
